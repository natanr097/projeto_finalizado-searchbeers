package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DaoUsuario;
import modelo.Usuario;

@WebServlet("/UsuarioControlador")
public class UsuarioControlador extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DaoUsuario dao;

	public UsuarioControlador() {
		super();
		dao = new DaoUsuario();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String operacao = request.getParameter("operacao");

		switch (operacao) {

		case "select":
			// Exibir todos os registros no banco de dados
			selectAll(request, response);
			break;

		case "login":

			login(request, response);

			break;

		default:
			break;

		}

	}

	// Criar a lista com todos os registros do banco de dados
	private void selectAll(HttpServletRequest request, HttpServletResponse response) throws IOException {

		List<Usuario> listaUsuarios = dao.select();
		request.setAttribute("listaRegistros", listaUsuarios);

		response.sendRedirect("Search_Beers/login.jsp");

	}

	private void login(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.sendRedirect("Search_Beers/login.jsp");  
	


	}

}
