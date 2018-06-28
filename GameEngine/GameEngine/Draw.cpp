#include "Engine.h"

void Engine::draw(){
	// limpa o último frame
	window.clear(Color::White);
	
	// desenha o background da cena
	window.draw(backgroundSprite);
	window.draw(bob.getSprite());
	
	// mostra a tela completa
	window.display();
}