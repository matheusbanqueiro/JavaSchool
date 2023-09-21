<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.edu.exemplo.model.Aluno"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Lista de Alunos | JavaSchool</title>
<link rel="icon" type="image/svg+xml" href="imgs/iconfundobranco.svg">
<link
	href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>

</head>

<body style="background-color: var(--secondary-color)" class="sans">
	<div style="background-color: var(--primary-color)"
		class="bg-dark p-6  text-center">
		<div class="flex flex-col items-center justify-center">
			<a
          href="html/admin.html"
          class="mb-8 text-white text-xl font-semibold underline-none transform scale-100 hover:scale-105 transition-transform"
        >
          <svg
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 24 24"
            stroke-width="1.5"
            stroke="currentColor"
            class="w-6 h-6 inline-block mr-2"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              d="M19.5 12h-15m0 0l6.75 6.75M4.5 12l6.75-6.75"
            />
          </svg>
          Voltar
        </a>
		
		<h1 class="mt-8 text-4xl text-white font-semibold">Lista de Alunos</h1>
		</div>
	</div>
	<div class="py-4 flex flex-col items-center justify-center">
		<div class="relative mb-4">
			<input onkeyup="filtrarAlunos()" type="text" id="txtPesquisa"
				placeholder="Pesquise por Ra ou Nome"
				class="w-full px-12 py-2 text-sm text-gray-900 placeholder-gray-400 border rounded-full bg-gray-50 border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:text-white dark:border-gray-600 dark:focus:ring-blue-500 dark:focus:border-blue-500">
			<button type="submit" class="absolute right-0 top-0 mt-2 mr-3">
				<svg class="w-4 h-4 text-gray-500 dark:text-gray-400"
					aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
					viewBox="0 0 20 20">
                <path stroke="currentColor" stroke-linecap="round"
						stroke-linejoin="round" stroke-width="2"
						d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z" />
            </svg>
			</button>
		</div>
		
	</div>


<div class="flex flex-col items-center justify-center w-full">
			<div style="background-color: var(--primary-color)"
				class="rounded-lg p-4 shadow-md flex items-center text-white">
				<svg xmlns="http://www.w3.org/2000/svg" fill="none"
					viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
					class="w-8 h-8 mr-2">
                <path stroke-linecap="round" stroke-linejoin="round"
						d="M15.75 6a3.75 3.75 0 11-7.5 0 3.75 3.75 0 017.5 0zM4.501 20.118a7.5 7.5 0 0114.998 0A17.933 17.933 0 0112 21.75c-2.676 0-5.216-.584-7.499-1.632z" />
            </svg>
            <div class="text-right">
				<p class="text-lg font-bold">Cadastrados</p>
				<span id="contadorAlunos" class="text-lg font-semibold">10</span>
			</div>
		</div>
		
	<div class="container mx-auto mt-8 p-8">
		<div class="bg-dark shadow-lg rounded-lg overflow-x-auto">
			<table  id="tabelaAlunos" class="min-w-full divide-y divide-gray-500 text-gray-300">
				<thead style="background-color: var(--primary-color)"
					class="bg-gray-700">
					<tr>
						<th scope="col"
							class="px-6 py-3 text-left text-xs font-semibold uppercase tracking-wider">
							RA</th>
						<th scope="col"
							class="px-6 py-3 text-left text-xs font-semibold uppercase tracking-wider">
							Nome</th>
						<th scope="col"
							class="px-6 py-3 text-left text-xs font-semibold uppercase tracking-wider">
							Endereço</th>
						<th scope="col"
							class="px-6 py-3 text-left text-xs font-semibold uppercase tracking-wider">
							E-mail</th>
						<th scope="col"
							class="px-6 py-3 text-left text-xs font-semibold uppercase tracking-wider">
							Nascimento</th>
						<th scope="col"
							class="px-6 py-3 text-left text-xs font-semibold uppercase tracking-wider">
							Período</th>
						<th scope="col"
							class="px-6 py-3 text-left text-xs font-semibold uppercase tracking-wider">
							Ações</th>
					</tr>
				</thead>
				<tbody style="color: var(--primary-color)">
					<%
					SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
					List<Aluno> lista = new ArrayList<Aluno>();
					lista = (ArrayList) request.getAttribute("alunosList");
					for (Aluno a : lista) {
					%>
					<tr
						class="border-b-2 border-gray-300 transition-colors hover:bg-gray-200"
						onclick="mostrarBotoes(this)">
						<td class="px-6 py-4 whitespace-nowrap"><%=a.getRa()%></td>
						<td class="px-6 py-4 whitespace-nowrap"><%=a.getNome()%></td>
						<td class="px-6 py-4 whitespace-nowrap"><%=a.getEndereco()%></td>
						<td class="px-6 py-4 whitespace-nowrap"><%=a.getEmail()%></td>
						<td class="px-6 py-4 whitespace-nowrap"><%=data.format(a.getDataNascimento())%></td>
						<td class="px-6 py-4 whitespace-nowrap"><%=a.getPeriodo()%></td>
						<td class="px-6 py-4 whitespace-nowrap">
							<div class=" items-center align-center justify-center text-center flex">
								<a href="ServletAluno?cmd=exc&txtRa=<%=a.getRa()%>"
									class="hover:gray-900  rounded-lg flex items-center transition-transform transform hover:translate-y-1">
									<svg width="22" height="25" viewBox="0 0 22 25" fill="none"
										xmlns="http://www.w3.org/2000/svg" class="w-6 h-6 mr-2">
                <path
											d="M19.75 6L18.6658 21.1781C18.5724 22.4864 17.4838 23.5 16.1722 23.5H5.8278C4.5162 23.5 3.4276 22.4864 3.33415 21.1781L2.25 6M8.5 11V18.5M13.5 11V18.5M14.75 6V2.25C14.75 1.55964 14.1904 1 13.5 1H8.5C7.80964 1 7.25 1.55964 7.25 2.25V6M1 6H21"
											stroke="red" stroke-width="1.5" stroke-linecap="round"
											stroke-linejoin="round" />
            </svg>

								</a> <a href="ServletAluno?cmd=atu&txtRa=<%=a.getRa()%>"
									class="hover:gray-900 font-bold py-2 px-4 rounded-lg flex items-center transition-transform transform hover:translate-y-1">
									<svg width="18" height="18" viewBox="0 0 18 18" fill="none"
										xmlns="http://www.w3.org/2000/svg">
  <path
											d="M1 1V6H1.58152M16.9381 8C16.446 4.05369 13.0796 1 9 1C5.64262 1 2.76829 3.06817 1.58152 6M1.58152 6H6M17 17V12H16.4185M16.4185 12C15.2317 14.9318 12.3574 17 9 17C4.92038 17 1.55399 13.9463 1.06189 10M16.4185 12H12"
											stroke="blue" stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" />
</svg>
								</a>
							</div>
						</td>
					</tr>




					<%
					}
					%>
				</tbody>
			</table>
		</div>
		
	</div>
	<script>
		function filtrarAlunos() {
			var input, filter, table, tr, td, i, txtValue;
			input = document.getElementById("txtPesquisa");
			filter = input.value.toUpperCase();
			table = document.querySelector("table");
			tr = table.getElementsByTagName("tr");

			// Iterar sobre as linhas da tabela, começando a partir da segunda linha (índice 1)
			for (i = 1; i < tr.length; i++) {
				var match = false; // Define a correspondência inicialmente como falso
				// Verificar tanto a coluna de nomes (td[1]) quanto a coluna de RA (td[0])
				for (var j = 0; j < 2; j++) {
					td = tr[i].getElementsByTagName("td")[j];
					if (td) {
						txtValue = td.textContent || td.innerText;
						if (txtValue.toUpperCase().indexOf(filter) > -1) {
							// Se encontrar correspondência em algum campo, defina a correspondência como verdadeira
							match = true;
							break; // Não é necessário verificar mais campos
						}
					}
				}
				// Mostrar ou ocultar a linha com base na correspondência
				if (match) {
					tr[i].style.display = "";
				} else {
					tr[i].style.display = "none";
				}
			}
		}
		function atualizarContadorAlunos() {
			var table = document.querySelector("table");
			var tr = table.getElementsByTagName("tr");
			var contador = 0;

			// Iterar sobre as linhas da tabela, começando a partir da segunda linha (índice 1)
			for (var i = 1; i < tr.length; i++) {
				if (tr[i].style.display !== "none") {
					contador++;
				}
			}

			// Atualizar o contador de alunos
			var contadorElement = document.getElementById("contadorAlunos");
			contadorElement.textContent = +contador;
		}

		// Chame a função inicialmente para definir o contador com base nos dados iniciais
		atualizarContadorAlunos();
	
$(document).ready(function() {
  $('#tabelaAlunos').DataTable({
    "paging": false, // Ativar a paginação
    "lengthChange": false, // Permitir ao usuário escolher o número de registros por página
    "searching": false, // Ativar a pesquisa
    "ordering": true, // Ativar a classificação das colunas
    "info": false, // Mostrar informações sobre a paginação
    "autoWidth": false, // Desativar o ajuste automático da largura das colunas
    "language": {
      "url": "//cdn.datatables.net/plug-ins/1.11.5/i18n/Portuguese-Brasil.json" // Tradução para o português do Brasil
    }
  });
});
</script>
	
</body>

</html>
