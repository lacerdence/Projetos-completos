package Pessoa;

public class Jantar {
	
	public static void main(String[] args) {
		
		Comida c1 = new Comida("Arroz", 0.223);
		
		Comida c2 = new Comida("Feijão", 0.300);
		
		Pessoa p = new Pessoa("Carlos", 89.90);
		
		System.out.println(p.apresentar());
		
		p.Comer(c2);
		
		System.out.println(p.apresentar());
		
		p.Comer(c1);
		
		System.out.println(p.apresentar());
		
		
	}

}
