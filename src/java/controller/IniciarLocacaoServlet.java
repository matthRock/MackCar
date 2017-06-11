package controller;
import java.io.IOException;
import java.io.PrintWriter;
import javabeans.Aluguel;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/IniciarLocacaoServlet"})
public class IniciarLocacaoServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            Aluguel a = new Aluguel();
            Aluguel aluguelAutenticado = new Aluguel();
            
            double numero = Math.random() * 1000000000;
            
            a.setCod_locacao((int) numero);
            a.setCod_cliente(0);
            a.setCod_veiculo(0);
            a.setEnd_retirada(request.getParameter("enderecoRet"));
            a.setCom_retirada(request.getParameter("complementoRet"));
            a.setCep_retirada(request.getParameter("cepRet"));
            a.setData_retirada(request.getParameter("dataRet"));
            a.setQtd_dias(request.getParameter("qtdDias"));
            a.setEnd_devolucao(request.getParameter("enderecoDev"));
            a.setCom_devolucao(request.getParameter("complementoDev"));
            a.setCep_devolucao(request.getParameter("cepDev"));
            a.setData_devolucao(request.getParameter("dataDevo"));       
            a.setValor_total(0);                     
                 
            aluguelAutenticado = a;
                
            HttpSession sessao = request.getSession();
            sessao.setAttribute("aluguelAutenticado", aluguelAutenticado);
            sessao.setMaxInactiveInterval(600);

            request.getRequestDispatcher("BuscarVeiculo.jsp").forward(request, response);
            
           
        
        
    }

}
