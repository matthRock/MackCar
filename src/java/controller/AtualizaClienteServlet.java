package controller;
import dao.ClienteDAO;
import dao.ClienteDAOconcreto;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javabeans.Cliente;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author marcelo
 */
@WebServlet(name = "AtualizaClienteServlet", urlPatterns = {"/AtualizaClienteServlet"})
public class AtualizaClienteServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            HttpSession sessao = request.getSession();
            Cliente clienteAutenticado = (Cliente)sessao.getAttribute("clienteAutenticado");
            ClienteDAO dao = new ClienteDAOconcreto();
                
            clienteAutenticado.setEstado(request.getParameter("estado"));
            clienteAutenticado.setCidade(request.getParameter("cidade"));
            clienteAutenticado.setEndereco(request.getParameter("endereco"));
            clienteAutenticado.setComplemento(request.getParameter("complemento"));
            clienteAutenticado.setTelefone(request.getParameter("telefone"));
            clienteAutenticado.setCep(request.getParameter("cep"));
            clienteAutenticado.setEmail(request.getParameter("email"));
            
            try {
            dao.alterarCliente(clienteAutenticado);
        } catch (SQLException ex) {
            Logger.getLogger(CadastroCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
                  
            request.getRequestDispatcher("perfil.jsp").forward(request, response);
       
        
    }

}