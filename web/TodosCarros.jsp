<%-- 
    Document   : TodosCarros
    Created on : 09/06/2017, 01:09:03
    Author     : matheus
--%>

<%@page import="javabeans.Admin"%>
<%@page import="javabeans.Veiculo"%>
<%@page import="dao.VeiculoDAOconcreto"%>
<%@page import="java.util.List"%>
<%@page import="javabeans.Multa"%>
<%@page import="dao.VeiculoDAO"%>
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
                    VeiculoDAO dao = new VeiculoDAOconcreto();
                    List<Veiculo> veiculos = null;
                    veiculos = dao.buscaVeiculo();
                %>

                <center><h1>Veiculos</h1>

                                     
                    <table border="1">
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

                    </table></center><br><br>    

                <form action = "DeletarVeiculo"  method= "POST">
                    <div id="conteudo2"></div>
                    <div id="conteudo-left"></div>
                    <div id="conteudo-right">
                        <h4>Deseja excluir esse veículo?</h4>
                        <h5>Digite o código do veículo que você deseja excluir. 
                            Obs: Essa tarefa não pode ser desfeita</h5>

                        <input type = "text" name= "escolha" placeholder="Código do Veículo" required="required"/><br><br> 
                        <button type ="submit" value="Deletar Cliente">Deletar Veículo</button><br><br>
                    </div>
                    <div id="conteudo2"></div>
                </form>
                
                    
                <form action = "InserirVeiculo"  method= "POST">
                    <div id="conteudo2"></div>
                    <div id="conteudo-left"></div>
                    <div id="conteudo-right">
                        <h4>Deseja inserir um veículo?</h4>
                        <h5>Digite os dados  do veículo que você deseja inserir.</h5>

                        <input type = "text" name= "id" placeholder="Código do veículo" required="required"/><br>
                        <input type = "text" name= "nome" placeholder="Nome do modelo" required="required"/><br>
                        <input type = "text" name= "marca" placeholder="Marca do modelo" required="required"/><br><br> 
                        <input type = "text" name= "cor" placeholder="Cor do modelo" required="required"/><br><br> 
                        <input type = "text" name= "ano" placeholder="Ano do modelo" required="required"/><br><br> 
                        <input type = "text" name= "placa" placeholder="Placa" required="required"/><br><br> 
                        <input type = "text" name= "qtd_disponivel" placeholder="Quantidade disponível" required="required"/><br><br> 
                        <input type = "text" name= "valor_diaria" placeholder="Valor da Diária" required="required"/><br><br> 
                        <button type ="submit" value="Inserir Veiculo">Inserir Veículo</button><br><br>
                    </div>
                    <div id="conteudo2"></div>
                </form>  
                        
            </div>
            <%@include file="pag/footer.jsp" %>
        </div>
    </body>
</html>
