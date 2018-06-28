#ifndef BOB_H
#define BOB_H
#include <SFML/Graphics.hpp>

using namespace sf;

class Bob
{
private:
	// posição do Bob
	Vector2f posicao;
	// sprite do Bob
	Sprite sprite;
	// textura do Bob
	Texture textura;
	// qual a direção que ele est indo?
	bool paraEsquerda;
	bool paraDireita;
	// velocidade do Bob no cenário
	float velocidade;

public:
	// construtor da classe
	Bob();
	
	// informa qual é a sprite sendo usada
	Sprite getSprite();
	
	// diz a direção para onde o Bob tem que ir
	void moverEsquerda();
	void moverDireita();
	
	// diz quando o Bob tem que parar
	void pararEsquerda();
	void pararDireita();
	
	// atualiza a posição inicial do Bob
	void setPosicao(Vector2f res);
	
	// atualizar renderização do Bob
	void atualizar(float tempoAtualizacao);

	// destrutor da classe
	~Bob();

};

#endif // BOB_H
