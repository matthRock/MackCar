<%-- 
    Document   : PerfilAdmin
    Created on : 12/06/2017, 00:15:43
    Author     : mathe
--%>

<%@page import="javabeans.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Perfil</title>
    </head>
    <body>
        <div id="site">

            <%@include file="pag/menu3.jsp" %>
            <br/><br/>

            <div id="conteudo">
                <center><h1>Meu Perfil</h1></center>

                <div id="conteudo2"></div>
                <div id="conteudo3">
                    <h2>Informações da Conta</h2>
                    
                    <p>
                        <%  Admin adminAutenticado = (Admin) session.getAttribute("adminAutenticado");
                            out.print("<b>Nome:</b> " + adminAutenticado.getNome());
                        %> 
                    </p>

                    <p><% out.print("<b>Login: </b> " + adminAutenticado.getLogin());%></p> 
                    <p><% out.print("<b>Senha:</b> " + adminAutenticado.getSenha());%></p>
                </div>
                <div id="conteudo3">
                    <br/><br/>
                    <center><img src="imagens/perfil.jpg" alt=""/>
                        <br/><br/>
                </div>
            </div>
            <%@include file="pag/footer.jsp" %>
        </div>
    </body>
</html>
