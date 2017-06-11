package controller;
import dao.ClienteDAO;
import dao.ClienteDAOconcreto;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javabeans.Cliente;
import javax.servlet.http.HttpSession;


public class CadastroCliente extends HttpServlet {
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             
            Cliente c = new Cliente();
            ClienteDAO dao = new ClienteDAOconcreto(); 
                
            double numero = Math.random() * 1000000000;
            
            
                c.setCod_cliente((int) numero);  
                c.setNome(request.getParameter("nome"));
                c.setSexo(request.getParameter("sexo"));
                c.setDataNasc(request.getParameter("dataNasc"));
                c.setRg(request.getParameter("rg"));
                c.setCpf(request.getParameter("cpf"));
                c.setEstado(request.getParameter("estado"));
                c.setCidade(request.getParameter("cidade"));
                c.setCnh(request.getParameter("cnh"));
                c.setEndereco(request.getParameter("endereco"));
                c.setComplemento(request.getParameter("complemento"));
                c.setCep(request.getParameter("cep"));
                c.setTelefone(request.getParameter("telefone"));
                c.setEmail(request.getParameter("email"));
                c.setSenha(request.getParameter("senha"));
           
                //String senhaConf = request.getParameter("confirmasenha");
                String nome = c.getNome();
            
        try {
            dao.salvarCliente(c);
        } catch (SQLException ex) {
            Logger.getLogger(CadastroCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
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
