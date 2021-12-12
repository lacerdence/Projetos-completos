package Pessoa;

public class Pessoa {
	
	String nome;
	Double peso;
	
	
	Pessoa(String nome, Double peso) {
		this.nome = nome;
		this.peso = peso;
	}

	void Comer(Comida comida) {
		if(comida != null) {
			this.peso += comida.peso;
		}
	}
	
	String apresentar() {
		return"Ol� eu so o " + nome + " e tenho " + peso + " Kgs";
	}
}
