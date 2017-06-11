<%-- 
    Document   : Home
    Created on : 21/04/2017, 19:32:51
    Author     : marcelo
--%>

<%@page import="java.util.List"%>
<%@page import="javabeans.Aluguel"%>
<%@page import="dao.AluguelDAOconcreto"%>
<%@page import="dao.AluguelDAOconcreto"%>
<%@page import="dao.AluguelDAO"%>
<%@page import="javabeans.Cliente"%>
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

            <%@include file="pag/menu2.jsp" %>



            <div id="conteudo">
                <h1>
                    <%  Cliente clienteAutenticado = (Cliente) session.getAttribute("clienteAutenticado");
                        out.print("Bem vindo " + clienteAutenticado.getNome());

                        AluguelDAO dao = new AluguelDAOconcreto();
                        List<Aluguel> alugueis = dao.buscaAluguelId(clienteAutenticado.getCod_cliente());
                    %> 
                </h1>
                <%@include file="pag/slide.jsp" %>
            </div>

            <%@include file="pag/footer.jsp" %>
        </div>
    </body>
</html>