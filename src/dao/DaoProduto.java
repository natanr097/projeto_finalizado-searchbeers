package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import banco.Conexao;
import modelo.Produto;

public class DaoProduto {

	private Connection con;
	private Conexao conexao;

	public DaoProduto() {
		this.conexao = Conexao.getInstancia();
		this.con = this.conexao.conecta();
	}

	// Insere um registro no banco de dados
	public void insert(Produto produto) {
		String sql = "INSERT INTO Produto (nome,fabricante,origem,volume,descricao,foto,ingrediente,alergico,teor_alcoolico,temperatura_ideal,ibu,caloria,carboidrato,usuario_usuario_id) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?) ";

		try {
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, produto.getNome());
			stmt.setString(2, produto.getFabricante());
			stmt.setString(3, produto.getOrigem());
			stmt.setString(4, produto.getVolume());
			stmt.setString(5, produto.getDescricao());
			stmt.setString(6, produto.getFoto());
			stmt.setString(7, produto.getIngrediente());
			stmt.setString(8, produto.getAlergico());
			stmt.setString(9, produto.getTeor_alcoolico());
			stmt.setString(10, produto.getTemperatura_ideal());
			stmt.setString(11, produto.getIbu());
			stmt.setString(12, produto.getCaloria());
			stmt.setString(13, produto.getCarboidrato());
			
			stmt.setInt(14,produto.getUsuario_usuario_id());
			

			stmt.execute();
			stmt.close();

		} catch (Exception e) {
			System.out.println("Falha na inclusão do registro.");
			System.out.println(e.getMessage());
		}
	}
	
	
		//Excluir um registro do banco de dados
		public void delete(int id) {
			String sql = "DELETE FROM produto WHERE produto_id = " +  id;
			
			try {
				PreparedStatement stmt = con.prepareStatement(sql);
				stmt.execute();
				stmt.close();
			}catch(Exception e) {
				System.out.println("Falha na exclusão do registro.");
				System.out.println(e.getMessage());
			}
		}
		
		
		// Alteração de um registro no banco de dados
		public void update(Produto produto) {
			String sql = "UPDATE produto SET nome = ?,fabricante = ?, origem = ?,volume = ?, descricao = ?,foto = ?, ingrediente = ?, alergico = ?,teor_alcoolico = ?, temperatura_ideal = ?,ibu = ?,caloria = ?,carboidrato = ? WHERE produto_id = ?";

			try {
				PreparedStatement stmt = con.prepareStatement(sql);
				
				
				stmt.setString(1,produto.getNome());
				stmt.setString(2,produto.getFabricante());
				stmt.setString(3,produto.getOrigem());
				stmt.setString(4,produto.getVolume());
				stmt.setString(5,produto.getDescricao());
				stmt.setString(6,produto.getFoto());
				stmt.setString(7,produto.getIngrediente());
				stmt.setString(8,produto.getAlergico());
				stmt.setString(9,produto.getTeor_alcoolico());
				stmt.setString(10,produto.getTemperatura_ideal());
				stmt.setString(11,produto.getIbu());
				stmt.setString(12,produto.getCaloria());
				stmt.setString(13,produto.getCarboidrato());
				stmt.setInt(14,produto.getProduto_id());
				
				stmt.execute();
				stmt.close();

			} catch (Exception e) {
				System.out.println("Falha na edição do registro.");
				System.out.println(e.getMessage());
			}
		}
	

	// Obtem todos os registros do banco de dados
	public List<Produto> select() {
		String sql = "SELECT * FROM Produto";
		return executaSelect(sql);
	}

	// Pesquisa os registros pelo nome
	public List<Produto> selectNome(String nome) {
		String sql = "SELECT * FROM Produto WHERE nome like \"%" + nome + "%\"";
		return executaSelect(sql);
	}

	// Pesquisa os registros pela chave primária
	public List<Produto> selectId(int id) {
		String sql = "SELECT * FROM Produto WHERE Produto_id = " + id;
		return executaSelect(sql);
	}

	// Executa qualquer consulta no banco
	public List<Produto> executaSelect(String sql) {
		List<Produto> listaProdutos = new ArrayList<Produto>();

		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {

				Produto p = new Produto();

				p.setProduto_id(rs.getInt("produto_id"));
				p.setNome(rs.getString("nome"));
				p.setFabricante(rs.getString("fabricante"));
				p.setOrigem(rs.getString("origem"));
				p.setVolume(rs.getString("volume"));
				p.setDescricao(rs.getString("descricao"));
				p.setFoto(rs.getString("foto"));
				p.setIngrediente(rs.getString("ingrediente"));
				p.setAlergico(rs.getString("alergico"));
				p.setTeor_alcoolico(rs.getString("teor_alcoolico"));
				p.setIbu(rs.getString("ibu"));
				p.setCaloria(rs.getString("caloria"));
				p.setCarboidrato(rs.getString("carboidrato"));
				p.setTemperatura_ideal(rs.getString("temperatura_ideal"));
				

				listaProdutos.add(p);
			}

			rs.close();
			stmt.close();

		} catch (Exception e) {
			System.out.println("Falha na consulta ao banco de dados");
			System.out.println(e.getMessage());
		}

		return listaProdutos;
	}

	public List<Produto> getNomeById(int id) {

		String sql = "SELECT * FROM produto WHERE usuario_id = " + id;
		return executaSelect(sql);
	}

}
