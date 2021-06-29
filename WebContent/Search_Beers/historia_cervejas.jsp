<html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <title>Search Beers - História das Cervejas</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2? family = Open + Sans: wght @ 300 & display = swap "
        rel=" stylesheet ">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="css/historiaCervejas.css">
    <link rel="shortcut icon" href="imagens/logo.jpg">
    <meta charset="UTF-8">
</head>

<body>


   <nav
		class="navbar justify-content-center navbar-expand-lg navbar-light">
		<ul class="nav">
			<li class="nav-item"><a class="nav-link" href="home.jsp">Home</a>
			</li>
			<li class="nav-item"><a class="nav-link active"
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
	
	
	
	
	
	<section id="header">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">

        <!-- indicadores -->
        <ol id="indicador" class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
        </ol>
        
        <!-- itens -->
        <div class="carousel-inner">
            
        <div class="carousel-item active">
            <figure class="figure">
            <img  src="imagens/saint1.png" class="img-fluid  d-block" >

            <!--  figcaption class="figcaption">Lorem ipsum tellus urna rutrum condimentum massa morbi ligula duis tellus inceptos </figcaption>-->
            </figure>
          </div>

          <div class="carousel-item">
            <figure class="figure">
              <img  src="imagens/saint2.png" class="img-fluid  d-block" >
  
              <!-- <figcaption class="figcaption">Lorem ipsum tellus urna rutrum condimentum massa morbi ligula duis tellus inceptos </figcaption> -->
              </figure>
          </div>

          <div class="carousel-item">
            <figure class="figure">
              <img  src="imagens/saint3.png" class="img-fluid  d-block" >
  
              <!-- <figcaption class="figcaption">Lorem ipsum tellus urna rutrum condimentum massa morbi ligula duis tellus inceptos </figcaption> -->
              </figure>
          </div>

          <div class="carousel-item">
            <figure class="figure">
              <img  src="imagens/saint4.png" class="img-fluid  d-block" >
  
              <!-- <figcaption class="figcaption">Lorem ipsum tellus urna rutrum condimentum massa morbi ligula duis tellus inceptos </figcaption> -->
              </figure>
          </div>

          <div class="carousel-item">
            <figure class="figure">
              <img  src="imagens/saint5.png" class="img-fluid  d-block" >
  
              <!-- <figcaption class="figcaption">Lorem ipsum tellus urna rutrum condimentum massa morbi ligula duis tellus inceptos </figcaption> -->
              </figure>
          </div>

          <div class="carousel-item">
            <figure class="figure">
              <img  src="imagens/saint2.png" class="img-fluid  d-block" >
  
              <!-- <figcaption class="figcaption">Lorem ipsum tellus urna rutrum condimentum massa morbi ligula duis tellus inceptos </figcaption> -->
              </figure>
          </div>
        </div>

        <!-- controles -->
         <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <!-- <span class="carousel-control-prev-icon" aria-hidden="true"></span> -->
          <i class="fa fa-arrow-circle-left fa-2x your-custom-class" aria-hidden="true"></i>
          <span class="sr-only">Anterior</span>
        </a> 

        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <!-- <span class="carousel-control-next-icon" aria-hidden="true"></span> -->
          <i class="fa fa-arrow-circle-right fa-2x your-custom-class" aria-hidden="true"></i>
          <span class="sr-only">Próximo</span>
        </a>
      </div>
</section>
	
	
	
	
	
	
	
    <div class="container">
        <h2 style="text-align: center;margin-top: 2rem;">UMA BREVE HISTÓRIA DA CERVEJA</h2>
        <span class="subtitulo">OS SUMÉRIOS DESCOBREM A CERVEJA</span>
        <p style="margin-top: 10px;">
            Há evidências de que a prática da cervejaria originou-se na região da Mesopotâmia onde a cevada cresce em
            estado selvagem. Os primeiros registros de fabricação de cerveja têm aproximadamente 6 mil anos e remetem
            aos Sumérios, povo mesopotâmico.

            A primeira cerveja produzida foi, provavelmente, um acidente. Documentos históricos mostram que em 2100 a.C.
            os sumérios alegravam-se com uma bebida fermentada, obtida de cereais.

            Na Suméria, cerca de 40% da produção dos cereais destinavam-se às cervejarias chamadas “casas de cerveja”,
            mantida por mulheres. Os egípcios logo aprenderam a arte de fabricar cerveja e carregaram a tradição no
            milênio seguinte, agregando o líquido à sua dieta diária.
        </p>
        <span class="subtitulo">A PRIMEIRA LEI DA CERVEJA</span>
        <p>
            A mais antiga lei que regulamenta a produção e a venda de cerveja é a Estela de Hamurabi, que data de 1760
            a.C. Nela, se condena à morte quem não respeita os critérios de produção de cerveja indicados.

            Incluía várias leis de comercialização, fabricação e consumo da cerveja, relacionando direitos e deveres dos
            clientes das tabernas. O Código de Hamurabi também estabelecia uma ração diária de cerveja para o povo da
            Babilônia: 2 litros para os trabalhadores, 3 para os funcionários públicos e 5 para os administradores e o
            sumo sacerdote.

            O código também impunha punições severas para os taberneiros que tentassem enganar os seus clientes.
        </p>
        <span class="subtitulo">A CERVEJA GANHA IMPORTÂNCIA</span>
        <p>
            A extrema relevância da cerveja para os egípcios refletia-se não só na existência de um alto funcionário
            encarregado de controlar e manter a qualidade da cerveja produzida, como também na criação de hieróglifos
            extra que descrevessem produtos e atividades relacionadas com a cerveja.

            Curiosamente, existem alguns povos que vivem ao longo do Nilo que ainda hoje fabricam cerveja num estilo
            muito próximo ao da era faraónica. Além de bem alimentar, servia também como remédio para certas doenças. Um
            documento médico, datado de 1600 a.C. e descoberto nas escavações de um túmulo, descreve cerca de 700
            prescrições médicas, das quais 100 contêm a palavra cerveja.
        </p>
        <div class="img-body" style="text-align: center;">
            <img id="img-historiacerveja" src="imagens/historia-cerveja/historia-cerveja-04.jpg" alt="egicipios historia-cerveja"
                width="300px">
            <figure>FONTE: cervejasdomundo.com | Fotos: Google</figure>
        </div>
        <span class="subtitulo">LÚPULO É ADICIONADO À RECEITA</span>
        <p>
            Na Idade Média, vários mosteiros fabricavam cerveja, empregando diversas ervas para aromatizá-la, como
            mírica, rosmarinho, louro, sálvia, gengibre e o lúpulo, este utilizado até hoje e introduzido no processo de
            fabricação da cerveja entre os anos 700 e 800. O uso de lúpulo para dar o gosto amargo da cerveja e para
            preservá-la é atribuída aos monges do Mosteiro de San Gallo, na Suíça. Os monges por serem os únicos que
            reproduziam os manuscritos da época, puderam conservar e aperfeiçoar a técnica de fabricação da cerveja.
        </p>
        <div class="img-body" style="text-align: center;">
            <img id="img-historiacerveja" src="imagens/historia-cerveja/historia-cerveja-07.jpg" alt="egicipios historia-cerveja"
                width="720px">
            <figure>FONTE: cervejasdomundo.com | Fotos: Google</figure>
        </div>
        <span class="subtitulo">E CONHECEMOS A PASTEURIZAÇÃO</span>
        <p>
            Louis Pasteur, um francês nascido em Dolle, no dia 27 de Dezembro de 1822. É lembrado por suas notáveis
            descobertas das causas e prevenções de doenças. Entre seus feitos mais notáveis pode-se citar a redução da
            mortalidade e a criação da primeira vacina contra a raiva. Seus experimentos deram fundamento para a teoria
            microbiológica da doença.

            Atendeu a solicitação de alguns dos vinicultores e cervejeiros da região que lhe pediram para descobrir como
            os vinhos e a cervejas azedavam. Durante sua investigação, através do uso de microscópio, ele pôde constatar
            que a levedura ocasionava este processo.

            Solucionou este problema através de um processo que originou a atual técnica de pasteurização dos alimentos.
        </p>
        <span class="subtitulo">NASCEM OS PRIMEIROS RÓTULOS</span>
        <p>
            Até o 2º Reinado, em (1840), os anúncios comerciais nos jornais referiam-se, exclusivamente, à venda de
            cerveja, nunca à produção. A primeiras fábricas produziam cerveja sem marca alguma e geralmente vendiam, em
            barris, para os depósitos (comércio que nem sempre era só de cerveja), onde era vendida de várias formas, às
            vezes engarrafadas e com rótulos próprios.

            A venda era feita no balcão e na própria cervejaria (ver propaganda de empresa que atendia a particulares).
            Convites eram espalhados pelos proprietários em bares próximos e festas eram realizadas dentro das
            cervejarias. As entregas eram feitas por carroças ao comércio dos bairros próximos. Nesse momento, o Rio de
            Janeiro já tinha uma população de padrão médio formada por militares, oficiais de indústrias, proprietários
            de pequenas manufaturas, profissionais liberais e funcionários públicos.

            A cidade já era comparável a outras da Europa Central, e já possuía um mercado consumidor relevante.
        </p>
        <div class="img-body" style="text-align: center;">
            <img id="img-historiacerveja" src="imagens/historia-cerveja/historia-cerveja-12.jpg" alt="egicipios historia-cerveja">
            <figure>FONTE: cervejasdomundo.com | Fotos: Google</figure>
        </div>
        <span class="subtitulo">ANÚNCIO É PUBLICADO</span>
        <p>
            O consumo foi crescendo gradualmente e, em 1836, surgiu a primeira notícia sobre a fabricação de cerveja no
            Brasil. Esse anúncio, publicado no Jornal do Commercio do Rio de Janeiro, dizia o seguinte:

            “Na Rua Matacavalos, número 90, e Rua Direita número 86, da Cervejaria Brazileira, vende-se cerveja, bebida
            acolhida favoravelmente e muito procurada. Essa saudável bebida reúne a barateza a um sabor agradável e à
            propriedade de conservar-se por muito tempo”.
        </p>
        <div class="img-body" style="text-align: center;">
            <img id="img-historiacerveja" src="imagens/historia-cerveja/historia-cerveja-13.jpg" alt="egicipios historia-cerveja">
            <figure>FONTE: cervejasdomundo.com | Fotos: Google</figure>
        </div>
        <span class="subtitulo">AS GRANDES CERVEJARIAS - </span>
        <span class="subtitulo">DO INÍCIO ÀS GRANDES CORPORAÇÕES</span>
        <p>
            A partir de 1836 começaram a nascer no Brasil, marcas de grande sucesso empresarial que são conhecidas até
            hoje, como Antarctica e Brahma, Bohemia entre outras. Em 1999, A Companhia de Bebidas das Américas (AmBev)
            foi fundada. É uma empresa de capital aberto produtora de bens de consumo do Brasil.
            Segundo dados da consultoria Economatica, a Ambev é a maior empresa da América Latina com um valor de
            mercado de U$120,1 bilhões, à frente da Ecopetrol e Petrobras3 . Nasceu da fusão entre a Antarctica e a
            Brahma.
        </p>
        <div class="img-body" style="text-align: center;">
            <img id="img-historiacerveja" src="imagens/historia-cerveja/historia-cerveja-16.jpg
            " alt="egicipios historia-cerveja">
            <figure>FONTE: cervejasdomundo.com | Fotos: Google</figure>
        </div>
        <span class="subtitulo">ASCENSÃO DAS ARTESANAIS</span>
        <p>
            As microcervejarias trouxeram para os brasileiros a opção de consumir produtos cervejeiros exclusivos e
            diferenciados com vários tipos, texturas, aromas e sabores. Muitas delas produzem suas cervejas seguindo a
            Reinheitsgebot (Lei da Pureza Alemã).
            As microcervejarias já são um setor consolidado na Europa e nos EUA, no Brasil começaram a surgir na década
            de 90. Em 2012 as cervejas especiais representavam 8% do mercado nacional da bebida em 2012 e encerraram
            2014 com uma participação de 11%, segundo o Sindicato Nacional da Indústria da Cerveja, que aponta a
            existência de 300 microcervejarias no País. A projeção é de que essa cota suba para 20% em 2020.
        </p>
        <div class="img-body" style="text-align: center;">
            <img id="img-historiacerveja" src="imagens/historia-cerveja/historia-cerveja-18.jpg
            " alt="egicipios historia-cerveja">
            <figure>FONTE: cervejasdomundo.com | Fotos: Google</figure>
        </div>
    </div>


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