<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Search Beers - Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/SearchBeers/Search_Beers/css/login.css">
<link rel="shortcut icon" href="imagens/logo.jpg">
<meta charset="UTF-8">
</head>
<body>
	<div id="area-cabecalho">
		<div class="area-principal">
			<form class="form" action="../Autenticacao" method="post">

				<div class="card">
					<a href=""><img src=""></a>
					<h1 id="logoMenu">Search Beers</h1>

					<div class="card-top">
						<img class="img-login" src="/SearchBeers/Search_Beers/imagens/login.png" alt="" />
						<p>
							<b>Acesse sua conta</b>
						</p>
					</div>

					<div class="card-group">
						<label for="login">Usuário:</label> <input class="form-control"
							type="text" name="login" id="login">
					</div>

					<div class="card-group">
						<label for="senha">Senha:</label> <input class="form-control"
							type="password" name="senha" id="senha">
					</div>


					<div class="container">

						<button type="submit" class="btnLogin">Entrar</button>

					</div>


				</div>

			</form>
		</div>
	</div>
</body>
</html>