<%-- 
    Document   : Local
    Created on : 21/04/2017, 19:59:58
    Author     : marcelo
--%>

<%@page import="javabeans.Aluguel"%>
<%@page import="javabeans.Veiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

        <title> Definir Locais </title>
    </head>
    <body>
        <div id="site">
            <%@include file="pag/menu2.jsp" %>
            <br/><br/><br/><br/>
            <center>
                <a href="IniciarLocacao.jsp"><img src="imagens/passo1.jpg" alt=""/></a>
                <a href="BuscarVeiculo.jsp"><img src="imagens/passo2.jpg" alt=""/></a>
                <img src="imagens/passo3v.jpg" alt=""/>
                <img src="imagens/passo4.jpg" alt=""/>
            </center>
            <br/><br/><br/><br/>

            <% Veiculo veiculoAutenticado = (Veiculo) session.getAttribute("veiculoAutenticado");
               Aluguel aluguelAutenticado = (Aluguel) session.getAttribute("aluguelAutenticado");
               int dias = Integer.parseInt(aluguelAutenticado.getQtd_dias());
             %>                            
            
            
            <div id="conteudo">
                <!--<form action = "LocalServlet"  method= "POST">-->
                <form action = "LocalServlet"  method= "POST">
                    <div id="conteudo2"></div>
                    
                    <div id="conteudo1">
                        <h2>Informações do Veículo</h2>
                        <br/>
                        <p><%out.print("<b>Marca:</b> " + veiculoAutenticado.getMarca());%></p>
                        <p><%out.print("<b>Modelo:</b> " + veiculoAutenticado.getNome_modelo());%></p>
                        <p><%out.print("<b>Cor:</b> " + veiculoAutenticado.getCor());%></p>
                        <p><%out.print("<b>Ano:</b> " + veiculoAutenticado.getAno());%></p>
                        <p><%out.print("<b>Valor Diária:</b> " + veiculoAutenticado.getValor_diaria());%></p>
                        <p><%out.print("<b>Valor Total:</b> " +veiculoAutenticado.getValor_diaria()*dias);%></p>
                        
                        <h6>Obs: Caso houver atraso, será cobrado 
                            uma multa de acordo com os dias de atraso.</h6>
                    </div>
                    
                    <div id="conteudo-right">
                        
                        <img src="imagens/img1.jpg" alt=""/>
                        <br/><br/><br/><br/><br/><br/><br/><br/>
                        <button type="submit" va ="Confirmar">Confirmar</button><br/><br/>
                    </div>
                    <div id="conteudo2"></div>
                </form>
            </div>
            <%@include file="pag/footer.jsp" %>
        </div>
    </body>
</html>
