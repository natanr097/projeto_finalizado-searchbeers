package banco;

import java.sql.Connection;

/**
 *
 * @author Tulio
 */
public class TestaConexao {

    public static void main(String[] args) {
        Conexao conexao = Conexao.getInstancia();
        Connection con = conexao.conecta();

        if (con != null) {
            System.out.println("Conexão realizada com sucesso:\n" + con);
            conexao.fechaConexao(con);
        } else {
            System.out.println("Não foi possível realizar a conexão com o banco de dados.");
        }
    }
}
