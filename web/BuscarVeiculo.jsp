<%-- 
    Document   : Local
    Created on : 21/04/2017, 19:59:58
    Author     : marcelo
--%>

<%@page import="dao.VeiculoDAO"%>
<%@page import="dao.VeiculoDAOconcreto"%>
<%@page import="java.util.List"%>
<%@page import="javabeans.Veiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Buscar Veiculo</title>
    </head>

    <%
        VeiculoDAO dao = new VeiculoDAOconcreto();
        List<Veiculo> veiculos = dao.buscaVeiculo();
    %>

    <body>
        <div id="site">
            <%@include file="pag/menu2.jsp" %>
            <br/><br/><br/><br/>
            <center>
                <a href="IniciarLocacao.jsp"><img src="imagens/passo1.jpg" alt=""/></a>
                <img src="imagens/passo2v.jpg" alt=""/>
                <img src="imagens/passo3.jpg" alt=""/>
                <img src="imagens/passo4.jpg" alt=""/>
            </center>
            <br/><br/><br/><br/>

            <div id="conteudo">
                <%--
                <!--<form action = "LocalServlet"  method= "POST">-->
                <form action = "#"  method= "POST">
                    <div id="conteudo2"></div>
                    <div id="conteudo-left">
                        <input type = "text" name= "marca" placeholder="Marca"/><br><br>
                        <input type = "text" name= "modelo" placeholder="Modelo"/><br><br>
                        <input type = "text" name= "motor" placeholder="Motor"/><br><br>
                        <input type = "text" name= "cor" placeholder="Cor"/><br><br>
                    </div>
                    <div id="conteudo-right">

                        <input type = "text" name= "ano" placeholder="Ano"/><br><br>
                        <input type = "text" name= "direcao" placeholder="Direção"/><br><br>
                        <input type = "text" name= "ar" placeholder="Ar"/><br><br>

                        <button type="submit" value="Continuar">Pesquisar</button><br/><br/>

                    </div>
                </form>
                --%>
                
                <form action = "VeiculoServlet" method= "POST">
                    <center>
                        <table border="2">
                            <tr>
                                <td>Código</td>
                                <td>Nome</td>
                                <td>Marca</td>
                                <td>Placa</td>
                                <td>Cor</td>
                                <td>Ano</td>
                                <td>Quantidade Disponível</td>
                            </tr>

                            <%
                                for (Veiculo v : veiculos) {
                            %>

                            <tr>
                                <td><%= v.getCod_veiculo()%></td>
                                <td><%= v.getNome_modelo()%></td>
                                <td><%= v.getMarca()%></td>
                                <td><%= v.getPlaca()%></td>
                                <td><%= v.getCor()%></td>
                                <td><%= v.getAno()%></td>
                                <td><%= v.getQtd_disponivel()%></td>
                            </tr>
                            <%
                                }
                            %>
                        </table><br><br>         

                        <input type = "text" name= "escolha" placeholder="Código do Veiculo Escolhido" required="required" maxlength="1"/><br><br> 
                        <button type="submit" value="Continuar">Continuar</button><br><br>
                    </center><br><br>
                </form>
                <center><a href="IniciarLocacao.jsp"><button>Voltar</button></a></center><br><br>
            </div>
            <%@include file="pag/footer.jsp" %>
        </div>
    </body>
</html>
