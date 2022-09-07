

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Contracheque")
public class Contracheque extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int codigo = Integer.parseInt(request.getParameter("codigo"));
		String nome = request.getParameter("nome");
		String funcao = request.getParameter("funcao");
		float salario = Float.parseFloat(request.getParameter("salario"));
		float inss = Float.parseFloat(request.getParameter("inss"));
		String mes = request.getParameter("mes");
		String msg = request.getParameter("mensagem");

		
		// PEGANDO OS PARÂMETROS E ENVIANDOS PARA UMA PÁGINA JSP
	    response.sendRedirect("reciboPagamento.jsp?codigo=" + codigo + "&nome=" + nome + "&funcao=" +
		funcao + "&salario=" + salario + "&inss=" + inss + "&mes=" + mes + "&mensagem=" + msg);
		
	}

}
