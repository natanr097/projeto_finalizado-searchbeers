package controlador;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import modelo.Produto;
import dao.DaoProduto;

@WebServlet("/ProdutoControlador")
@MultipartConfig
public class ProdutoControlador extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DaoProduto dao = new DaoProduto();

	public ProdutoControlador() {

		super();
		dao = new DaoProduto();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String operacao = request.getParameter("operacao");

		switch (operacao) {

		case "insert":
			// Gravar registro no banco de dados
			incluiRegistro(request, response);
			break;
			
		case "delete":
			// Exluir registro no banco de dados
			delete(request, response);
			break;
			
		case "formUpdate":
			// Atualizar registro no banco de dados
			formUpdate(request, response);
			break;

		case "update":
			// Atualizar registro no banco de dados
			update(request, response);
			break;

		case "select":
			// Exibir todos os registros no banco de dados
			selectAll(request, response);
			break;

		case "selectNome":
			// Pesquisa pelo nome do os registro
			selectNome(request, response);
			break;
			
			
			

		default:
			break;
		}

	}

	

	// Criar a lista a partir de uma pesquisa pelo nome do registros do banco de dados
	// os quais serão exibidos pelo arquivo select.jsp
	private void selectNome(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nomePesquisa = request.getParameter("pesquisa");

		List<Produto> listaProdutos = dao.selectNome(nomePesquisa);
		request.setAttribute("listaRegistros", listaProdutos);

		RequestDispatcher dispatcher = request.getRequestDispatcher("Search_Beers/admin.jsp");
		dispatcher.forward(request, response);

	}

	// Criar a lista com todos os registros do banco de dados
	private void selectAll(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		List<Produto> listaProdutos = dao.select();
		request.setAttribute("listaRegistros", listaProdutos);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Search_Beers/alertaCadastroProduto.jsp");
		dispatcher.forward(request, response);

		

	}

	private void incluiRegistro(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		String nome = request.getParameter("nome");
		String origem = request.getParameter("origem");
		String fabricante = request.getParameter("fabricante");
		String volume = request.getParameter("volume");
		String teor_alcoolico = request.getParameter("teor_alcoolico");
		String foto = request.getParameter("foto");
		String ingrediente = request.getParameter("ingrediente");
		String alergico = request.getParameter("alergico");
		String descricao = request.getParameter("descricao");
		String temperatura_ideal = request.getParameter("temperatura_ideal");
		String ibu = request.getParameter("ibu");
		String caloria = request.getParameter("caloria");
		String carboidrato = request.getParameter("carboidrato");
		
		
		int usuario_codigo = Integer.parseInt(request.getParameter("usuarioAutenticado"));
		
		Produto produto = new Produto();

		produto.setNome(nome);
		produto.setOrigem(origem);
		produto.setFabricante(fabricante);
		produto.setVolume(volume);
		produto.setTeor_alcoolico(teor_alcoolico);
		produto.setFoto(uploadFoto(request, response));
		produto.setIngrediente(ingrediente);
		produto.setAlergico(alergico);
		produto.setDescricao(descricao);
		produto.setTemperatura_ideal(temperatura_ideal);
		produto.setIbu(ibu);
		produto.setCaloria(caloria);
		produto.setCarboidrato(carboidrato);
		
		produto.setUsuario_usuario_id(usuario_codigo);

		dao.insert(produto);
		response.sendRedirect("ProdutoControlador?operacao=select");

	}
	

	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int codigo = Integer.parseInt(request.getParameter("id"));

		dao.delete(codigo);
		response.sendRedirect("Search_Beers/admin.jsp");

	}
	
	private void update(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		Produto produto = new Produto();

		produto.setNome(request.getParameter("nome"));
		produto.setOrigem(request.getParameter("origem"));
		produto.setFabricante(request.getParameter("fabricante"));
		produto.setVolume(request.getParameter("volume"));
		produto.setTeor_alcoolico(request.getParameter("teor_alcoolico"));
		produto.setFoto(request.getParameter("foto"));
		produto.setIngrediente(request.getParameter("ingrediente"));
		produto.setAlergico(request.getParameter("alergico"));
		produto.setDescricao(request.getParameter("descricao"));
		produto.setTemperatura_ideal(request.getParameter("temperatura_ideal"));
		produto.setIbu(request.getParameter("ibu"));
		produto.setCaloria(request.getParameter("caloria"));
		produto.setCarboidrato(request.getParameter("carboidrato"));
		
		
		
		produto.setFoto(uploadFoto(request, response));

		dao.update(produto);

		response.sendRedirect("ProdutoControlador?operacao=select");

	}
	// Cria a Lista de registros a partir de uma pesquisa pela chave primária do registro no banco de dados
	// a qual será enviado para o formulário de alteração
	private void formUpdate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int idAlteracao = Integer.parseInt(request.getParameter("idAlteracao"));

		List<Produto> listaProdutos = dao.selectId(idAlteracao);
		request.setAttribute("listaRegistros", listaProdutos);

		RequestDispatcher dispatcher = request.getRequestDispatcher("Search_Beers/formUpdateProduto.jsp");
		dispatcher.forward(request, response);

	}
	
	
	
	
	
	

	

	// Efetua o upload do arquivo de foto
	private String uploadFoto(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Obtem o arquivo do formulário
		Part aquivo = request.getPart("foto");

		// Local onde será salvo o arquivo
		String diretorio = this.getServletContext().getRealPath(".");
		diretorio += "/Search_Beers/imagens/";

		// Cria o diretório caso não exista
		File fileDir = new File(diretorio);
		if (!fileDir.exists()) {
			fileDir.mkdirs();
		}

		// Obtem o nome do arquivo
		String nomeArquivo = aquivo.getSubmittedFileName();

		// Grava o arquivo no disco
		aquivo.write(diretorio + nomeArquivo);

		return nomeArquivo;
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
