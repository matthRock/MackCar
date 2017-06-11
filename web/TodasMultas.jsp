<%-- 
    Document   : TodasMultas
    Created on : 05/06/2017, 18:44:55
    Author     : marcelo
--%>

<%@page import="javabeans.Multa"%>
<%@page import="java.util.List"%>
<%@page import="javabeans.Cliente"%>
<%@page import="dao.MultaDAOconcreto"%>
<%@page import="dao.MultaDAO"%>
<%@page import="dao.MultaDAO"%>
<%@page import="dao.AluguelDAOconcreto"%>
<%@page import="javabeans.Aluguel"%>
<%@page import="dao.AluguelDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Todas as Multas</title>
    </head>

    <body>
        <div id="site" style= "text-align:center">

            <%@include file="pag/menu2.jsp" %>
            <br/><br/>

            <div id="conteudo">

                <%
                    Cliente clienteAutenticado = (Cliente) session.getAttribute("clienteAutenticado");

                    MultaDAO dao = new MultaDAOconcreto();
                    List<Multa> multas = dao.buscaMultaId(clienteAutenticado.getCod_cliente());
                %>

                <h1>Histórico de Multas</h1>

                <%--
                <form action = "#"  method= "POST">
                    <p>Período: <input type = "text" name= "periodoDe" placeholder=""/>  Até: <input type = "text" name="periodoAte" placeholder=""/>
                        <button type ="submit" value="Pesquisar">Pesquisar</button></p><br><br>
                </form>
                --%>
                <form>
                    <center>
                        <table border="2">
                            <tr>
                                <td>Código</td>
                                <td>Descrição</td>
                                <td>Valor em R$</td>
                            </tr>

                            <%
                                for (Multa m : multas) {
                            %>

                            <tr>
                                <td><%= m.getCod_multa()%></td>
                                <td><%= m.getDescricao()%></td>
                                <td><%= m.getValor()%></td>
                            </tr>
                            <%
                                }
                            %>
                        </table></center><br><br>
                </form>
            </div>
            <%@include file="pag/footer.jsp" %>
        </div>
    </body>
</html>
