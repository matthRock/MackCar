<%-- 
    Document   : Finalizacao
    Created on : 14/05/2017, 00:55:29
    Author     : marcelo
--%>

<%@page import="javabeans.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Aluguel Finalizado</title>
    </head>

    <body>
        <div id="site" style= "text-align:center">

                <%@include file="pag/menu2.jsp" %>
                <br/><br/><br/><br/>

            <div id="conteudo">
                <h1>
                    <%  Cliente clienteAutenticado = (Cliente) session.getAttribute("clienteAutenticado");
                        out.print("Parabéns " + clienteAutenticado.getNome() + "!");
                    %> 
                </h1>
                <h2>Aluguel finalizado com sucesso.</h2>

                <a href="Home.jsp"><button>Voltar</button></a><br><br>
            </div>

            <%@include file="pag/footer.jsp" %>

        </div>


    </body>

</html>
