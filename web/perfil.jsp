<%-- 
    Document   : perfil
    Created on : 07/06/2017, 02:47:53
    Author     : 'Naty
--%>

<%@page import="java.util.List"%>
<%@page import="javabeans.Aluguel"%>
<%@page import="dao.AluguelDAOconcreto"%>
<%@page import="dao.AluguelDAOconcreto"%>
<%@page import="dao.AluguelDAO"%>
<%@page import="javabeans.Cliente"%>
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

            <%@include file="pag/menu2.jsp" %>
            <br/><br/>

            <div id="conteudo">
                <center><h1>Meu Perfil</h1></center>

                <div id="conteudo2"></div>
                <div id="conteudo3">
                    <h2>Informações Pessoais</h2>
                    
                    <p>
                        <%  Cliente clienteAutenticado = (Cliente) session.getAttribute("clienteAutenticado");
                            out.print("<b>Nome:</b> " + clienteAutenticado.getNome());
                        %> 
                    </p>

                    <p><% out.print("<b>Nascimento: </b> " + clienteAutenticado.getDataNasc());%></p> 
                    <p><% out.print("<b>Email:</b> " + clienteAutenticado.getEmail());%></p>
                    <p><% out.print("<b>Sexo: </b> " + clienteAutenticado.getSexo());%> </p>
                    <p><% out.print("<b>Telefone: </b> " + clienteAutenticado.getTelefone());%> </p>
                    <p><% out.print("<b>RG: </b> " + clienteAutenticado.getRg());%> </p>
                    <p><% out.print("<b>CPF: </b> " + clienteAutenticado.getCpf());%> </p>
                    <p><% out.print("<b>CNH: </b> " + clienteAutenticado.getCnh());%> </p>
                    <p><% out.print("<b>Endereço: </b> " + clienteAutenticado.getEndereco());%> </p>
                    <p><% out.print("<b>Complemento: </b> " + clienteAutenticado.getComplemento());%> </p>
                    <p><% out.print("<b>CEP: </b> " + clienteAutenticado.getCep());%> </p>
                    <p><% out.print("<b>Cidade: </b> " + clienteAutenticado.getCidade());%></p>
                    <p><% out.print("<b>Estado: </b> " + clienteAutenticado.getEstado());%></p>
                </div>
                <div id="conteudo3">
                    <br/><br/>
                    <center><img src="imagens/perfil.jpg" alt=""/>
                        <br/><br/><br/><br/>
                        
                        <a href="AtualizaCliente.jsp">Alterar Dados</a>
                                                               
                        <br><br>
                </div>
            </div>
            <%@include file="pag/footer.jsp" %>
        </div>
    </body>
</html>
