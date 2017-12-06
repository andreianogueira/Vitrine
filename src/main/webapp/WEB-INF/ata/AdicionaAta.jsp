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

<style>
.p {
    display: none;
}
</style>

</head>
<body>

<nav class="navbar navbar-expand-md navbar-dark bg-dark">
		<a class="navbar-brand" href="/vitrine/home.jsp">VITRINE</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
		<div class="collapse navbar-collapse" id="navbarsExampleDefault">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item">
					<a class="nav-link" href="/vitrine/morador/formulario">Morador</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/vitrine/atividade/formulario">Atividades</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/vitrine/aviso/formulario">Avisos</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link" href="/vitrine/ata/formulario" >Atas<span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/vitrine/evento/formulario">Eventos</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/vitrine/sugestao/formulario">Sugestões</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/vitrine/reserva/formulario">Espaços</a>
				</li>
			</ul>
		</div>
	</nav>
	
	<div id="main" class="container-fluid"><br>
	<section class="container-fluid"><br>


		<div class="jumbotron bg-warning">
				<div class="container">
					<h3 class="display-4 text-center ">Atas</h3>
				</div>
			</div>

<script>			
function myFunction() {
    var x = document.getElementById("adicionaAta");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}
</script>
			
			<c:if test = "${not empty mensagem}">	
		<div class="alert alert-success" >
 			 <strong>Sucesso!</strong> <c:out value="${mensagem}"/>
		</div>
		</c:if>

		<div id="mensagens" class="alert alert-danger" style="display:none">

		</div>

		<form:form name="formcliente" id="formcliente" action="/vitrine/ata/cadastra" method="post" commandName="ata">
			<fieldset>		

<hr>	


					<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<button type="button" onclick="myFunction()" class="btn btn-info">Atas</button>
				</div>
				</div>
				
<div id="adicionaAta" class="p">				
				
				<form:input value="${ata.idAta}" type="hidden" path="idAta"/>
				
				<div class="row">
					<div class="form-group col-md-6 col-sm-6">
						<form:label for="email" path="tipoReuniao">Tipo de Reunião:</form:label>
						<form:input value="${ata.tipoReuniao}" type="text" class="form-control" path="tipoReuniao" id="nome" maxlength="30" size="30"/>
						
					</div>
			
					<div class="form-group col-md-6 col-sm-6">
						<form:label for="nome" path="nomeAta">Ata:</form:label>
						<form:input value="${ata.nomeAta}" type="text" class="form-control" path="nomeAta" name="descricao" id="descricao" maxlength="50" size="50" />
					</div>
				</div>
				
					<div class="row">
					<div class="form-group col-md-6 col-sm-6">
						<form:label for="inputdefault" path="dataReuniao">Data:</form:label>
						<form:input value="${ata.dataReuniao}" type="date" class="form-control data" path="dataReuniao" name="dataproduto" id="dataproduto" maxlength="10" size="10" />
				</div>
				</div>
				
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<button type="submit" id="btsalvar" class="btn btn-success"><span class="oi oi-plus" title="icon plus" aria-hidden="true"></span> Salvar</button>
						<button type="button" class="btn btn-danger btlimpar"><span class="oi oi-trash" title="icon plus" aria-hidden="true"></span> Limpar</button>
					</div>
				</div>
</div>
			</fieldset>

		</form:form>
</div>	
<br><br>
<table class="table table-sm">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Tipo Reunião</th>
      <th scope="col">Ata</th>
      <th scope="col">Data</th>
      <th scope="col">Opções</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${listaAta}" var="itemAta">
  	<tr>
  		<th scope="row">${itemAta.idAta}</th>
  		<td>${itemAta.tipoReuniao}</td>
  		<td>${itemAta.nomeAta}</td>
  		<td>${itemAta.dataReuniao}</td>
  		<td>
		      	<a href="/vitrine/ata/altera/${itemAta.idAta}" class="btn btn-info">editar</a>
		      	<form:form name="formata" id="formata" action="/vitrine/ata/deleta" method="post" commandName="ata">
		      			<form:input value="${itemAta.idAta}" type="hidden" path="idAta"/>
		      			<button type="submit" id="btsalvar" class="btn btn-danger"><span class="oi oi-plus" title="icon plus" aria-hidden="true"></span> Deletar</button>
		      	</form:form>
  	</tr>
  </c:forEach>
  </tbody>
</table>

	</section>

</body>
</html>