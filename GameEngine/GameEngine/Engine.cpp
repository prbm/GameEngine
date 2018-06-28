#include "Engine.h"
#include <iostream>

Engine::Engine()
{
	// Descobre qual é a resolução da tela, e cria uma janela e uma view SFML
	Vector2f resolucao;
	resolucao.x = VideoMode::getDesktopMode().width;
	resolucao.y = VideoMode::getDesktopMode().height;
	
	window.create(VideoMode(resolucao.x, resolucao.y), "Simples Game Engine", Style::Fullscreen);
	
	// carrega as imagens de textura e background
	backgroundTexture.loadFromFile("images/background.jpg");
	backgroundSprite.setTexture(backgroundTexture);
	
	// corrige a posição do Bob
	if(resolucao.x!=400 || resolucao.y!=800){
		bob.setPosicao(resolucao);
	}
}

void Engine::start(){
	// cria um temporizador para o jogo
	Clock relogio;
	
	while(window.isOpen()){
		// reinicia o relógio e guarda esse valor em dt
		Time dt = relogio.restart();
		
		// cria uma fração do tempo em milisegundos
		float dtSegundos = dt.asSeconds();
		
		input();
		update(dtSegundos);
		draw();
	}
}

Engine::~Engine()
{
}

