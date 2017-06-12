package controller;
import dao.VeiculoDAO;
import dao.VeiculoDAOconcreto;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javabeans.Veiculo;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class VeiculoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        Veiculo veiculoAutenticado = new Veiculo();
        
        int escolha = Integer.parseInt((request.getParameter("escolha"))); ////////////////não envia paramentro
        
        
        VeiculoDAO dao = new VeiculoDAOconcreto();
        try {
            veiculoAutenticado = dao.buscaVeiculoId(escolha);
            
            HttpSession sessao = request.getSession();
            sessao.setAttribute("veiculoAutenticado", veiculoAutenticado);
            
        } catch (SQLException ex) {
            Logger.getLogger(VeiculoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
               
        request.getRequestDispatcher("DadosVeiculo.jsp").forward(request, response);
       
    }
   
}
