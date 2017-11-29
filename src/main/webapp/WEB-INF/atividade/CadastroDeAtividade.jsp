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

		<c:if test = "${not empty mensagem}">	
		<div class="alert alert-success" >
 			 <strong>Sucesso!</strong> <c:out value="${mensagem}"/>
		</div>
		</c:if>

		<div id="mensagens" class="alert alert-danger" style="display:none">

		</div>

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
  	</tr>	
  	</c:forEach>
  </tbody>
</table>

<hr>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<button type="button" class="btn btn-info">Adicionar Atividade</button>
					</div>
				</div>

		<form:form name="formcliente" id="formcliente" action="cadastra" method="post" commandName="atividade">
			<br/>
			
				<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="email"  path="nomeAtividade">Atividade:</form:label>
						<form:input type="text" class="form-control" id="atividade" path="nomeAtividade" maxlength="30" size="30" /> 
					</div>
				</div>


				<div class="row">
					<div class="form-group col-md-12 col-sm-12">
						<form:label for="nome" path="descricaoAtividade">Descrição:</form:label>
						<form:input type="text" class="form-control" name="descricao" path="descricaoAtividade" id="descricao" maxlength="50" size="50" />
					</div>
				</div>

				
		
				<div class="row">
					<div class="form-group col-md-6 col-sm-6">
					<form:label for="cbLocal" path="faixaEtaria">Faixa etária:</form:label>
					<select id=cbLocal name=cbLocal path="faixaEtaria" class="form-control">
					    <option value="0"> </option>
					    <option value="1">0-4</option>
					    <option value="2">5-14</option>
					    <option value="3">15-21</option>
					    <option value="4">22-59</option>
					    <option value="5">60+</option>
						</select>
					</div>

					<div class="form-group col-md-6 col-sm-6">
						<form:label for="inputdefault" path="localAtividade">Local:</form:label>
						<form:input type="text" class="form-control dinheiro" name="local" path="localAtividade" id="local" maxlength="50" size="50" />
					</div>

				</div>

				<div class="row">

					<div class="form-group col-md-4 col-sm-4">
						<form:label for="hora" path="horarioAtividade">Horário:</form:label>
						<form:input type="text" class="form-control hora" name="horarioAtividade" path="horarioAtividade" id="horaatividade" maxlength="10" size="10" />
					</div>
					
					<div class="form-group col-md-4 col-sm-4">
						<form:label for="dia" path="diaSemana">Dia da semana:</form:label>
						<form:input type="text" id="dia" path="diaSemana" name="dia" class="form-control" maxlength="10" size="10" />
					</div>

					<div class="form-group col-md-4 col-sm-4">
						<form:label for="inputdefault" path="precoAtividade">Preço:</form:label>
						<form:input type="text" class="form-control dinheiro" path="precoAtividade" name="valorproduto" maxlength="14" size="14" />
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