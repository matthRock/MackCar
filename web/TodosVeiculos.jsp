<%-- 
    Document   : TodosVeiculos
    Created on : 05/06/2017, 18:44:13
    Author     : marcelo
--%>

<%@page import="dao.VeiculoDAOconcreto"%>
<%@page import="java.util.List"%>
<%@page import="dao.VeiculoDAO"%>
<%@page import="javabeans.Veiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Todos os Veiculos</title>
    </head>

    <body>
        <div id="site" style= "text-align:center">

            <div id="header">
                <%@include file="pag/menu.jsp" %>
                <center><img src="imagens/logo.jpg" alt=""/></center>
            </div>

            <div id="conteudo">
                <%
                    VeiculoDAO dao = new VeiculoDAOconcreto();
                    List<Veiculo> veiculos = dao.buscaVeiculo();
                %>

                <script type="text/javascript">

                    var contador = 1;

                    window.onload = bemVindo;

                    function bemVindo()
                    {
                        document.getElementById("bot1").addEventListener("click", trocaImagem);
                        document.getElementById("bot2").addEventListener("click", trocaImagem);
                        document.getElementById("bot3").addEventListener("click", trocaImagem);
                        document.getElementById("botC").addEventListener("click", trocaImagem2);
                    }

                    function trocaImagem(event)
                    {
                        var nome = event.target.id;
                        var vetor = nome.split("bot");
                        var numero = vetor[1];
                        document.getElementById("banner").src = "imagens/img" + numero + ".jpg";
                    }

                </script>

                <div style= "text-align:center"> 

                    <h1>Venha conferir alguns dos nossos modelos!</h1> 

                    <img id="banner" alt="banner" src="imagens/img1.jpg"/>
                    <br/>
                    <button id="bot1">Ferrari</button>
                    <button id="bot2">Carro 2</button>
                    <button id="bot3">Carro 3</button>

                    <%--<form style="text-align:center">
                        <table border="2">
                            <tr>
                                <td>Código</td>
                                <td>Nome</td>
                                <td>Marca</td>
                                <td>Cor</td>
                                <td>Ano</td>
                            </tr>

                            <%
                                for (Veiculo v : veiculos) {
                            %>

                            <tr>
                                <td><%= v.getCod_veiculo()%></td>
                                <td><%= v.getNome_modelo()%></td>
                                <td><%= v.getMarca()%></td>
                                <td><%= v.getCor()%></td>
                                <td><%= v.getAno()%></td>
                            </tr>
                            <%
                                }
                            %>
                        </table><br><br>         
                    </form> --%>
                </div>
                <%@include file="pag/footer.jsp" %>
            </div>
    </body>
</html>
