package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import banco.Conexao;
import modelo.Usuario;

public class DaoUsuario {

	private Connection con;
	private Conexao conexao;

	public DaoUsuario() {
		this.conexao = Conexao.getInstancia();
		this.con = this.conexao.conecta();

	}
	
	
	// Pesquisa os registros pelo nome
		public List<Usuario> selectNome(String login) {
			String sql = "SELECT * FROM Usuario WHERE login like \"%" + login + "%\"";
			return executaSelect(sql);
		}

	// Obtem todos os registros do banco de dados
	public List<Usuario> select() {
		String sql = "SELECT * FROM Usuario";
		return executaSelect(sql);
	}

	public List<Usuario> getAutenticacao(String nome, String senha) {
		String sql = "SELECT * FROM Usuario where login = '" + nome + "'" + " and senha = '" + senha + "'";
		return executaSelect(sql);
	}

	// Executa qualquer consulta no banco
	public List<Usuario> executaSelect(String sql) {
		List<Usuario> listaUsuarios = new ArrayList<Usuario>();

		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				Usuario u = new Usuario();
				u.setUsuario_id(rs.getInt("usuario_id"));
				u.setLogin(rs.getString("login"));
				u.setSenha(rs.getString("senha"));

				listaUsuarios.add(u);
			}

			rs.close();
			stmt.close();

		} catch (Exception e) {
			System.out.println("Falha na consulta ao banco de dados");
			System.out.println(e.getMessage());
		}

		return listaUsuarios;
	}

	// Insere um registro no banco de dados
	public void insert(Usuario usuario) {
		String sql = "INSERT INTO Usuario (login,senha) VALUES (?,?) ";

		try {
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, usuario.getLogin());
			stmt.setString(2, usuario.getSenha());

			stmt.execute();
			stmt.close();

		} catch (Exception e) {
			System.out.println("Falha na inclusão do registro.");
			System.out.println(e.getMessage());
		}
	}

}
