<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VITRINE</title>

<!-- LINK PARA A BIBLIOTECA JQUERY -->
  <!-- <script src="/js/jquery-3.2.1.min.js" type="text/javascript"></script> -->
  <script src="<c:url value="/js/jquery-3.2.1.min.js"></c:url>" type="text/javascript"></script>

  <!--LINK PARA O JQUERY MASKED INPUT -->
  <!--  <script src="/js/jquery-maskedinput/src/jquery.maskedinput.js" type="text/javascript"></script> -->
  <script src="<c:url value="/js/jquery-maskedinput/src/jquery.maskedinput.js"></c:url>" type="text/javascript"></script>

  <!--LINK PARA O JQUERY VALIDATION -->
  <script src="<c:url value="/js/jquery-validation/jquery.validate.js"></c:url>" type="text/javascript"></script>

  <!--LINK PARA O JQUERY MASK MONEY -->
  <script src="<c:url value="/js/jquery-maskmoney/jquery.maskmoney.js"></c:url>" type="text/javascript"></script>

  <!--LINK PARA O JQUERY-UI - CALENDÁRIO - Fonte: https://jqueryui.com/ -->
  <link rel="stylesheet" href="<c:url value="/js/jquery-ui-1.11.4.custom/jquery-ui.css"></c:url>"></link>
  <script src="<c:url value="/js/jquery-ui-1.11.4.custom/jquery-ui.min.js"></c:url>" type="text/javascript"></script>
  <script src="<c:url value="/js/jquery-ui-1.11.4.custom/jquery-ui.js"></c:url>" type="text/javascript"></script>

  <link rel="stylesheet" href="<c:url value="/bootstrap/css/bootstrap.min.css"></c:url>"></link>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="<c:url value="/bootstrap/js/bootstrap.min.js"></c:url>"></script>

</head>
<body>

	<nav class="navbar navbar-expand-md navbar-dark bg-dark">
		<a class="navbar-brand" href="home.html">VITRINE</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
		</button>
    	<ul class="navbar-nav ml-auto">
	    	<li>
	    		<a class="nav-link" href="#">Bem-vindo: <security:authentication property="principal.username"/></a>
	    	</li>
	    	<li>
	    		<a class="nav-link" href="/vitrine/logout">SAIR</a>
	    	</li>
    	</ul>
	</nav>
	
	<div id="main" class="container-fluid"><br>
	<section class="container-fluid"><br>


		<div class="jumbotron bg-warning">
				<div class="container">
					<h3 class="display-4 text-center ">VITRINE</h3>
				</div>
			</div>

		<div id="mensagens" class="alert alert-danger" style="display:none">

		</div>

		<form name="formcliente" id="formcliente" action="" method="post">
			<fieldset>
			
		<div id="botao" class=text-center>
			<style>
            .pequeno {
                width: 20%;
            }

            .medio {
                width: 40%;
            }
        </style>
			<button type="button" onclick="location.href='morador/formulario'" class="btn btn-dark medio">Morador</button> 
			<button type="button" onclick="location.href='atividade/formulario'" class="btn btn-dark medio">Atividade</button><br><br>
			<button type="button" onclick="location.href='aviso/formulario'" class="btn btn-dark medio">Avisos</button>
			<button type="button" onclick="location.href='ata/formulario'" class="btn btn-dark medio">Atas</button><br><br>
			<button type="button" onclick="location.href='evento/formulario'" class="btn btn-dark medio">Eventos</button>
			<button type="button" onclick="location.href='sugestao/formulario'" class="btn btn-dark medio">Sugestões</button><br><br>
			<button type="button" onclick="location.href='reserva/formulario'" class="btn btn-dark medio">Espaços</button>
		</div>
		</fieldset>
		</form>
		</section>
		</div>
		
</body>
</html>