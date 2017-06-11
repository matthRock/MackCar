<%-- 
    Document   : TodosUsuarios
    Created on : 08/06/2017, 23:54:26
    Author     : mathe
--%>

<%@page import="dao.ClienteDAOconcreto"%>
<%@page import="java.util.List"%>
<%@page import="javabeans.Cliente"%>
<%@page import="dao.ClienteDAO"%>
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
                    Cliente clienteAutenticado = (Cliente) session.getAttribute("clienteAutenticado");
                    ClienteDAO dao = new ClienteDAOconcreto();
                    List<Cliente> clientes = null;
                    clientes = dao.buscaCliente();
                %>

                <center><h1>Clientes</h1>

                                     
                    <table border="1">
                        <tr>
                            <td>Código do Cliente</td>
                            <td>Nome</td>
                            <td>Sexo</td>
                            <td>Data de Nascimento</td>
                            <td>RG</td>
                            <td>CPF</td>
                            <td>Estado</td>
                            <td>Cidade</td>
                            <td>CNH</td>
                            <td>Endereco</td>
                            <td>Telefone</td>
                            <td>Complemento</td>
                            <td>CEP</td>
                            <td>E-mail</td>
                            <td>Senha</td>

                        </tr>

                        <%
                            for (Cliente c : clientes) {
                        %>

                        <tr>
                            <td><%= c.getCod_cliente()%></td>
                            <td><%= c.getNome()%></td>
                            <td><%= c.getSexo() %></td>
                            <td><%= c.getDataNasc()%></td>
                            <td><%= c.getRg()%></td>
                            <td><%= c.getCpf()%></td>
                            <td><%= c.getEstado()%></td>
                            <td><%= c.getCidade()%></td>
                            <td><%= c.getCnh()%></td>
                            <td><%= c.getEndereco()%></td>
                            <td><%= c.getTelefone()%></td>
                            <td><%= c.getComplemento()%></td>
                            <td><%= c.getCep()%></td>
                            <td><%= c.getEmail()%></td>
                            <td><%= c.getSenha()%></td>
                        </tr>

                        <%
                            }
                        %>

                    </table></center><br><br>    

                <form action = "DeletarAluguel"  method= "POST">
                    <div id="conteudo2"></div>
                    <div id="conteudo-left"></div>
                    <div id="conteudo-right">
                        <h4>Deseja excluir um cliente?</h4>
                        <h5>Digite o código do cliente que você deseja excluir. 
                            Obs: Essa tarefa não pode ser desfeita</h5>

                        <input type = "text" name= "escolha" placeholder="Código do Cliente" required="required"/><br><br> 
                        <button type ="submit" value="Deletar Cliente">Deletar Locação</button><br><br>
                    </div>
                    <div id="conteudo2"></div>
                </form>

            </div>
            <%@include file="pag/footer.jsp" %>
        </div>
    </body>
</html>
