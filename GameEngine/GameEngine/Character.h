#ifndef Character_H
#define Character_H
#include "CharacterState.h"
#include <SFML/Graphics.hpp>

using namespace sf;

class Character
{
private:
	// posição do Character
	Vector2f posicao;
    Vector2f posicaoInicial;
	// sprite do Character
	Sprite sprite;
	// textura do Character
	Texture textura;
	// qual a direção que ele est indo?
	bool paraEsquerda;
	bool paraDireita;
    bool paraCima;
	// velocidade do Character no cenário
	float velocidade;
    bool podePular;
    int estado;

public:
	// construtor da classe
	Character();
	
	// informa qual é a sprite sendo usada
	Sprite getSprite();
	
	// diz a direção para onde o Character tem que ir
	void moverEsquerda();
	void moverDireita();
    void moverCima();
	
	// diz quando o Character tem que parar
	void pararEsquerda();
	void pararDireita();
    void pararCima();
	
	// atualiza a posição inicial do Character
	void setPosicao(Vector2f res);
    
    // define se ele pode pular
    void setPular(bool value);
	
	// atualizar renderização do Character
	void atualizar(float tempoAtualizacao);

	// destrutor da classe
	~Character();

};

#endif // Character_H
