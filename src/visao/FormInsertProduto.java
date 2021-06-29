package visao;

import dao.DaoProduto;
import modelo.Produto;

public class FormInsertProduto {

	public static void main(String[] args) {

		Produto produto = new Produto();

		DaoProduto dao = new DaoProduto();

		produto.setNome("Colorado Appia");
		produto.setFabricante("Colorado");
		produto.setOrigem("Ribeir�o Preto - SP");
		produto.setVolume("600ml");
		produto.setDescricao(
				"A palavra Appia vem do latim e significa mel. O nome perfeito para a primeira cerveja do Brasil a utilizar mel em sua f�rmula. Uma combina��o ex�tica que, al�m do mel das flores das laranjeiras, � feita a partir dos melhores maltes de cevada e trigo, al�m de nossa exclusiva levedura de alta fermenta��o. Doce, encorpada e refrescante, � perfeita para quem busca novos e diferentes sabores.");
		produto.setFoto("/imagens/colorado-appia.png");
		produto.setIngrediente("Cerveja, �gua, mel.");
		produto.setAlergico("Cont�m trigo, cevada e gl�ten.");
		produto.setTeor_alcoolico("5.5 %");
		produto.setTemperatura_ideal("4-8 �C");
		produto.setIbu("10");
		produto.setCaloria("100 kcal = 420 kJ");
		produto.setCarboidrato("8,5 g");

		dao.insert(produto);

		System.out.println("Registro inserido com sucesso.");

	}

}
