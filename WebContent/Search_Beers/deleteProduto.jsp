<%@page import="dao.DaoProduto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Excluir Registro</title>
</head>
<body>
	<%
	int codigo = Integer.parseInt(request.getParameter("id"));

	DaoProduto dao = new DaoProduto();

	dao.delete(codigo);
	%>
	<script>
		alert("Produto excluido com Sucesso!")
		window.location.href = "admin.jsp";
	</script>
</body>
</html>