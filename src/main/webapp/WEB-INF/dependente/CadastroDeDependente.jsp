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
.dependente {
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
					<h3 class="display-4 text-center ">Cadastro de Dependentes</h3>
				</div>
			</div>

<script>			
function myFunction() {
    var x = document.getElementById("cadastroDeDependente");
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
		

		<form:form name="formcliente" id="formcliente" action="/vitrine/dependente/cadastra" method="post" modelAttribute= "dependente">
			<br/>
		
		<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<button type="button" onclick="myFunction()" class="btn btn-info">Adicionar dependente</button>
		</div>
		</div>
		
<div id="cadastroDeDependente" class="dependente">
			<form:input value="${dependente.idDependente}" type="hidden" path="idDependente"/>
			
			<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="email" path="nomeDependente">Nome:</form:label>
						<form:input value="${dependente.nomeDependente}" type="text" class="form-control" path="nomeDependente" id="atividade" maxlength="30" size="30" /> 
					</div>
				</div>
				
			<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="email" path="idMorador">idMorador:</form:label>
						<form:input  value="${dependente.idMorador}" type="text" class="form-control" path="idMorador" id="atividade" maxlength="30" size="30" /> 
					</div>
				</div>
				
				
				<div class="row">
					<div class="form-group col-md-6 col-sm-6">
						<form:label for="nome" path="parentesco">Parentesco:</form:label>
						<form:input value="${dependente.parentesco}" type="text" class="form-control" path="parentesco" name="descricao" id="descricao" maxlength="50" size="50" />
					</div>
					
					<div class="form-group col-md-6 col-sm-6">
						<form:label path="telefone">Telefone:</form:label>
						<form:input value="${dependente.telefone}" type="text" id="telefone" path="telefone" class="form-control" name="telefone" maxlength="14" />
					</div>
				</div>
				
				<hr>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<button type="submit" id="btsalvar" class="btn btn-success"><span class="oi oi-plus" title="icon plus" aria-hidden="true"></span> Salvar</button>
						<button type="button" class="btn btn-danger btlimpar"><span class="oi oi-trash" title="icon plus" aria-hidden="true"></span> Limpar</button>
					</div>
				</div>
</div>		
	</form:form>
	
	
		<table class="table table-sm">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nome</th>
      <th scope="col">Parentesco</th>
      <th scope="col">Telefone</th>
      <th scope="col">Opções</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${listaDependente}" var="itemDependente">
  		<tr>
  			<th scope="row">${itemDependente.idDependente}</th>
  			<td>${itemDependente.nomeDependente}</td>
  			<td>${itemDependente.parentesco}</td>
  			<td>${itemDependente.telefone}</td>
  			<td>
  			<a href="/vitrine/dependente/altera/${itemDependente.idDependente}" class="btn btn-info">editar</a>
		      	<form:form name="formdependente" id="formdependente" action="/vitrine/dependente/deleta" method="post" commandName="dependente">
		      			<form:input value="${itemDependente.idDependente}" type="hidden" path="idDependente"/>
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