package desafioCarro;

public class Carro {

	int velocidadeAtual;
	
	void acelerar() {
		velocidadeAtual += 5;
	}
	void frear() {
		if (velocidadeAtual >= 0) {
			velocidadeAtual -= 5;
		} else {
			velocidadeAtual = 0;
		}
	}
		
	public String toString() {
		return "Velocidade atual é de: " + velocidadeAtual + " Km/h"; 
		
	}
}
