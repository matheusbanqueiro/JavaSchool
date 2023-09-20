<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Consulta Aluno | JavaCode Institute</title>
    <link rel="icon" type="image/svg+xml" href="images/icon.svg">

<link
	href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css"
	rel="stylesheet">
</head>
<body class="bg-gray-900 text-white">
	<div class="container mx-auto p-4"> <!-- Ajustei o tamanho do container -->
		<img class="mx-auto h-auto w-80 logo" src="images/logo.svg" alt="Logo" />
	
		<h2 class="text-2xl font-semibold text-center mb-6">Consulta de Aluno</h2>
		<jsp:useBean id="aluno" scope="session"
			class="br.edu.exemplo.model.Aluno" />
		<%
		SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
		%>
		<form class="bg-gray-800 shadow-md rounded px-8 pt-6 pb-8 mb-4">
			<div class="grid grid-cols-2 gap-4">
				<div class="mb-4">
					<label class="block text-gray-400">RA:</label> <input type="text"
						maxlength="60" name="txtRa" value="<%=aluno.getRa()%>"
						readonly="readonly"
						class="w-full px-4 py-2 bg-gray-700 border rounded-lg text-white">
				</div>
				<div class="mb-4">
					<label class="block text-gray-400">Nome:</label> <input type="text"
						maxlength="60" name="txtNome" value="<%=aluno.getNome()%>"
						readonly="readonly"
						class="w-full px-4 py-2 bg-gray-700 border rounded-lg text-white">
				</div>
				<div class="mb-4">
					<label class="block text-gray-400">E-mail:</label> <input
						type="text" maxlength="60" name="txtEmail"
						value="<%=aluno.getEmail()%>" readonly="readonly"
						class="w-full px-4 py-2 bg-gray-700 border rounded-lg text-white">
				</div>
				<div class="mb-4">
					<label class="block text-gray-400">Nascimento (dd/mm/aaaa):</label>
					<input type="text" maxlength="60" name="txtData"
						value="<%=data.format(aluno.getDataNascimento())%>"
						readonly="readonly"
						class="w-full px-4 py-2 bg-gray-700 border rounded-lg text-white">
				</div>
				<div class="mb-4">
					<label class="block text-gray-400">Endereço:</label> <input
						type="text" maxlength="60" name="txtEndereco"
						value="<%=aluno.getEndereco()%>" readonly="readonly"
						class="w-full px-4 py-2 bg-gray-700 border rounded-lg text-white">
				</div>
				<div class="mb-4">
					<label class="block text-gray-400">Período:</label> <input
						type="text" maxlength="60" name="txtIdade"
						value="<%=aluno.getPeriodo()%>" readonly="readonly"
						class="w-full px-4 py-2 bg-gray-700 border rounded-lg text-white">
				</div>
			</div>
			<div class="justify-center mt-6 flex gap-x-6">
				<a
					class="mt-4 border border-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-lg inline-flex items-center transition-transform transform hover:translate-y-1"
					href="html/admin.html">
					<svg xmlns="http://www.w3.org/2000/svg" fill="none"
						viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
						class="w-5 h-5 mr-2">
						<path stroke-linecap="round" stroke-linejoin="round"
							d="M15.75 19.5L8.25 12l7.5-7.5" />
					</svg>
					Sair
				</a>
				<a
					class="mt-4 border border-purple-500 hover:bg-purple-600 text-white font-bold py-2 px-4 rounded-lg inline-flex items-center transition-transform transform hover:translate-y-1"
			onclick="window.location.href = 'html/consultar.html';">
			<svg class="w-5 h-5 mr-2 svg-rotate hover:rotate-45 transition-transform" fill="none" stroke="currentColor"
				viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
				<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
					d="M9 17a7 7 0 100-14 7 7 0 000 14z"></path>
				<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20 20l-4.35-4.35"></path>
			</svg>
			Consultar
		</a>
			</div>
		</form>
	</div>
</body>
</html>
