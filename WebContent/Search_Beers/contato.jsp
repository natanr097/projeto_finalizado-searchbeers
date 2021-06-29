<html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <title>Search Beers - Contato</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2? family = Open + Sans: wght @ 300 & display = swap "
        rel=" stylesheet ">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="css/contato.css">
    <link rel="shortcut icon" href="imagens/logo.jpg">
    <meta charset="UTF-8">
</head>

<body>


     <nav
		class="navbar justify-content-center navbar-expand-lg navbar-light">
		<ul class="nav">
			<li class="nav-item"><a class="nav-link" href="home.jsp">Home</a>
			</li>
			<li class="nav-item"><a class="nav-link"
				href="historia_cervejas.jsp">História das cervejas</a></li>
			<li class="nav-item"><a href="home.jsp"> <img
					src="imagens/logo.jpg" width="110">
			</a></li>
			<li class="nav-item"><a class="nav-link" href="marcas.jsp">Marcas</a></li>
			<li class="nav-item"><a class="nav-link" href="about_us.jsp">Quem
					somos nós?</a></li>
					
			<li class="nav-item"><a class="nav-link active" href="contato.jsp">Contato</a></li>

		</ul>
	</nav>

    <div class="container">
        <form>
            <div class="form-row mt-5">
                <div class="col">
                    <label for="name">Nome</label>
                    <input type="text" class="form-control">
                </div>
                <div class="col">
                    <label for="">Sobrenome</label>
                    <input type="text" class="form-control">
                </div>
            </div>
            <div class="form-row mt-4">
                <div class="col">
                    <label for="name">E-mail</label>
                    <input type="text" class="form-control">
                </div>
            </div>
            <div class="form-row mt-4">
                <div class="form-group col-12">
                    <label for="exampleFormControlTextarea1">Comentário</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
            </div>
        </form>
    </div>

    <footer>
        <div class="social">
            <span class="titulo-footer" style="color:#fff;">Nossas Redes Sociais</span>
            <a href="https://www.facebook.com/SearchBeers"> <i class="fab fa-facebook"></i>
            </a>
            <a href="https://www.instagram.com/SearchBeers/"> <i class="fab fa-instagram"></i>
            </a>
            <a href="https://www.twitter.com/SearchBeers/"> <i class="fab fa-twitter"></i>
            </a>
            <img class="logo-footer" src="imagens/logo.jpg" alt="logo" width="150px">
        </div>
    </footer>
    
    <script src="https://kit.fontawesome.com/40c5ef6079.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
        integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
        crossorigin="anonymous"></script>

</body>

</html>