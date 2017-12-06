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

<style>
.atividade {
    display: none;
}
</style>

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
				<li class="nav-item active">
					<a class="nav-link" href="CadastroDeAtividade.html">Atividades<span class="sr-only">(current)</span></a>
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
					<h3 class="display-4 text-center ">Atividades</h3>
				</div>
			</div>

<script>			
function myFunction() {
    var x = document.getElementById("cadastroDeAtividade");
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

<hr>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<button type="button" onclick="myFunction()" class="btn btn-info">Adicionar Atividade</button>
					</div>
				</div>

		<form:form name="formatividade" id="formatividade" action="/vitrine/atividade/cadastra" method="post" commandName="atividade">
			<br/>

<div id="cadastroDeAtividade" class="atividade">			
			<form:input value="${atividade.idAtividade}" type="hidden" path="idAtividade"/>
			
				<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="email"  path="nomeAtividade">Atividade:</form:label>
						<form:input value="${atividade.nomeAtividade}" type="text" class="form-control" id="atividade" path="nomeAtividade" maxlength="30" size="30" /> 
					</div>
				</div>

				
				<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="nome" path="descricaoAtividade">Descrição:</form:label>
						<form:input value="${atividade.descricaoAtividade}" type="text" class="form-control" name="descricao" path="descricaoAtividade" id="descricao" maxlength="50" size="50" />
					</div>
				</div>

				
		
				<div class="row">
					<div class="form-group col-md-6 col-sm-6">
					<form:label for="cbLocal" path="faixaEtaria">Faixa etária:</form:label>
					<select id=cbLocal name=cbLocal value="${atividade.faixaEtaria}" path="faixaEtaria" class="form-control">
					    <option value="0"> </option>
					    <option value="0-4">0-4</option>
					    <option value="5-14">5-14</option>
					    <option value="15-21">15-21</option>
					    <option value="22-59">22-59</option>
					    <option value="60+">60+</option>
						</select>
					</div>

					<div class="form-group col-md-6 col-sm-6">
						<form:label for="inputdefault" path="localAtividade">Local:</form:label>
						<form:input value="${atividade.localAtividade}" type="text" class="form-control dinheiro" name="local" path="localAtividade" id="local" maxlength="50" size="50" />
					</div>

				</div>

				<div class="row">

					<div class="form-group col-md-4 col-sm-4">
						<form:label for="hora" path="horarioAtividade">Horário:</form:label>
						<form:input value="${atividade.horarioAtividade}" type="text" class="form-control hora" name="horarioAtividade" path="horarioAtividade" id="horaatividade" maxlength="10" size="10" />
					</div>
					
					<div class="form-group col-md-4 col-sm-4">
						<form:label for="dia" path="diaSemana">Dia da semana:</form:label>
						<form:input value="${atividade.diaSemana}" type="text" id="dia" path="diaSemana" name="dia" class="form-control" maxlength="10" size="10" />
					</div>

					<div class="form-group col-md-4 col-sm-4">
						<form:label for="inputdefault" path="precoAtividade">Preço:</form:label>
						<form:input value="${atividade.precoAtividade}" type="text" class="form-control dinheiro" path="precoAtividade" name="valorproduto" maxlength="14" size="14" />
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
      <th scope="col">Atividade</th>
      <th scope="col">Descrição</th>
      <th scope="col">Faixa etária</th>
      <th scope="col">Local</th>
      <th scope="col">Horário</th>
      <th scope="col">Dia da semana</th>
      <th scope="col">Preço</th>
      <th scope="col">Opções</th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach items="${listaAtividade}" var="itemAtividade">
  	<tr>
  		<th scope="row">${itemAtividade.idAtividade}</th>
  		<td>${itemAtividade.nomeAtividade}</td>
  		<td>${itemAtividade.descricaoAtividade}</td>
  		<td>${itemAtividade.faixaEtaria}</td>
  		<td>${itemAtividade.localAtividade}</td>
  		<td>${itemAtividade.horarioAtividade}</td>
  		<td>${itemAtividade.diaSemana}</td>
  		<td>${itemAtividade.precoAtividade}</td>
  		<td>
  		<a href="/vitrine/atividade/altera/${itemAtividade.idAtividade}" class="btn btn-info">editar</a>
		      	<form:form name="formatividade" id="formatividade" action="/vitrine/atividade/deleta" method="post" commandName="atividade">
		      			<form:input value="${itemAtividade.idAtividade}" type="hidden" path="idAtividade"/>
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