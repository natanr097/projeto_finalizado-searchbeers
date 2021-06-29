<html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DaoProduto"%>
<%@page import="modelo.Produto"%>
<head>
    <title>Search Beers - Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2? family = Open + Sans: wght @ 300 & display = swap "
        rel=" stylesheet ">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="css/home.css">
    <link rel="shortcut icon" href="imagens/logo.jpg">
    <meta charset="UTF-8">
</head>

<body>

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


   <nav
		class="navbar justify-content-center navbar-expand-lg navbar-light">
		<ul class="nav">
			<li class="nav-item"><a class="nav-link active" href="home.jsp">Home</a>
			</li>
			<li class="nav-item"><a class="nav-link"
				href="historia_cervejas.jsp">História das cervejas</a></li>
			<li class="nav-item"><a href="home.jsp"> <img
					src="imagens/logo.jpg" width="110">
			</a></li>
			<li class="nav-item"><a class="nav-link" href="marcas.jsp">Marcas</a></li>
			<li class="nav-item"><a class="nav-link" href="about_us.jsp">Quem
					somos nós?</a></li>
					
			<li class="nav-item"><a class="nav-link" href="contato.jsp">Contato</a></li>

		</ul>
	</nav>

    <div class="container">
        <div class="row justify-content-center mt-5">
        
        	<%
			for (Produto produto : listaProduto) {
			%>
            <div class="col-12 col-md-3 mt-4 ml-4">
            
                <div class="form-group">
                    <!-- Aqui coloquei uma cerveja de forma estática apenas pra facilitar a visualização.
                    Terá de trazer a imagme que foi salva no formulário da tela admin.jsp -->
                    <img class="justify-content-center" src="imagens/<%=produto.getFoto()%>" alt="">
                </div>
                <!-- aqui vai ser o retorno do que foi salvo (GET) -->
                <span><%=produto.getFabricante()%></br><%=produto.getNome()%></span>
                
                <button type="button" class="btn btn-light" data-toggle="modal" data-target="#modal-cerveja-<%=produto.getProduto_id()%>">
                    Mostrar mais...
                </button>
                
                
                </div>
                
                <div class="modal fade" id="modal-cerveja-<%=produto.getProduto_id()%>" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle">Informações detalhadas..</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body" id="modal-cerveja-<%=produto.getProduto_id()%>">
                                <h5 style="text-align: center;">Fabricante</h5>
                                <div>
                                    <p>
                                        <%=produto.getFabricante()%>
                                    </p>
                                    <hr>
                                </div>
                                <h5 style="text-align: center;">Origem</h5>
                                <div>
                                    <p><%=produto.getOrigem()%>
                                    </p>
                                    <hr>
                                </div>
                                <h5 style="text-align: center;">Volume</h5>
                                <div>
                                    <p>
                                        <%=produto.getVolume()%>
                                    </p>
                                    <hr>
                                </div>
                                <h5 style="text-align: center;">Ingredientes</h5>
                                <div>
                                    <p>
                                       <%=produto.getIngrediente()%>
                                    </p>
                                    <hr>
                                </div>
                                <h5 style="text-align: center;">Alérgicos</h5>
                                <div>
                                    <p>
                                        <%=produto.getAlergico()%>
                                    </p>
                                    <hr>
                                </div>
                                <h5 style="text-align: center;">Temperatura</h5>
                                <div>
                                    <p>
                                        <%=produto.getTemperatura_ideal()%>
                                    </p>
                                    <hr>
                                </div>
                                <h5 style="text-align: center;">IBU</h5>
                                <div>
                                    <p>
                                        <%=produto.getIbu()%>
                                    </p>
                                    <hr>
                                </div>
                                <h5 style="text-align: center;">Carboidrato</h5>
                                <div>
                                    <p>
                                        <%=produto.getCarboidrato()%>
                                    </p>
                                    <hr>
                                </div>
                                <h5 style="text-align: center;">Descrição</h5>
                                <div>
                                    <p>
                                        <textarea disabled class="form-control"
									id="exampleFormControlTextarea1" rows="3"><%=produto.getDescricao()%></textarea>
                                    </p>
                                    <hr>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%
			}
			%>
            </div>
        </div>
  
</body>

</html>