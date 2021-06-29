package visao;

import dao.DaoProduto;
import modelo.Produto;

public class FormInsertProduto {

	public static void main(String[] args) {

		Produto produto = new Produto();

		DaoProduto dao = new DaoProduto();

		produto.setNome("Colorado Appia");
		produto.setFabricante("Colorado");
		produto.setOrigem("Ribeirão Preto - SP");
		produto.setVolume("600ml");
		produto.setDescricao(
				"A palavra Appia vem do latim e significa mel. O nome perfeito para a primeira cerveja do Brasil a utilizar mel em sua fórmula. Uma combinação exótica que, além do mel das flores das laranjeiras, é feita a partir dos melhores maltes de cevada e trigo, além de nossa exclusiva levedura de alta fermentação. Doce, encorpada e refrescante, é perfeita para quem busca novos e diferentes sabores.");
		produto.setFoto("/imagens/colorado-appia.png");
		produto.setIngrediente("Cerveja, água, mel.");
		produto.setAlergico("Contém trigo, cevada e glúten.");
		produto.setTeor_alcoolico("5.5 %");
		produto.setTemperatura_ideal("4-8 ºC");
		produto.setIbu("10");
		produto.setCaloria("100 kcal = 420 kJ");
		produto.setCarboidrato("8,5 g");

		dao.insert(produto);

		System.out.println("Registro inserido com sucesso.");

	}

}
