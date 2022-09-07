<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recibo de Pagamento e Salário</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
 rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
  crossorigin="anonymous">

<style>

table {
width: 100%;
border: 0.1rem solid #000;

margin-bottom: 1rem;

}


.linhasLaterais {
border-left: 1px solid #000;
border-right: 1px solid #000;
width: 10rem;
height: 1rem;
}


</style>


</head>
<body>

	<%
	
	int codigo = Integer.parseInt(request.getParameter("codigo"));
	String nome = request.getParameter("nome");
	String funcao = request.getParameter("funcao");
	float salario = Float.parseFloat(request.getParameter("salario"));
	float inss = Float.parseFloat(request.getParameter("inss"));
	String mes = request.getParameter("mes");
	String msg = request.getParameter("mensagem");
	

	
	float totalInss = salario * inss / 100; 
	float totalLiq = salario - totalInss; 
	
	%>

<div class="container-fluid mt-2">

<!-- TABLE 1 -->
<table>
<tr>
<th colspan="2" style="text-align: left;">EMPREGADOR</th>
<th colspan="2" style="text-align: right;">Recibo de Pagamento e Salário</th>

</tr>

<tr>
<td>Nome:</td>
<td colspan="2">GOOGLE</td>
<td style="text-align: right;"> Referente ao ano / mês.</td>
</tr>


<tr>
<td>Endereço:</td>
<td colspan="2">RUA HELLO WORLD, 2022.</td>
<td rowspan="2" style="text-align: right;"><%=mes %></td>

</tr>


<tr>
<td>Cnpj:</td>
<td colspan="2">01.010.101/0001-01</td>

</tr>

</table>


<!-- TABLE 2 -->

<table>

<tr style="text-align: left;">
<th class="text-center">CÓDIGO</th>
<th colspan="2">NOME DO FUNCIONÁRIO</th>
<th>CBO</th>
<th>FUNÇÃO</th>

</tr>


<tr style="text-align: left;">
<td class="text-center"><strong><%=codigo %></strong></td>
<td colspan="2"><%=nome %></td>
<td>0000-00</td>
<td><%=funcao %></td>

</tr>


</table>



<!-- TABLE 3 -->
<table>
<tr class="text-center linhasLaterais" style="background: #ccc;">
<th>Cód</th>
<th class="linhasLaterais">Descrição</th>
<th class="linhasLaterais">Referência</th>
<th class="linhasLaterais">Proventos</th>
<th class="linhasLaterais">Descontos</th>

</tr>

<!-- SALÁRIO MENSAL -->
<tr style="font-weight: bold; border-top: 0.1rem solid #000;">
<td class="text-center linhasLaterais">1</td>
<td class="linhasLaterais">SALÁRIO MENSAL</td>
<td class="text-center linhasLaterais">30,00</td>
<td class="text-center linhasLaterais"><%=salario %></td>
<td></td>

</tr>

<!-- INSS -->
<tr style="font-weight: bolder; color: #ff0000;">
<td class="text-center linhasLaterais">500</td>
<td class="linhasLaterais">INSS</td>
<td class="text-center linhasLaterais"><%=inss %></td>
<td></td>
<td class="text-center linhasLaterais"><%=totalInss %></td>

</tr>


<!-- PRENCHIMENTO COMPLEMENTAR -->

<tr>
<td class="linhasLaterais"></td>
<td class="linhasLaterais"></td>
<td class="linhasLaterais"></td>
<td class="linhasLaterais"></td>
<td class="linhasLaterais"></td>
</tr>

<tr>
<td class="linhasLaterais"></td>
<td class="linhasLaterais"></td>
<td class="linhasLaterais"></td>
<td class="linhasLaterais"></td>
<td class="linhasLaterais"></td>
</tr>

<tr>
<td class="linhasLaterais"></td>
<td class="linhasLaterais"></td>
<td class="linhasLaterais"></td>
<td class="linhasLaterais"></td>
<td class="linhasLaterais"></td>
</tr>



<!-- RODAPÉ -->
<tr>
<td colspan="3" style="border-top: 0.1rem solid #000;"><strong>MENSAGEM:</strong></td>
<td class="text-center linhasLaterais" style="border-top: 0.1rem solid #000;">Total dos Vencimentos</td>
<td class="text-center linhasLaterais" style="border-top: 0.1rem solid #000;">Total dos Descontos</td>
</tr>

<tr class="text-center">
<td colspan="3" rowspan="2" style="text-align:justify;"><%=msg %></td>
<td class="linhasLaterais"><strong><%=salario %></strong></td>
<td class="text-danger linhasLaterais"><strong><%=totalInss %></strong></td>
</tr>

<tr class="text-center">
<td class="linhasLaterais" style="border-top: 0.1rem solid #000;"> <strong> Líquido a receber &rArr; </strong></td>
<td class="text-dark linhasLaterais" style="background: #ccc; border-top: 0.1rem solid #000;"><strong><%=totalLiq %></strong></td>
</tr>


</table>



<div class="row">

<div class="col-12">

<a href="lancamentoPagamento.html" class="btn bg-warning">Gerar outro Contracheque</a>

</div>

</div>


</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
 integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>