<!DOCTYPE html>
<html>
<%@ page contentType="text/html; charset=ISO-8859-1" language="java"
	pageEncoding="UTF-8" import="java.sql.*" errorPage=""%>
<%@page import="modelo.Produto"%>
<%@page import="dao.DaoProduto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<head>
<title>Search Beers - Alteração de Registro de Cerveja</title>
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
<link rel="stylesheet" type="text/css" href="css/formUpdate.css">
<link rel="shortcut icon" href="imagens/logo.jpg">
<style>
</style>
</head>
<body>


	<%
	int idAlteracao;

	String nome;
	String fabricante;
	String origem;
	String volume;
	String descricao;
	String foto;
	String ingrediente;
	String alergico;
	String teor_alcoolico;
	String temperatura_ideal;
	String ibu;
	String caloria;
	String carboidrato;

	List<Produto> listaAlteracao = new ArrayList<Produto>();

	DaoProduto dao = new DaoProduto();

	idAlteracao = Integer.parseInt(request.getParameter("idAlteracao"));

	listaAlteracao = dao.selectId(idAlteracao);
	nome = listaAlteracao.get(0).getNome();
	fabricante = listaAlteracao.get(0).getFabricante();
	origem = listaAlteracao.get(0).getOrigem();
	volume = listaAlteracao.get(0).getVolume();
	descricao = listaAlteracao.get(0).getDescricao();
	foto = listaAlteracao.get(0).getFoto();
	ingrediente = listaAlteracao.get(0).getIngrediente();
	alergico = listaAlteracao.get(0).getAlergico();
	teor_alcoolico = listaAlteracao.get(0).getTeor_alcoolico();
	temperatura_ideal = listaAlteracao.get(0).getTemperatura_ideal();
	ibu = listaAlteracao.get(0).getIbu();
	caloria = listaAlteracao.get(0).getCaloria();
	carboidrato = listaAlteracao.get(0).getCarboidrato();
	%>
	
	
	 
	<div class="card-header col-md-12 mt-10 ml-6" >
	

		<div class="card border-secondary">
		
		<div class="card-header">
		
        <span align="center"><b><h2>Alteração de Cadastro</h2></b></span>
   
    </div>
			<div class="container">



				<div class="row">

					<form action="updateProduto.jsp" method="post">
						<input type="hidden" name="idAlteracao" value="<%=idAlteracao%>">
						<div class="row">

					
							<div class="col-12 col-md-6">
							<br>
								<div class="form-group">
									<label for="name">Nome:</label> <input class="form-control"
										type="text" name="nome" id="nome" value="<%=nome%>">
								</div>
							</div>



							<div class="col-12 col-md-6">
							<br>
								<div class="form-group">
									<label for="name">Fabricante:</label> <input
										class="form-control" type="text" name="fabricante"
										id="fabricante" value="<%=fabricante%>">
								</div>
							</div>



							<div class="col-12 col-md-6">
								<div class="form-group">
									<label for="name">Origem:</label> <input class="form-control"
										type="text" name="origem" id="origem" value="<%=origem%>">
								</div>
							</div>

							<div class="col-12 col-md-6">
								<div class="form-group">
									<label for="name">Volume:</label> <input class="form-control"
										type="text" name="volume" id="volume" value="<%=volume%>">
								</div>
							</div>


							<div class="col-12 col-md-6">
								<div class="form-group">
									<label for="foto">Foto:</label> <input class="form-control"
										type="file" name="foto" value="<%=foto%>" required>
								</div>
							</div>

							<div class="col-12 col-md-6">
								<div class="form-group">
									<label for="name">Carboidrato:</label> <input
										class="form-control" type="text" name="carboidrato"
										id="carboidrato" value="<%=carboidrato%>">
								</div>
							</div>


							<div class="col-12 col-md-6">
								<div class="form-group">
									<label for="name">Ingredientes:</label> <input
										class="form-control" type="text" name="ingrediente"
										id="ingrediente" value="<%=ingrediente%>">
								</div>
							</div>

							<div class="col-12 col-md-6">
								<div class="form-group">
									<label for="name">Alergicos:</label> <input
										class="form-control" type="text" name="alergico" id="alergico"
										value="<%=alergico%>">
								</div>
							</div>

							<div class="col-12 col-md-6">
								<div class="form-group">
									<label for="name">Teor Alcoólico:</label> <input
										class="form-control" type="text" name="teor_alcoolico"
										id="teor_alcoolico" value="<%=teor_alcoolico%>">
								</div>
							</div>


							<div class="col-12 col-md-6">
								<div class="form-group">
									<label for="name">Temperatura ideal:</label> <input
										class="form-control" type="text" name="temperatura_ideal"
										id="temperatura_ideal" value="<%=temperatura_ideal%>">
								</div>
							</div>

							<div class="col-12 col-md-6">
								<div class="form-group">
									<label for="name">IBU:</label> <input class="form-control"
										type="text" name="ibu" id="ibu" value="<%=ibu%>">
								</div>
							</div>

							<div class="col-12 col-md-6">
								<div class="form-group">
									<label for="name">Calorias:</label> <input class="form-control"
										type="text" name="caloria" id="caloria" value="<%=caloria%>">
								</div>
							</div>

							<div class="col-12 col-md-12">
								<div class="form-group">
									<p>
										<label for="name">Descrição:</label> <input class="form-control"
										type="text" name="descricao" id="descricao" value="<%=descricao%>">
									</p>
								</div>
							</div>


						</div>


						<div class="row">
							<div class="col-sm-6 col-md-2">
								<button type="submit" class="mt-2 btn btn-block btn-primary">Gravar</button>
							</div>

							<div class="col-sm-6 col-md-2">
								<input class="mt-2 btn btn-block btn-secondary" value="Cancelar"
									onClick="history.go(-1)">
									
							</div>
							
						</div>

					</form>
					<br>
				</div>

			</div>

		</div>
	</div>
</body>
</html>