<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<li class="nav-item active">
					<a class="nav-link" href="CadastroDeMoradores.html">Morador<span class="sr-only">(current)</span></a>
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
					<h3 class="display-4 text-center ">Reserva de espaços</h3>
				</div>
			</div>

		<c:if test = "${not empty mensagem}">	
		<div class="alert alert-success" >
 			 <strong>Sucesso!</strong> <c:out value="${mensagem}"/>
		</div>
		</c:if>
		
		<div id="mensagens" class="alert alert-danger" style="display:none">

		</div>

		<form:form name="formcliente" id="formcliente" action="cadastra" method="post" modelAttribute= "reserva">
			<br/>

					<fieldset>
			
				<table class="table table-sm">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Morador</th>
      <th scope="col">Bloco</th>
      <th scope="col">Apatamento</th>
      <th scope="col">Tipo de espaço</th>
      <th scope="col">Data</th>
      <th scope="col">Opções</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${listaReserva}" var="itemReserva">
  		<tr>
  			<th scope="row">${itemReserva.idReserva}</th>
  			<td>${itemReserva.nomeMorador}</td>
  			<td>${itemReserva.bloco}</td>
  			<td>${itemReserva.apartamento}</td>
  			<td>${itemReserva.tipoEspaco}</td>
  			<td>${itemReserva.dataReserva}</td>
  		</tr>
  	</c:forEach>
  </tbody>
</table>



	<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<button type="button" class="btn btn-info">Reservar Espaço</button>
				</div>
				</div>
				
				<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="email" path="idMorador">Id do morador:</form:label>
						<form:input type="text" class="form-control" path="idMorador" id="nome" maxlength="30" size="30" /> 
						
					</div>
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="email" path="nomeMorador">Nome do morador:</form:label>
						<form:input type="text" class="form-control" path="nomeMorador" id="nome" maxlength="30" size="30" /> 
						
					</div>
				</div>
				
				<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="email" path="bloco">Bloco:</form:label>
						<form:input type="text" class="form-control" path="bloco" id="nome" maxlength="30" size="30" /> <!-- title="Informe um e-mail válido" --> 
						
					</div>
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="email" path="apartamento">Apartamento:</form:label>
						<form:input type="text" class="form-control" path="apartamento" id="nome" maxlength="30" size="30" /> <!-- title="Informe um e-mail válido" --> 
						
					</div>
				</div>
				
<div class="row">
					<div class="form-group col-md-6 col-sm-6">
					<form:label for="cbLocal" path="tipoEspaco">Tipo de espaço:</form:label>
					<select id=cbLocal name=cbLocal class="form-control">
					    <option value="0"></option>
					    <option value="1">Churrasqueira</option>
					    <option value="2">Salão de festas</option>
						</select>
				</div>
  
  
<div class="form-group col-md-6 col-sm-6">
	<form:label for="inputdefault" path="dataReserva">Data:</form:label>
	<form:input type="date" class="form-control data" path="dataReserva" name="dataproduto" id="dataproduto" maxlength="10" size="10" />
</div>

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
</div>	
</body>
</html>