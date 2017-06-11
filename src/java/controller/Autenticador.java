package controller;
import dao.ClienteDAO;
import dao.ClienteDAOconcreto;
import java.io.IOException;
import javabeans.Cliente;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "Autenticador", urlPatterns = {"/Autenticador"})
public class Autenticador extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession sessao = request.getSession(false);
			if(sessao!=null){
				sessao.invalidate();
				
			}
			response.sendRedirect("loginCadastro.jsp");
		
	}
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");

            Cliente c = new Cliente();
            c.setEmail(email);
            c.setSenha(senha);

            ClienteDAO dao = new ClienteDAOconcreto();
            Cliente clienteAutenticado = dao.autenticacao(c);
        
            if(clienteAutenticado != null){
                HttpSession sessao = request.getSession();
                sessao.setAttribute("clienteAutenticado", clienteAutenticado);
                sessao.setMaxInactiveInterval(600);

            request.getRequestDispatcher("Home.jsp").forward(request, response);
            
            }else{
                response.sendRedirect("loginCadastro.jsp");
            }
    }
}

      