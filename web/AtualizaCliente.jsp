<%-- 
    Document   : AtualizaCliente
    Created on : Jun 12, 2017, 11:54:00 AM
    Author     : marcelo
--%>

<%@page import="javabeans.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Atualização de Dados</title>
    </head>   
        
    <body>
        
        <div id="site" class="alert alert-success">

            <%@include file="pag/menu2.jsp" %>
         
        <%  Cliente clienteAutenticado = (Cliente) session.getAttribute("clienteAutenticado");%> 
        
        <h1>Atualização de Dados</h1>
        
        <br/><br/>
            <div id="conteudo"> 
            
            <form name="form1" action = "AtualizaClienteServlet" method= "POST">
            <div id="conteudo1"></div>
                <div style= "text-align:center" >
                    
                    Estado: <input type = "text" name= "estado" value= "<%out.print(clienteAutenticado.getEstado());%>"/><br><br> 
                    Cidade: <input type = "text" name= "cidade" value= "<%out.print(clienteAutenticado.getCidade());%>"/><br><br>
                    Endereço: <input type = "text" name= "endereco" value= "<%out.print(clienteAutenticado.getEndereco());%>"/><br><br>
                    Complemento: <input type = "text" name= "complemento" value= "<%out.print(clienteAutenticado.getComplemento());%>"/><br><br>
                    Telefone: <input type = "text" name= "telefone" value= "<%out.print(clienteAutenticado.getTelefone());%>"/><br><br>
                    CEP: <input type="text" name="cep" onKeyPress="MascaraCep(form1.cep); maxlength="10"  value= "<%out.print(clienteAutenticado.getCep());%>"/><br><br>
                    E-mail: <input type = "email" name= "email" value= "<%out.print(clienteAutenticado.getEmail());%>" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"/><br><br>
                   
                    <input  style="background-color:red;color:white;" type="submit" value="Salvar Modificações"><br/></br>
                    <button><a href="perfil.jsp">Voltar</button></a><br><br>
                    
                </div>
            </form>
        </div> 
               </br></br></br></br></br></br></br>
               </br></br></br></br></br></br></br>
               </br></br></br></br></br></br></br>
               </br></br></br></br></br></br></br>
               
            <%@include file="pag/footer.jsp" %>
        </div>
    </body>
    
    
    
    
    
    
</html>