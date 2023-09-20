<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Alterar | JavaCode Institute</title>
<link
	href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css"
	rel="stylesheet">
<link rel="icon" type="image/svg+xml" href="imgs/iconfundobranco.svg">
<link rel="stylesheet" href="css/style.css" />
</head>

<body
	class="text-white min-h-screen flex items-center justify-center"
	style="background-color: var(--primary-color)">
	
		<jsp:useBean id="aluno" scope="session"
			class="br.edu.exemplo.model.Aluno" />
		<form action="ServletAluno?cmd=atualizar" method="post">
			<div class="text-center flex items-center justify-center mb-8">
				<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
					xmlns="http://www.w3.org/2000/svg">
  					<path
						d="M1 1V6H1.58152M16.9381 8C16.446 4.05369 13.0796 1 9 1C5.64262 1 2.76829 3.06817 1.58152 6M1.58152 6H6M17 17V12H16.4185M16.4185 12C15.2317 14.9318 12.3574 17 9 17C4.92038 17 1.55399 13.9463 1.06189 10M16.4185 12H12"
						stroke="white" stroke-width="2" stroke-linecap="round"
						stroke-linejoin="round" />
				</svg>
			</div>

			<h2 class="text-xl font-semibold text-center mb-4 text-white">
				Deseja <span class="text-white font-bold underline">alterar</span>
				o(a) Aluno(a),
			</h2>
			<h3 class="text-white text-2xl font-semibold text-center mb-4"><%=aluno.getNome()%></h3>

			<div class="mb-4 flex">
			<div class="w-1/2 pr-2">
				<label for="txtRa" class="block font-semibold text-white">RA</label>
				<input type="text" id="txtRa" name="txtRa"
					value="<%=aluno.getRa()%>" readonly="readonly"
					class="w-full px-4 py-2 border rounded-lg bg-gray-200" />
			</div>
			<div>
				<label for="txtNome" class="block font-semibold text-white">Nome</label>
				<input type="text" id="txtNome" name="txtNome"
					value="<%=aluno.getNome()%>" readonly="readonly"
					class="w-full px-4 py-2 border rounded-lg bg-gray-200" />
			</div>
		</div>

			<div class="mb-4 flex">
				<div class="w-1/2 pr-2">
					<label for="txtEmail" class="block font-semibold mb-2">Email</label>
					<input type="email" id="txtEmail" name="txtEmail"
						class="w-full px-4 py-2 border rounded-lg bg-gray-200"
						value="<%=aluno.getEmail()%>">
				</div>
				<div class="w-1/2 pl-2">
					<label for="txtEndereco" class="block font-semibold mb-2">Endereço</label>
					<input type="text" id="txtEndereco" name="txtEndereco"
						class="w-full px-4 py-2 border rounded-lg bg-gray-200"
						value="<%=aluno.getEndereco()%>">
				</div>
			</div>

			<div class="mb-4">
				<label for="txtData" class="block font-semibold mb-2">Data
					de Nascimento</label> <input type="date" id="txtData" name="txtData"
					class="w-full px-4 py-2 border rounded-lg bg-gray-200" required>
			</div>

			<div class="mb-4">
				<label for="cmbPeriodo" class="block font-semibold mb-2">Período</label>
				<select id="cmbPeriodo" name="cmbPeriodo"
					class="w-full px-4 py-2 border rounded-lg bg-gray-200" required>
					<option>Manhã</option>
					<option>Tarde</option>
					<option>Noite</option>
				</select>
			</div>

			<div class="text-center">
				<button type="submit" value="Enviar"
					class="bg-green-500 hover:bg-green-600 text-white font-bold py-3 px-6 rounded-lg w-full">
					Alterar</button>
				<a
					class="mt-4 bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-lg inline-flex items-center transition-transform transform hover:translate-y-1"
					href="html/admin.html"> <svg xmlns="http://www.w3.org/2000/svg"
						fill="none" viewBox="0 0 24 24" stroke-width="1.5"
						stroke="currentColor" class="w-5 h-5 mr-2">
                        <path stroke-linecap="round"
							stroke-linejoin="round" d="M15.75 19.5L8.25 12l7.5-7.5" />
                    </svg> Sair
				</a>
			</div>
		</form>
	
</body>

</html>
