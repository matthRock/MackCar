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
                    
                    
                        <%  Admin adminAutenticado = (Admin) session.getAttribute("adminAutenticado");
                            out.print("<input type='text' name='nome' value='"+ adminAutenticado.getNome() +"'>" );
                        %> 
                    

                    <% out.print("<input type='text' name='login' value='"+ adminAutenticado.getLogin()+"'>");%>
                    <% out.print("<input type='text' name='senha' value='"+ adminAutenticado.getSenha() +"'>");%>
                    <br/><br/>
                    <a href="AtualizaAdmin">Alterar Dados</a>
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
