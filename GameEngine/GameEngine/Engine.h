#ifndef ENGINE_H
#define ENGINE_H
#include <SFML/Graphics.hpp>
#include "Bob.h"

using namespace sf;

class Engine
{
private:
	// define uma tela a ser renderizada
	RenderWindow window;
	
	// Define a sprite e texturas de background
	Sprite backgroundSprite;
	Texture backgroundTexture;
	
	// Cria uma instância da classe Bob
	Bob bob;
	
	// cria as funções para uso interno
	void input();
	void update(float dtSegundos);
	void draw();
	
public:
	// cria o construtor da classe
	Engine();
	
	// cria o ponto de início da Engine
	void start();
	
	// cria o destrutor da classe
	~Engine();

};

#endif // ENGINE_H
