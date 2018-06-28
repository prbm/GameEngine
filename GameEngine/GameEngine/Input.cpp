#include "Engine.h"

//
// Neste arquivo, vamos lidar com as ações do jogador
//
void Engine::input(){
	// verifica se o jogador quer sair do jogo
	if(Keyboard::isKeyPressed(Keyboard::Escape)){
		window.close();
	}
	
	// identifica se está movendo o jogador
	if(Keyboard::isKeyPressed(Keyboard::A) || Keyboard::isKeyPressed(Keyboard::Left)){
		bob.moverEsquerda();
	}else{
		bob.pararEsquerda();
	}
	if(Keyboard::isKeyPressed(Keyboard::D) || Keyboard::isKeyPressed(Keyboard::Right)){
		bob.moverDireita();
	}else{
		bob.pararDireita();
	}
	if(Keyboard::isKeyPressed(Keyboard::Space) || Keyboard::isKeyPressed(Keyboard::W)){
        	bob.moverCima();
	}else{
        	bob.pararCima();
    	}	
}
