/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package banco;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Tulio
 */
public class Conexao {

    private String url;     // Parametros utilizados para conexao.
    private Connection con; // Identificador de conexao.
    private String usuario; // Usuario do banco de dados.
    private String senha;   // Senha do usuario do banco de dados
    private static Conexao instancia; // Instancia da conexao

    // Construtor
    // Assim que um objeto conexao e instanciado, 
    // o driver para conexao com o MySQL e carregado.
    public Conexao() {
        // String de conexao
        this.url = "jdbc:mysql://localhost:3306/searchbeers?useSSL=false&useTimezone=true&serverTimezone=UTC";
        this.usuario = "root";   // Informe o usuario e senha
        this.senha = "Lara36391465%"; // do seu banco de dados

        // Carrega o driver para conexao com banco
        try {
            //conexao com o driver jdbc do mysql
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        // Realiza a conexao com o banco
        try {
            this.con = DriverManager.getConnection(this.url, this.usuario, this.senha);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static Conexao getInstancia() {
        if (instancia == null) {
            instancia = new Conexao();
        }
        return instancia;
    }

    // Metodo responsavel por realizar a conexao
    public Connection conecta() {
        return this.con;
    }

    /*
	 * Metodo fecha conexao: Responsavel por encerrar uma conexao
	 * - Encerra a conexao
	 * - Encerra o statement: Instrucao SQL
	 * - Encerra o ResultSet: Retorno de um select
     */
    public void fechaConexao(Connection con) {
        fechaConexao(con, null, null);
    }

    public void fechaConexao(Connection con, Statement stmt) {
        fechaConexao(con, stmt, null);
    }

    public void fechaConexao(Connection con, Statement stmt, ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }

            if (stmt != null) {
                stmt.close();
            }

            if (con != null) {
                con.close();
            }
        } catch (SQLException e) {
            e.getStackTrace();
        }
    }
}
