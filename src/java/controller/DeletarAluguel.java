package controller;
import dao.AluguelDAO;
import dao.AluguelDAOconcreto;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DeletarAluguel", urlPatterns = {"/DeletarAluguel"})
public class DeletarAluguel extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String escolha = request.getParameter("escolha");
        int escolha2 = Integer.parseInt(escolha);
        
        AluguelDAO dao = new AluguelDAOconcreto();
        try {
            dao.deletarAluguel(escolha2);
            System.out.println("OBJETO DELETADO");
        } catch (SQLException ex) {
            Logger.getLogger(DeletarAluguel.class.getName()).log(Level.SEVERE, null, ex);
        }      
        
        request.getRequestDispatcher("TodosAlugueis.jsp").forward(request, response);
    }

   

}
