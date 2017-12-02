<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>    
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
		<div class="collapse navbar-collapse" id="navbarsExampleDefault">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item">
					<a class="nav-link" href="CadastroDeMoradores.html">Morador</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="CadastroDeAtividade.html">Atividades</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="CadastroDeAviso.html">Avisos</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="AdicionaAta.html">Atas</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="CadastroDeEventos.html">Eventos</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link" href="Sugestao.html">Sugestões<span class="sr-only">(current)</span></a>
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
					<h3 class="display-4 text-center ">Sugestões</h3>
				</div>
			</div>

		<c:if test = "${not empty mensagem}">	
		<div class="alert alert-success" >
 			 <strong>Sucesso!</strong> <c:out value="${mensagem}"/>
		</div>
		</c:if>
		
		<div id="mensagens" class="alert alert-danger" style="display:none">

		</div>

		<form:form name="formsugestao
		" id="formsugestao" action="/vitrine/sugestao/cadastra" method="post" commandName= "sugestao">
			<fieldset>

					<div class="row">
					<div class="form-group col-md-12 col-sm-12">

				<div class="row">
				<div class="form-group col-md-12 col-sm-12">
						<button type="button" class="btn btn-info">Fazer sugestão</button>
				</div>
				</div>
				
				<form:input value="${sugestao.idSugestao}" type="hidden" path="idSugestao"/>
				
				<div class="row">
				<div class="form-group col-md-12 col-sm-12">
						<form:label for="email" path="idMorador">Id do morador:</form:label>
						<form:input value="${sugestao.idMorador}" type="text" class="form-control" path="idMorador" id="nome" maxlength="30" size="30" /> 
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="email" path="nomeMorador">Nome do morador:</form:label>
						<form:input value="${sugestao.nomeMorador}" type="text" class="form-control" path="nomeMorador" id="nome" maxlength="30" size="30" /> <!-- title="Informe um e-mail válido" --> 
						
					</div>
				</div>
				</div>
				
				<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="email" path="bloco">Bloco:</form:label>
						<form:input value="${sugestao.bloco}" type="text" class="form-control" path="bloco" id="nome" maxlength="30" size="30" /> <!-- title="Informe um e-mail válido" --> 
						
					</div>
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="email" path="apartamento">Apartamento:</form:label>
						<form:input value="${sugestao.apartamento}" type="text" class="form-control" path="apartamento" id="nome" maxlength="30" size="30" /> <!-- title="Informe um e-mail válido" --> 
						
					</div>
				</div>
				
				<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="email" path="descricaoSugestao">Sugestão:</form:label>
						<form:input value="${sugestao.descricaoSugestao}" type="text" class="form-control" path="descricaoSugestao" id="nome" maxlength="30" size="30" /> <!-- title="Informe um e-mail válido" --> 
						
					</div>
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="email" path="resposta">Resposta:</form:label>
						<form:input value="${sugestao.resposta}" type="text" class="form-control" path="resposta" id="nome" maxlength="30" size="30" /> <!-- title="Informe um e-mail válido" --> 
						
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<button type="submit" id="btsalvar" class="btn btn-success"><span class="oi oi-plus" title="icon plus" aria-hidden="true"></span> Salvar</button>
						<button type="button" class="btn btn-danger btlimpar"><span class="oi oi-trash" title="icon plus" aria-hidden="true"></span> Limpar</button>
					</div>
				</div>
				
				</div>
				</div>
			</fieldset>

		</form:form>

<table class="table table-sm">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Morador</th>
      <th scope="col">Bloco</th>
      <th scope="col">Apartamento</th>
      <th scope="col">Sugestão</th>
      <th scope="col">Resposta</th>
      <th scope="col">Opções</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${listaSugestao}" var="itemSugestao">
  		<tr>
  			<th scope="row">${itemSugestao.idSugestao}</th>
  			<td>${itemSugestao.nomeMorador}</td>
  			<td>${itemSugestao.bloco}</td>
  			<td>${itemSugestao.apartamento}</td>
  			<td>${itemSugestao.descricaoSugestao}</td>
  			<td>${itemSugestao.resposta}</td>
  			<td>
  				<a href="/vitrine/sugestao/altera/${itemSugestao.idSugestao}" class="btn btn-info">editar</a>
		      	<form:form name="formsugestao" id="sugestao" action="/vitrine/sugestao/deleta" method="post" commandName="sugestao">
		      			<form:input value="${itemSugestao.idSugestao}" type="hidden" path="idSugestao"/>
		      			<button type="submit" id="btsalvar" class="btn btn-danger"><span class="oi oi-plus" title="icon plus" aria-hidden="true"></span> Deletar</button>
		      	</form:form>
  		</tr>
  	</c:forEach>
  </tbody>
</table>

	</section>
	</div>
	
</body>
</html>