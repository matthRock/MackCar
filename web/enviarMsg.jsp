<%-- 
    Document   : TodosAlugueis
    Created on : 05/06/2017, 18:44:34
    Author     : marcelo
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Msg</title>
    </head>

    <body>
        <div id="site">

            <%@include file="pag/menu2.jsp" %>

            <br/><br/>
            <div id="conteudo">

                <center><h1>Enviar Mensagens</h1>
                    <form name="form1" id="formulario" autocomplete="off" action = "FinalizacaoMsg.jsp"  method= "POST">
                        <p><input name="campo_nome" type = "text" placeholder="Nome"/></p>
                        <p><input name="campo_email" type = "email"  placeholder="E-mail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"/></p>
                        <p><input name="campo_assunto"type = "text" placeholder="Assunto" required="required"/></p>
                        <p><textarea class="msg" placeholder="Mensagem" cols="35" rows="8" required="required"></textarea></p>
                        <button type ="submit" value="Enviar">Enviar</button><br><br>
                    </form>
                    <a href="Mensagens.jsp"><button>Voltar</button></a><br><br>
                </center>
                <br><br>

            </div>
            <%@include file="pag/footer.jsp" %>
        </div>
    </body>
</html>
