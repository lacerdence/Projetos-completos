package desafioFilter;

import java.util.Arrays;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;

public class FilterDesafio {

	public static void main(String[] args) {
		
		Produto p1 = new Produto("Notebook",2344,0.20,30);
		Produto p2 = new Produto("Tela",1000,0.10,100);
		Produto p3 = new Produto("Teclado",80,0.05,9);
		Produto p4 = new Produto("Mouse",501,0.40,0);
		Produto p5 = new Produto("Quadro",5000,0.10,0);
		Produto p6 = new Produto("Tênis",899,0.35,25);
		
		List <Produto> produtos = Arrays.asList(p1,p2,p3,p4,p5,p6);
		
		Predicate <Produto> superPromocao = p -> p.desconto >= 0.30;
		
		Predicate <Produto> freteGratis = p -> p.valorFrete == 0;
		
		Predicate <Produto> produtoRelevante = p -> p.preco >= 500;
		
		Function <Produto, String> chamadaPromocional = p -> "Aproveite ! " + p.nome + " por " + p.preco;
		
		produtos.stream()
				.filter(superPromocao)
				.filter(freteGratis)
				.filter(produtoRelevante)
				.map(chamadaPromocional)
				.forEach(System.out::println);
		
	}
	
}
