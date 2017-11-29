<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
				<li class="nav-item active">
					<a class="nav-link" href="CadastroDeEventos.html">Eventos<span class="sr-only">(current)</span></a>
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
					<h3 class="display-4 text-center ">Eventos</h3>
				</div>
			</div>

		<c:if test = "${not empty mensagem}">	
		<div class="alert alert-success" >
 			 <strong>Sucesso!</strong> <c:out value="${mensagem}"/>
		</div>
		</c:if>
		
		<div id="mensagens" class="alert alert-danger" style="display:none">

		</div>

			<form:form name="formevento" id="formevento" action="cadastra" method="post" modelAttribute= "evento">
				<br/>

<table class="table table-sm">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nome</th>
      <th scope="col">Descrição</th>
      <th scope="col">Horário</th>
      <th scope="col">Data</th>
      <th scope="col">Preço</th>
      <th scope="col">Local</th>
      <th scope="col">Opções</th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach items="${listaEvento}" var="itemEvento">
  		<tr>
  			<th scope="row">${itemEvento.idEvento}</th>
  			<td>${itemEvento.nomeEvento}</td>
  			<td>${itemEvento.descricaoEvento}</td>
  			<td>${itemEvento.horarioEvento}</td>
  			<td>${itemEvento.dataEvento}</td>
  			<td>${itemEvento.precoEvento}</td>
  			<td>${itemEvento.localEvento}</td>
  		</tr>
  	</c:forEach>
  </tbody>
</table>		

<hr>	

					<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<button type="button" class="btn btn-info">Adicionar Evento</button>
				</div>
				</div>
				
				<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="email" path="nomeEvento">Nome:</form:label>
						<form:input type="text" class="form-control" path="nomeEvento" id="nome" maxlength="30" size="30"/>			
					</div>
				</div>

				<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="nome" path="descricaoEvento">Descrição:</form:label>
						<form:input type="text" class="form-control" name="descricao" path="descricaoEvento" id="descricao" maxlength="50" size="50"/>
					</div>
				</div>
				
				<div class="row">

					<div class="form-group col-md-4 col-sm-4">
						<form:label for="hora" path="horarioEvento">Horário:</form:label>
						<form:input type="text" class="form-control" path="horarioEvento" id="horario" name="horario" maxlength="25" size="25"/>
					</div>
					
					<div class="form-group col-md-4 col-sm-4">
						<form:label for="inputdefault" path="dataEvento">Data:</form:label>
						<form:input type="date" class="form-control data" name="dataproduto" path="dataEvento" id="dataproduto" maxlength="10" size="10"/>
					</div>

					<div class="form-group col-md-4 col-sm-4">
						<form:label for="inputdefault" path="precoEvento">Preço:</form:label>
						<form:input type="text" class="form-control dinheiro" name="valorevento" path="precoEvento" maxlength="14" size="14"/>
					</div>
					
				</div>
				
				<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="nome" path="localEvento">Local:</form:label>
						<form:input type="text" class="form-control" name="local" path="localEvento" id="local" maxlength="50" size="50"/>
					</div>
				</div>				

				<hr>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<button type="submit" id="btsalvar" class="btn btn-success"><span class="oi oi-plus" title="icon plus" aria-hidden="true"></span> Salvar</button>
						<button type="button" class="btn btn-danger btlimpar"><span class="oi oi-trash" title="icon plus" aria-hidden="true"></span> Limpar</button>
					</div>
				</div>
				
		</form:form>
	</section>
	</div>
</body>
</html>