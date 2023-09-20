<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="br.edu.exemplo.model.Aluno"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exclusão | JavaSchool</title>
<link rel="icon" type="image/svg+xml" href="imgs/iconfundobranco.svg">
<link
	href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
</head>
<body style="background-color: var(--primary-color)"
	class="flex items-center justify-center min-h-screen bg-primary-color">

	<jsp:useBean id="aluno" scope="session"
		class="br.edu.exemplo.model.Aluno" />
	<%
		SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
		%>
	<form action="ServletAluno?cmd=excluir" method="post" class="mb-4">
		<div class="text-center flex items-center justify-center mb-8">
			<svg width="22" height="25" viewBox="0 0 22 25" fill="none"
				xmlns="http://www.w3.org/2000/svg">
  <path
					d="M19.75 6L18.6658 21.1781C18.5724 22.4864 17.4838 23.5 16.1722 23.5H5.8278C4.5162 23.5 3.4276 22.4864 3.33415 21.1781L2.25 6M8.5 11V18.5M13.5 11V18.5M14.75 6V2.25C14.75 1.55964 14.1904 1 13.5 1H8.5C7.80964 1 7.25 1.55964 7.25 2.25V6M1 6H21"
					stroke="white" stroke-width="1.5" stroke-linecap="round"
					stroke-linejoin="round" />
</svg>
		</div>
		<h2 class="text-xl font-semibold text-center mb-4 text-white">
			Deseja <span class="text-white font-bold underline">excluir</span>
			o(a) Aluno(a),
		</h2>
		<h3 class="text-white text-3xl font-semibold text-center mb-4"><%=aluno.getNome()%></h3>
		<div class="mb-4 flex">
			<div class="w-1/2 pr-2">
				<label for="txtRa" class="block font-semibold text-white">RA</label>
				<input type="text" id="txtRa" name="txtRa"
					value="<%=aluno.getRa()%>" readonly="readonly"
					class="w-full px-4 py-2 border rounded-lg bg-gray-100" />
			</div>
			<div>
				<label for="txtNome" class="block font-semibold text-white">Nome</label>
				<input type="text" id="txtNome" name="txtNome"
					value="<%=aluno.getNome()%>" readonly="readonly"
					class="w-full px-4 py-2 border rounded-lg bg-gray-200" />
			</div>
		</div>
		<div class="mb-4">
			<label for="txtEmail" class="block font-semibold text-white">E-mail</label>
			<input type="text" id="txtEmail" name="txtEmail"
				value="<%=aluno.getEmail()%>" readonly="readonly"
				class="w-full px-4 py-2 border rounded-lg bg-gray-200" />
		</div>
		<div class="mb-4">
			<label for="txtEndereco" class="block font-semibold text-white">Endereço</label>
			<input type="text" id="txtEndereco" name="txtEndereco"
				value="<%=aluno.getEndereco()%>" readonly="readonly"
				class="w-full px-4 py-2 border rounded-lg bg-gray-200" />
		</div>
		<div class="mb-4 grid grid-cols-2 gap-4">
			<div>
				<label for="txtData" class="block font-semibold text-white">Data
					de Nascimento</label> <input type="text" id="txtData" name="txtData"
					value="<%=data.format(aluno.getDataNascimento())%>"
					readonly="readonly"
					class="w-full px-4 py-2 border rounded-lg bg-gray-200" />
			</div>
			<div>
				<label for="txtIdade" class="block font-semibold text-white">Período</label>
				<input type="text" id="txtIdade" name="txtIdade"
					value="<%=aluno.getPeriodo()%>" readonly="readonly"
					class="w-full px-4 py-2 border rounded-lg bg-gray-200" />
			</div>
		</div>
		<div class="flex justify-center mt-10">
			<button type="submit"
				class="bg-red-500 hover:bg-red-600 text-white font-bold py-3 px-6 rounded-lg cursor-pointer flex items-center transition-transform transform hover:translate-y-1">
				<svg width="22" height="25" viewBox="0 0 22 25" fill="none"
					xmlns="http://www.w3.org/2000/svg" class="w-6 h-6 mr-2">
                        <path
						d="M19.75 6L18.6658 21.1781C18.5724 22.4864 17.4838 23.5 16.1722 23.5H5.8278C4.5162 23.5 3.4276 22.4864 3.33415 21.1781L2.25 6M8.5 11V18.5M13.5 11V18.5M14.75 6V2.25C14.75 1.55964 14.1904 1 13.5 1H8.5C7.80964 1 7.25 1.55964 7.25 2.25V6M1 6H21"
						stroke="white" stroke-width="1.5" stroke-linecap="round"
						stroke-linejoin="round" />
                    </svg>
				Confirmar Exclusão
			</button>
		</div>
		<div class="flex justify-center mt-8">
		<a href="html/admin.html" class="text-white hover:underline">Voltar</a>
		</div>
	</form>


</body>
</html>
