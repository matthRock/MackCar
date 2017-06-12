/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.VeiculoDAO;
import dao.VeiculoDAOconcreto;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javabeans.Veiculo;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mathe
 */
@WebServlet(name = "InserirVeiculo", urlPatterns = {"/InserirVeiculo"})
public class InserirVeiculo extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet InserirVeiculo</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InserirVeiculo at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int cod_veiculo = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");
        String marca = request.getParameter("marca");
        String cor = request.getParameter("cor");
        String ano = request.getParameter("ano");
        String placa = request.getParameter("placa");
        int qtd_disponivel = Integer.parseInt(request.getParameter("qtd_disponivel"));
        int valor_diaria = Integer.parseInt(request.getParameter("valor_diaria"));
        
        Veiculo v = new Veiculo();
        v.setCod_veiculo(cod_veiculo);
        v.setNome_modelo(nome);
        v.setCor(cor);
        v.setMarca(marca);
        v.setAno(ano);
        v.setPlaca(placa);
        v.setQtd_disponivel(qtd_disponivel);
        v.setValor_diaria(cod_veiculo);
        
        VeiculoDAO dao = new VeiculoDAOconcreto();
        try {
            dao.salvarVeiculo(v);
            System.out.println("OBJETO INSERIDO");
        } catch (SQLException ex) {
            Logger.getLogger(InserirVeiculo.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        request.getRequestDispatcher("TodoCarros.jsp").forward(request, response);
                        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
