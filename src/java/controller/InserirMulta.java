/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.MultaDAO;
import dao.MultaDAOconcreto;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javabeans.Multa;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 31506135
 */
@WebServlet(name = "InserirMulta", urlPatterns = {"/InserirMulta"})
public class InserirMulta extends HttpServlet {

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
            out.println("<title>Servlet InserirMulta</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InserirMulta at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
        
        int cod_multa = Integer.parseInt(request.getParameter("id"));
        String descricao = request.getParameter("descricao");
        int cod_cliente = Integer.parseInt(request.getParameter("cod_cliente"));
        double valor = Double.parseDouble(request.getParameter("valor"));
        
        
        System.out.println("pegou valores");
        
        Multa m = new Multa();
        m.setCod_multa(cod_multa);
        m.setDescricao(descricao);
        m.setCod_cliente(cod_cliente);
        m.setValor(valor);
        
        
        System.out.println("criou jbeans");
        
        MultaDAO dao = new MultaDAOconcreto();
        try {
            dao.salvarMulta(m);
            System.out.println("OBJETO INSERIDO");
        } catch (SQLException ex) {
            System.out.println("não inseriu");
            Logger.getLogger(InserirMulta.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("chegou no request");
        request.getRequestDispatcher("TodasMultasAdm.jsp").forward(request, response);
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
