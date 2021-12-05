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
<form action="Salvar" method="post">
	<c:if test="${contato.id !=null }">
		<input type="hidden" name="id" value="${contato.id}">
	</c:if>
	<table>
		<tr>
			<td>Nome:</td>
			<td><input type="text" name="nome" value="${contato.nome}">
		</tr>
		<tr>
			<td>Telefone:</td>
			<td><input type="text" name="telefone" value="${contato.telefone}"></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><input type="submit" value="Salvar"></td>
		</tr>
	</table>	
</form>	
</body>
</html>