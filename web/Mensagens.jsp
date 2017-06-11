<%-- 
    Document   : TodosAlugueis
    Created on : 05/06/2017, 18:44:34
    Author     : marcelo
--%>

<%@page import="dao.AluguelDAOconcreto"%>
<%@page import="java.util.List"%>
<%@page import="javabeans.Aluguel"%>
<%@page import="dao.AluguelDAO"%>
<%@page import="javabeans.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Todos os Alugueis</title>
    </head>

    <body>
        <div id="site">

            <%@include file="pag/menu2.jsp" %>

            <br/><br/>
            <div id="conteudo">
                <center><h1>Mensagens Recebidas</h1>
               <%--     <form action = "#"  method= "POST">
                        <p>Período: <input type = "text" name= "periodoDe" placeholder=""/>  Até: <input type = "text" name="periodoAte" placeholder=""/>
                            <button type ="submit" value="Pesquisar">Pesquisar</button></p><br><br>
                    </form>
                --%>
                    <table border="2">
                        <tr>
                            <td>Remetente</td>
                            <td>Assunto</td>
                            <td>Data</td>
                        </tr>
                        <tr>
                            <td>MackCar</td>
                            <td>Bem Vindo(a) ao Mackcar!</td>
                            <td>09/06/17</td>
                        </tr>
                    </table>
                </center>
                <br><br> 

                <form action = "enviarMsg.jsp"  method= "POST">
                    <div id="conteudo2"></div>
                    <div id="conteudo-left"></div>
                    <div id="conteudo-right">
                        <p>Deseja enviar uma nova mensagem? </p>
                        
                        <button type ="submit" value="Clique Aqui">Clique Aqui!</button>
                    </div>
                    
                </form>

            </div>
            <%@include file="pag/footer.jsp" %>
        </div>
    </body>
</html>