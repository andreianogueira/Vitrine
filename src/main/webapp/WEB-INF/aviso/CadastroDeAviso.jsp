<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>VITRINE </title>

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
  <link rel="stylesheet" src="<c:url value="/js/jquery-ui-1.11.4.custom/jquery-ui.css"></c:url>">
  <script src="<c:url value="/js/jquery-ui-1.11.4.custom/jquery-ui.min.js"></c:url>" type="text/javascript"></script>
  <script src="<c:url value="/js/jquery-ui-1.11.4.custom/jquery-ui.js"></c:url>" type="text/javascript"></script>

  <link rel="stylesheet" src="<c:url value="/bootstrap/css/bootstrap.min.css"></c:url>">
  <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></c:url>" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="<c:url value="/bootstrap/js/bootstrap.min.js"></c:url>"></script>

</head>
<body>

	<nav class="navbar navbar-expand-md navbar-dark bg-dark">
		<a class="navbar-brand" href="home.html">VITRINE</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
		<div class="collapse navbar-collapse" id="navbarsExampleDefault">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item">
					<a class="nav-link" href="CadastroDeMoradores.html">Morador</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="CadastroDeAtividade.html">Atividades</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link" href="CadastroDeAviso.html">Avisos<span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="AdicionaAta.html">Atas</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="CadastroDeEventos.html">Eventos</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="Sugestao.html">Sugestões</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="ReservaEspaco.html">Espaços</a>
				</li>
			</ul>
		</div>
	</nav>

	<div id="main" class="container-fluid"><br>
	<section class="container-fluid"><br>
				
		<div class="jumbotron bg-warning">
				<div class="container">
					<h3 class="display-4 text-center ">Avisos</h3>
				</div>
			</div>
			
		<c:if test = "${not empty mensagem}">	
		<div class="alert alert-success" >
 			 <strong>Sucesso!</strong> <c:out value="${mensagem}"/>
		</div>
		</c:if>
		
		<div id="mensagens" class="alert alert-danger" style="display:none">

		</div>

		<form:form name="formcliente" id="formcliente" action="cadastra" method="post" commandName="aviso">
			<fieldset>
					
					
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Título</th>
      <th scope="col">Descrição</th>
      <th scope="col">Data</th>
    </tr>
  </thead>
  <tbody>
  </tbody>
</table>

<div class="row">
					<div class="col-md-12 col-sm-12">
						<button type="button" class="btn btn-info">Adicionar Aviso</button>
					</div>
				</div>
				
					<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="email" path="tituloAviso">Título:</form:label>
						<form:input type="text" class="form-control" path="tituloAviso" id="tituloAviso" maxlength="30" size="30"/>
						
					</div>
				</div>

				<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="nome" path="descricaoAviso">Descrição:</form:label>
						<form:input type="text" class="form-control" path="descricaoAviso" id="descricaoAviso" maxlength="50" size="50"/>
					</div>
				</div>
				
				<div class="form-group col-md-6 col-sm-6">
					<form:label for="inputdefault" path="data">Data:</form:label>
					<form:input type="date" class="form-control data" path="data" id="data" maxlength="10" size="10" />
				</div>

<hr>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<button type="submit" id="btsalvar" class="btn btn-success"><span class="oi oi-plus" title="icon plus" aria-hidden="true"></span> Salvar</button>
						<button type="button" class="btn btn-danger btlimpar"><span class="oi oi-trash" title="icon plus" aria-hidden="true"></span> Limpar</button>
					</div>
				</div>
			</fieldset>

		</form:form>

	</section>

</body>
</html>