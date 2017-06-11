package controller;
import dao.AluguelDAO;
import dao.AluguelDAOconcreto;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javabeans.Aluguel;
import javabeans.Cliente;
import javabeans.Veiculo;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LocalServlet extends HttpServlet {
  
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession sessao = request.getSession();
        Cliente clienteAutenticado = (Cliente)sessao.getAttribute("clienteAutenticado");
        Veiculo veiculoAutenticado = (Veiculo)sessao.getAttribute("veiculoAutenticado");
        Aluguel aluguelAutenticado = (Aluguel)sessao.getAttribute("aluguelAutenticado");
        
        Aluguel a = new Aluguel();
        int dias = Integer.parseInt(aluguelAutenticado.getQtd_dias());
        
        AluguelDAO dao = new AluguelDAOconcreto(); 
                
            a.setCod_locacao(aluguelAutenticado.getCod_locacao());
            a.setCod_cliente(clienteAutenticado.getCod_cliente());
            a.setCod_veiculo(veiculoAutenticado.getCod_veiculo());
            a.setEnd_retirada(aluguelAutenticado.getEnd_retirada());
            a.setCom_retirada(aluguelAutenticado.getCom_retirada());
            a.setCep_retirada(aluguelAutenticado.getCep_retirada());
            a.setData_retirada(aluguelAutenticado.getData_retirada());
            a.setQtd_dias(aluguelAutenticado.getQtd_dias());
            a.setEnd_devolucao(aluguelAutenticado.getEnd_devolucao());
            a.setCom_devolucao(aluguelAutenticado.getCom_devolucao());
            a.setCep_devolucao(aluguelAutenticado.getCep_devolucao());
            a.setData_devolucao(aluguelAutenticado.getData_devolucao());           
            a.setValor_total((veiculoAutenticado.getValor_diaria())*dias);
            
        try {
            dao.salvarAluguel(a);
        } catch (SQLException ex) {
            Logger.getLogger(LocalServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
       
        request.getRequestDispatcher("PagamentoVeiculo.jsp").forward(request, response);
         
                
    }

}
