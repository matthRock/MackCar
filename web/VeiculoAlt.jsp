<%-- 
    Document   : VeiculoAlt
    Created on : 13/06/2017, 01:27:26
    Author     : matheus
--%>

<%@page import="dao.VeiculoDAOconcreto"%>
<%@page import="dao.VeiculoDAO"%>
<%@page import="javabeans.Veiculo"%>
<%@page import="javabeans.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Todos os Clientes</title>
    </head>

    <body>
        <div id="site">

            <%@include file="pag/menu3.jsp" %>

            <br/><br/>
            <div id="conteudo">
                <%
                    Admin adminAutenticado = (Admin) session.getAttribute("adminAutenticado");
                    Veiculo v;
                    v = (Veiculo) session.getAttribute("v");
                    VeiculoDAO dao = new VeiculoDAOconcreto();
                    v = dao.buscaVeiculoId(1);
                    
                    
                %>
                <center><h1>Alterar Veiculo</h1>
                <form action="AlterarVeiculo" method="POST">

                        <div id="conteudo2"></div>
                        <div id="conteudo-left"></div>
                        <div id="conteudo-right">
                        <h5>Digite os dados  do veículo que você deseja editar.</h5>

                            <input type = "text" name= "id" value="<%v.getCod_veiculo();%>" placeholder="Código do veículo" required="required"/><br>
                            <input type = "text" name= "nome" value="<%v.getNome_modelo();%>" placeholder="Nome do modelo" required="required"/><br>
                            <input type = "text" name= "marca" value="<%v.getMarca();%>" placeholder="Marca do modelo" required="required"/><br><br> 
                            <input type = "text" name= "cor" value="<%v.getCor();%>" placeholder="Cor do modelo" required="required"/><br><br> 
                            <input type = "text" name= "ano" value="<%v.getAno();%>" placeholder="Ano do modelo" required="required"/><br><br> 
                            <input type = "text" name= "placa" value="<%v.getPlaca();%>" placeholder="Placa" required="required"/><br><br> 
                            <input type = "text" name= "qtd_disponivel"  value="<%v.getQtd_disponivel();%>" placeholder="Quantidade disponível" required="required"/><br><br> 
                            <input type = "text" name= "valor_diaria" value="<%v.getValor_diaria();%>" placeholder="Valor da Diária" required="required"/><br><br> 
                            <button type ="submit" value="Inserir Veiculo">Alterar Veículo</button><br><br>
                        </div>
                        <div id="conteudo2"></div>
                </form>
            </div>
    </body>
</html>
