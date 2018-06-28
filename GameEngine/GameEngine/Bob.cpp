#include "Bob.h"
#include <iostream>


// construtor da classe
Bob::Bob(){
	// definindo a velocidade inicial do Bob
	velocidade = 400; // definida em pixels
	
	textura.loadFromFile("images/bob.png");
	sprite.setTexture(textura);
	
	posicao.x = 400;
	posicao.y = 800;
	posicaoInicial = posicao;
}

// informa qual é a sprite sendo usada
Sprite Bob::getSprite(){
	return sprite;
}
	
// diz a direção para onde o Bob tem que ir
void Bob::moverEsquerda(){
	paraEsquerda = true;
}

void Bob::moverDireita(){
	paraDireita = true;
}

void Bob::moverCima(){
    paraCima = true;
}
	
// diz quando o Bob tem que parar
void Bob::pararEsquerda(){
	paraEsquerda = false;	
}

void Bob::pararDireita(){
	paraDireita = false;
}

void Bob::pararCima(){
    paraCima = false;
}

// atualiza a posição inicial do Bob
void Bob::setPosicao(Vector2f res){
    posicao.x = res.x - (res.x - 50);
    posicao.y = res.y/2 + 150;
    posicaoInicial = posicao;
}
	
// atualizar renderização do Bob
void Bob::atualizar(float tempoAtualizacao){
	if(paraDireita){
		posicao.x += tempoAtualizacao * velocidade;
	}
	if(paraEsquerda){
		posicao.x -= tempoAtualizacao * velocidade;
	}
    
    if(paraCima){
        posicao.y -= tempoAtualizacao * velocidade;
        if(posicao.y < (posicaoInicial.y - 100)){
            posicao.y = posicaoInicial.y - 100;
        }
    }else{
        posicao.y = posicaoInicial.y;
    }
	
	sprite.setPosition(posicao);
}

// destrutor da classe
Bob::~Bob(){
}
