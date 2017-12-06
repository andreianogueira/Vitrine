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

<style>
.morador {
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
				<li class="nav-item active">
					<a class="nav-link" href="/vitrine/morador/formulario">Morador</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/vitrine/atividade/formulario">Atividades</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/vitrine/aviso/formulario">Avisos</a>
				</li>
				<li class="nav-item">
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
					<h3 class="display-4 text-center ">Cadastro de Moradores</h3>
				</div>
			</div>

<script>			
function myFunction() {
    var x = document.getElementById("cadastroDeMorador");
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
		
		<div id="mensagens" class="alert alert-danger" style="display:none"></div>
		

		<form:form name="formcliente" id="formcliente" action="/vitrine/morador/cadastra" method="post" modelAttribute= "morador">
			<br/>

				<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<button type="button" onclick="myFunction()" class="btn btn-info">Adicionar morador </button>
				</div>
				</div>
				
<div id="cadastroDeMorador" class="morador">
				<form:input value="${morador.idMorador}" type="hidden" path="idMorador"/>
				
				<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="email" path="nomeMorador">Nome morador:</form:label>
						<form:input value="${morador.nomeMorador}" type="text" class="form-control" path="nomeMorador" id="atividade" maxlength="30" size="30" /> <!-- title="Informe um e-mail válido" --> 
						
					</div>
				</div>


				<div class="row">
					<div class="form-group col-md-4 col-sm-4">
						<form:label for="nome" path="bloco">Bloco:</form:label>
						<form:input value="${morador.bloco}" type="text" class="form-control" path="bloco" name="descricao" id="descricao" maxlength="50" size="50" />
					</div>

					<div class="form-group col-md-4 col-sm-4">
						<form:label for="inputdefault" path="apartamento">Apartamento:</form:label>
						<form:input value="${morador.apartamento}" type="text" class="form-control dinheiro" path="apartamento" name="local" id="local" maxlength="50" size="50" />
					</div>
					<div class="form-group col-md-4 col-sm-4">
						<form:label path="telefone">Telefone:</form:label>
						<form:input value="${morador.telefone}" type="text" id="telefone" path="telefone" class="form-control" name="telefone" maxlength="14" />
					</div>
				</div>
				
				<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="email" path="email">Email:</form:label>
						<form:input value="${morador.email}" type="email" path="email" class="form-control" name="email" maxlength="30" size="30" title="Informe um e-mail válido" />
					</div>
				</div>
				
				<hr>
				
				
				<hr>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<button type="submit" id="btsalvar" class="btn btn-success"><span class="oi oi-plus" title="icon plus" aria-hidden="true"></span> Salvar</button>
						<button type="button" class="btn btn-danger btlimpar"><span class="oi oi-trash" title="icon plus" aria-hidden="true"></span> Limpar</button>
						<button type="button" class="btn btn-info">Adicionar Dependente</button>
					</div>
				</div>
</div>
			
		</form:form>
					
<table class="table table-sm">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nome</th>
      <th scope="col">Bloco</th>
      <th scope="col">Apartamento</th>
      <th scope="col">Telefone</th>
      <th scope="col">Email</th>
      <th scope="col">Opções</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${listaMorador}" var="itemMorador">
  		<tr>
  			<th scope="row">${itemMorador.idMorador}</th>
  			<td>${itemMorador.nomeMorador}</td>
  			<td>${itemMorador.bloco}</td>
  			<td>${itemMorador.apartamento}</td>
  			<td>${itemMorador.telefone}</td>
  			<td>${itemMorador.email}</td>
  			<td>
  				<a href="/vitrine/morador/altera/${itemMorador.idMorador}" class="btn btn-info">editar</a>
		      	<form:form name="formmorador" id="formmorador" action="/vitrine/morador/deleta" method="post" commandName="morador">
		      			<form:input value="${itemMorador.idMorador}" type="hidden" path="idMorador"/>
		      			<button type="submit" id="btsalvar" class="btn btn-danger"><span class="oi oi-plus" title="icon plus" aria-hidden="true"></span> Deletar</button>
		      	</form:form>
  		</tr>
  	</c:forEach>
  </tbody>
</table>
	</section>

</body>
</html>