<%@page import="modelo.Produto"%>
<%@page import="dao.DaoProduto"%>
<%@page import="dao.DaoUsuario"%>
<%@page import="modelo.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Produto produto = new Produto();
	DaoProduto dao = new DaoProduto();
	
	produto.setNome(request.getParameter("nome"));
	produto.setOrigem(request.getParameter("origem"));
	produto.setVolume(request.getParameter("volume"));
	produto.setTeor_alcoolico(request.getParameter("teor_alcoolico"));
	produto.setFabricante(request.getParameter("fabricante"));
	produto.setFoto(request.getParameter("foto"));
	produto.setIngrediente(request.getParameter("ingrediente"));
	produto.setAlergico(request.getParameter("alergico"));
	produto.setDescricao(request.getParameter("descricao"));
	produto.setTemperatura_ideal(request.getParameter("temperatura_ideal"));
	produto.setIbu(request.getParameter("ibu"));
	produto.setCaloria(request.getParameter("caloria"));
	produto.setCarboidrato(request.getParameter("carboidrato"));
	
	produto.setProduto_id(Integer.parseInt(request.getParameter("idAlteracao")));

	dao.update(produto);
	%>
	<script>
		alert("Registro Alterado com Sucesso!")
		window.location.href = "admin.jsp";
	</script>
</body>
</html>