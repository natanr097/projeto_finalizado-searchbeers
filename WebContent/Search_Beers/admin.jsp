<html>
<%@ page contentType="text/html; charset=ISO-8859-1" language="java"
	pageEncoding="UTF-8" import="java.sql.*" errorPage=""%>
<%@page import="modelo.Produto"%>
<%@page import="dao.DaoProduto"%>
<%@page import="dao.DaoUsuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Usuario"%>

<head>
<title>Search Beers - Administrador</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/admin.css">
<link rel="shortcut icon" href="imagens/logo.jpg">
</head>
<body>


	<%
	// Verifica se o usuário está autenticado
	HttpSession sessao = request.getSession();
	Usuario usuarioAutenticado = null;
	DaoUsuario dao = new DaoUsuario();
	int idUsuarioAutenticado = 0;
	String nomUsuarioAutenticado = "";
	try {
		usuarioAutenticado = (Usuario) sessao.getAttribute("usuario");
		if (usuarioAutenticado.equals(null)) {
			response.sendRedirect("UsuarioControlador?operacao=login");
		} else {
			idUsuarioAutenticado = usuarioAutenticado.getUsuario_id();
			nomUsuarioAutenticado = usuarioAutenticado.getLogin();
		}
	} catch (Exception e) {
		response.sendRedirect("UsuarioControlador?operacao=login");
	}
	%>


	<%
	DaoProduto daoProduto = new DaoProduto();
	List<Produto> listaProduto = new ArrayList<Produto>();

	String nomePesquisaProduto = "";
	nomePesquisaProduto = request.getParameter("pesquisa");

	if (nomePesquisaProduto == null) {
		listaProduto = daoProduto.select();
	} else {
		listaProduto = daoProduto.selectNome(nomePesquisaProduto);
	}
	%>



	<%
	DaoUsuario daoUsuario = new DaoUsuario();
	List<Usuario> listaUsuario = new ArrayList<Usuario>();

	String nomePesquisaUsuario = "";
	nomePesquisaUsuario = request.getParameter("pesquisa");

	if (nomePesquisaUsuario == null) {
		listaUsuario = daoUsuario.select();
	} else {
		listaUsuario = daoUsuario.selectNome(nomePesquisaUsuario);
	}
	%>




	<div class="col-12 col-sm-3 backcard">
		<div class="card-block special-card" style="width: 10rem;">
			<img class="card-img-cadprod" src="imagens/cadastrar.png"
				height="200px">
			<button type="button" class="btn btn-success btn-produtocad"
				data-toggle="modal" data-target="#modal-cadastro-cervejas">Cadastrar
				cervejas</button>
		</div>
	</div>
	<div class="col-12 col-sm-3 backcard">
		<div class="card-block special-card" style="width: 10rem;">
			<img class="card-img-cadlistprod" src="imagens/listar.png"
				height="200px">
			<button type="button" class="btn btn-success btn-produtolist"
				data-toggle="modal" data-target="#modal-listagem-cervejas">Listar
				cervejas</button>
		</div>
	</div>




	<!-- Modal Cadastro de Cervejas -->
	<div class="modal fade" id="modal-cadastro-cervejas" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLongTitle"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Cadastro de
						Cervejas</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">


					<form id="form-inclusao-registro" action="../ProdutoControlador"
						method="post" enctype="multipart/form-data">
						<input type="hidden" name="operacao" value="insert"> <input
							type="hidden" name="usuarioAutenticado"
							value="<%=idUsuarioAutenticado%>">



						<div class="row">
							<div class="col-12 col-md-6">
								<div class="form-group">
									Nome: <input type="text" class="form-control" id="nome"
										name="nome" placeholder="" required>
								</div>
							</div>

							<div class="col-12 col-md-6">
								<div class="form-group">
									Fabricante: <input type="text" class="form-control"
										id="fabricante" name="fabricante" placeholder="" required>
								</div>
							</div>



							<div class="col-12 col-md-6">
								<div class="form-group">
									Origem: <input type="text" class="form-control" id="origem"
										name="origem" placeholder="" required>
								</div>
							</div>

							<div class="col-12 col-md-6">
								<div class="form-group">
									Volume: <input type="text" class="form-control" id="volume"
										name="volume" placeholder="" required>
								</div>
							</div>

							<div class="col-md-6">
								<div class="form-group">
									<label for="foto">Foto:</label> <input class="form-control"
										type="file" name="foto" required>
								</div>
							</div>

							<div class="col-12 col-md-6">
								<div class="form-group">
									Carboidrato: <input type="text" class="form-control"
										id="teor_alcoolico" name="carboidrato" placeholder="" required>
								</div>
							</div>

						</div>

						<div class="row">


							<div class="col-12 col-md-6">
								<div class="form-group">
									<label for="exampleFormControlTextarea1">Ingredientes:</label>
									<textarea class="form-control" name="ingrediente" rows="1"></textarea>
								</div>
							</div>



							<div class="col-12 col-md-6">
								<div class="form-group">
									<label for="exampleFormControlTextarea1">Alergicos:</label>
									<textarea class="form-control" name="alergico" rows="1"></textarea>
								</div>
							</div>



							<div class="col-12 col-md-6">
								<div class="form-group">
									Teor alcoólico: <input type="text" class="form-control"
										id="teor_alcoolico" name="teor_alcoolico" placeholder=""
										required>
								</div>
							</div>

							<div class="col-12 col-md-6">
								<div class="form-group">
									Temperatura ideal: <input type="text" class="form-control"
										id="teor_alcoolico" name="temperatura_ideal" placeholder=""
										required>
								</div>
							</div>

							<div class="col-12 col-md-6">
								<div class="form-group">
									IBU: <input type="text" class="form-control"
										id="teor_alcoolico" name="ibu" placeholder="" required>
								</div>
							</div>

							<div class="col-12 col-md-6">
								<div class="form-group">
									Calorias: <input type="text" class="form-control"
										id="teor_alcoolico" name="caloria" placeholder="" required>
								</div>
							</div>
							<div class="col-12">
								<div class="form-group">
									<label for="exampleFormControlTextarea1">Descrição:</label>
									<textarea class="form-control p-5" name="descricao" rows="1"></textarea>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Cancelar</button>

							<button type="submit" class="btn btn-primary">Gravar</button>
						</div>

					</form>
				</div>

			</div>

		</div>

	</div>

	<!-- Fim Modal Cadastro de Cervejas -->


	<!--  Modal Listagem de Cervejas  -->
	<div class="modal" id="modal-listagem-cervejas">
		<div class="modal-dialog modal-xl" data-backdrop="static">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title">Listar Produtos</h3>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body"></div>
				<div class="modal-body">
					<form id="form-inclusao-registro" action="" method="post">
						<div class="row">
							<div class="container">
								<div class="card">
									<div class="card-header">
										<span><b>Listagem de Registros</b></span>
										<div style="float: right">
											<form action="produto/admin.jsp" method="post">
												<label for="pesquisa">Nome:</label> <input type="text"
													name="pesquisa" id="pesquisa"> <input
													class="btn btn-success btn-sm" type="submit"
													value="Pesquisar">
											</form>
										</div>
									</div>
									<div class="card-body">
										<table class="table table-hover">
											<thead>
												<tr>
													<th>Foto</th>
													<th>id</th>
													<th>Nome</th>
													<th>Origem</th>
													<th>Fabricante</th>
													<th>Volume</th>
													<th>Teor Alcoolico</th>
													<th colspan="2">Operações</th>
												</tr>
											</thead>
											</tbody>





											<%
											for (Produto produto : listaProduto) {
											%>
											<tr style="color: black;">
												<td><img width="30px"
													src="imagens/<%=produto.getFoto()%>"></td>
												<td><%=produto.getProduto_id()%></td>
												<td><%=produto.getNome()%></td>
												<td><%=produto.getOrigem()%></td>
												<td><%=produto.getFabricante()%></td>
												<td><%=produto.getVolume()%></td>
												<td><%=produto.getTeor_alcoolico()%></td>






												<td><a
													href="formUpdateProduto.jsp?idAlteracao=<%=produto.getProduto_id()%>"
													class="btn btn-warning btn-sm">Editar</a></td>

												<td><a
													href="deleteProduto.jsp?id=<%=produto.getProduto_id()%>"
													class="btn btn-danger btn-sm">Excluir</a></td>
											</tr>
											<%
											}
											%>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--  Modal Listagem de Cervejas -->
</body>

</html>