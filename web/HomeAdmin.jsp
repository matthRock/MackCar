<%-- 
    Document   : HomeAdmin
    Created on : 12/06/2017, 00:11:44
    Author     : matheus
--%>

<%@page import="java.util.List"%>
<%@page import="javabeans.Aluguel"%>
<%@page import="dao.AluguelDAOconcreto"%>
<%@page import="dao.AluguelDAO"%>
<%@page import="javabeans.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Home</title>
    </head>

    <body>
        <div id="site" style= "text-align:center" class="alert alert-success">

            <%@include file="pag/menu3.jsp" %>



            <div id="conteudo">
                <h1>
                    <% Admin adminAutenticado = (Admin) session.getAttribute("adminAutenticado");
                        out.print("Bem vindo " + adminAutenticado.getNome());
                        AluguelDAO dao = new AluguelDAOconcreto();
                        List<Aluguel> alugueis = dao.buscaAluguelId(adminAutenticado.getCod_admin());
                    %> 
                </h1>
                <%@include file="pag/slide.jsp" %>
            </div>

            <%@include file="pag/footer.jsp" %>
        </div>
    </body>
</html>
