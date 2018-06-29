#include "Character.h"
#include <iostream>


// construtor da classe
Character::Character(){
	// definindo a velocidade inicial do Character
	velocidade = 400; // definida em pixels
	
	textura.loadFromFile("images/bob.png");
	sprite.setTexture(textura);
	
	posicao.x = 400;
	posicao.y = 800;
	posicaoInicial = posicao;
    
    podePular = false;
    estado = CharacterState::charState::RUNNING;
}

// informa qual é a sprite sendo usada
Sprite Character::getSprite(){
	return sprite;
}
	
// diz a direção para onde o Character tem que ir
void Character::moverEsquerda(){
	paraEsquerda = true;
}

void Character::moverDireita(){
	paraDireita = true;
}

void Character::moverCima(){
    paraCima = true;
}
	
// diz quando o Character tem que parar
void Character::pararEsquerda(){
	paraEsquerda = false;	
}

void Character::pararDireita(){
	paraDireita = false;
}

void Character::pararCima(){
    paraCima = false;
}

// atualiza a posição inicial do Character
void Character::setPosicao(Vector2f res){
    posicao.x = res.x - (res.x - 50);
    posicao.y = res.y/2 + 150;
    posicaoInicial = posicao;
}

//atualiza a propriedade pular do Character
void Character::setPular(bool value){
    podePular = value;
}
	
// atualizar renderização do Character
void Character::atualizar(float tempoAtualizacao){
	if(paraDireita){
		posicao.x += tempoAtualizacao * velocidade;
	}
	if(paraEsquerda){
		posicao.x -= tempoAtualizacao * velocidade;
	}
    
    if(paraCima && podePular){
        posicao.y -= tempoAtualizacao * velocidade;
        if(posicao.y < (posicaoInicial.y - 100)){
            posicao.y = posicaoInicial.y - 100;
            podePular = false;
        }
    }else if(paraCima && !podePular){
        posicao.y += tempoAtualizacao * velocidade * 4;
        if(posicao.y > posicaoInicial.y){
            posicao.y = posicaoInicial.y;
            podePular = true;
        }
    }
    else{
        posicao.y = posicaoInicial.y;
        podePular = true;
    }
	
	sprite.setPosition(posicao);
}

// destrutor da classe
Character::~Character(){
}
