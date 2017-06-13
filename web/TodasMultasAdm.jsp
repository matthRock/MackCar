<%-- 
    Document   : TodasMultasAdm
    Created on : 09/06/2017, 00:47:29
    Author     : mathe
--%>

<%@page import="javabeans.Admin"%>
<%@page import="dao.MultaDAOconcreto"%>
<%@page import="java.util.List"%>
<%@page import="javabeans.Multa"%>
<%@page import="dao.MultaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Todas as Multas</title>
    </head>

    <body>
        <div id="site">

            <%@include file="pag/menu3.jsp" %>

            <br/><br/>
            <div id="conteudo">
                <%
                    Admin adminAutenticado = (Admin) session.getAttribute("adminAutenticado");
                    MultaDAO dao = new MultaDAOconcreto();
                    List<Multa> multas;
                    multas = dao.buscaMultas();
                %>

                <center><h1>Multas</h1>

                                     
                    <table border="1">
                        <tr>
                            <td>Código da Multa</td>
                            <td>Descriçao</td>
                            <td>Código Cliente</td>
                            <td>Valor da Multa</td>
                        </tr>

                        <%
                            for (Multa m : multas) {
                        %>

                        <tr>
                            <td><%= m.getCod_multa()%></td>
                            <td><%= m.getDescricao()%></td>
                            <td><%= m.getCod_cliente()%></td>
                            <td><%= m.getValor()%></td>
                        </tr>

                        <%
                            }
                        %>

                    </table></center><br><br>    

                <form action = "DeletarMulta"  method= "POST">
                    <div id="conteudo2"></div>
                    <div id="conteudo-left"></div>
                    <div id="conteudo-right">
                        <h4>Deseja excluir uma Multa?</h4>
                        <h5>Digite o código da multa que você deseja excluir. 
                            Obs: Essa tarefa não pode ser desfeita</h5>

                        <input type = "text" name= "escolha" placeholder="Código do Cliente" required="required"/><br><br> 
                        <button type ="submit" value="Deletar Cliente">Deletar Multa</button><br><br>
                    </div>
                    <div id="conteudo2"></div>
                </form>
                    
                <form action="InserirMulta"  method="POST">
                    <div id="conteudo2"></div>
                    <div id="conteudo-left"></div>
                    <div id="conteudo-right">
                        <h4>Deseja inserir uma Multa?</h4>
                        <h5>Digite os dados  da multa que você deseja inserir.</h5>

                        <input type="text" name="id" placeholder="Código da multa" required="required"/><br>
                        <input type="text" name="descricao" placeholder="descrição da multa" required="required"/><br>
                        <input type="text" name="cliente" placeholder="Código do cliente" required="required"/><br>
                        <input type="text" name="valor" placeholder="valor da multa" required="required"/><br><br> 
                        <button type="submit" value="Adiciobar">Adicionar Multa</button><br><br>
                    </div>
                    <div id="conteudo2"></div>
                </form>

            </div>
            <%@include file="pag/footer.jsp" %>
        </div>
    </body>
</html>
