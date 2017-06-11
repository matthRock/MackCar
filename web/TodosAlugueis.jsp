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
                <%
                    Cliente clienteAutenticado = (Cliente) session.getAttribute("clienteAutenticado");
                    AluguelDAO dao = new AluguelDAOconcreto();
                    List<Aluguel> alugueis = dao.buscaAluguelId(clienteAutenticado.getCod_cliente());
                 
                %>

                <center><h1>Histórico de Locações</h1>

                    <%--    <form action = "#"  method= "POST">
                        <p>Período: <input type = "text" name= "periodoDe" placeholder=""/>  Até: <input type = "text" name="periodoAte" placeholder=""/>
                        <button type ="submit" value="Pesquisar">Pesquisar</button></p><br><br>
                    </form>
                    --%>                    
                    <table border="1">
                        <tr>
                            <td>Código</td>
                            <td>Modelo</td>
                            <td>Data de Retirada</td>
                            <td>Endereço de Retirada</td>
                            <td>Quantidade de Dias</td>
                            <td>Endereço de Devolução</td>
                            <td>Valor Total</td>

                        </tr>

                        <%
                            for (Aluguel a : alugueis) {
                        %>

                        <tr>
                            <td><%= a.getCod_locacao()%></td>
                            <td><%= a.getCod_veiculo()%></td>
                            <td><%= a.getData_retirada()%></td>
                            <td><%= a.getEnd_retirada()%></td>
                            <td><%= a.getQtd_dias()%></td>
                            <td><%= a.getEnd_devolucao()%></td>
                            <td><%= a.getValor_total()%></td>
                        </tr>

                        <%
                            }
                        %>

                    </table></center><br><br>    

                <form action = "DeletarAluguel"  method= "POST">
                    <div id="conteudo2"></div>
                    <div id="conteudo-left"></div>
                    <div id="conteudo-right">
                        <h4>Deseja cancelar algum aluguel?</h4>
                        <h5>Digite o código do aluguel que você deseja excluir. 
                            Obs: Essa tarefa não pode ser desfeita</h5>

                        <input type = "text" name= "escolha" placeholder="Código do Aluguel" required="required"/><br><br> 
                        <button type ="submit" value="Deletar Locação">Deletar Locação</button><br><br>
                    </div>
                    <div id="conteudo2"></div>
                </form>

            </div>
            <%@include file="pag/footer.jsp" %>
        </div>
    </body>
</html>
