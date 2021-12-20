package desafioClasses;

import java.util.ArrayList;
import java.util.List;

public class Compra {
	
	final List<Item> itens = new ArrayList<>();
	
	void adicionarItem(Produto produto, int qtde) {
		this.itens.add(new Item(produto, qtde));
	}
	
	void adicionarItem(String nome,double preco, int qtde) {
		this.itens.add(new Item(new Produto(nome, preco), qtde));
	}
	
	double obterValorTotal(){
		double total = 0;
				
		for(Item item: itens) {
			total += item.quantidade * item.produto.preco;
		}
				
		return total;
		
		
	}
	

}
