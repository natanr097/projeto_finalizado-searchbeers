package autenticacao;

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

@WebServlet("/Autenticacao")
public class Autenticacao extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private DaoUsuario dao;

	public Autenticacao() {
		super();
		dao = new DaoUsuario();

	}

//  Finalizar a sessão do usuário
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession sessao = request.getSession();
		sessao.removeAttribute("login");
		RequestDispatcher dispatcher = request.getRequestDispatcher("UsuarioControlador?operacao=select");
		dispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		

		List<Usuario> listaUsuarios = dao.getAutenticacao(login, senha);

		try {
			if (listaUsuarios.isEmpty() != true) {
				for (Usuario user : listaUsuarios) {

					String loginUser = user.getLogin();
				

					HttpSession sessao = request.getSession();
					
					sessao.setAttribute("usuario", user);
					
					
					sessao.setAttribute("login", loginUser);
					

					response.sendRedirect("Search_Beers/admin.jsp");
				}
			} else {
				response.sendRedirect("Search_Beers/login.jsp");
			}
		} catch (Exception e) {
			response.sendRedirect("Search_Beers/login.jsp");
			e.printStackTrace();
		}
	
	
	}
}
