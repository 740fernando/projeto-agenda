<%@ page import="model.Contato"%>
<%@ page import="java.util.Set" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
<title>Contatos</title>
</head>
<body>

<c:url var="novoContatoUrl" value="/Editar" />
<!-- Notacao EL -->	
<A href="${novoContatoUrl}">Criar Contato</A><BR><BR>

<table width="100%" border="1">
<tr>
	<td align="center"><strong>Nome</strong>
	<td align="center"><strong>Telefone</strong>
	<td></td>
</tr>

<c:choose>
	<c:when test="${empty(contatos)}">
		<td colspan="3" align="center">Nenhum contato cadastrado</td>
	</c:when>
	<c:otherwise>
	 <c:forEach var="c" items="${contatos}">
		 <tr>
		 	<c:url var="EditarContatoUrl" value="/Editar">
		 		<c:param name="id">${c.id}</c:param>
		 	</c:url>
		 	
		 	<c:url var="excluirContatoUrl" value="/Excluir">
		 		<c:param name="id">${c.id}</c:param>
		 	</c:url>
		 	
		 	<td align="center"><A href="${editarContatoUrl}">${c.nome}</A></td>
		 	<td align="center">${c.telefone}</td>
		 	<td align="center"><A href="${excluirContatoUrl}">Excluir</A></td>
		</tr>
	 </c:forEach>
   </c:otherwise> 			
</c:choose>	
</table>
</body>
</html>