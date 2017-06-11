<%-- 
    Document   : Local
    Created on : 21/04/2017, 19:59:58
    Author     : marcelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <script src="js/MascaraVali.js" type="text/javascript"></script>
        <title> Definir Locais </title>
    </head>

    <body>
        <div id="site">
            <%@include file="pag/menu2.jsp" %>
            <br/><br/><br/><br/>
            <center>
                <img src="imagens/passo1v.jpg" alt=""/>
                <img src="imagens/passo2.jpg" alt=""/>
                <img src="imagens/passo3.jpg" alt=""/>
                <img src="imagens/passo4.jpg" alt=""/>
            </center>
            <br/><br/><br/><br/>

            <div id="conteudo">
                <!--<form action = "LocalServlet"  method= "POST">-->
                <form name="form1" action = "IniciarLocacaoServlet"  method= "POST">
                    <div id="conteudo2"></div>
                    <div id="conteudo-left">
                        <h2>Retirada</h2>
                        <input type = "text" name= "enderecoRet" placeholder="Endereço" required="required"/><br><br>
                        <input type = "text" name= "complementoRet" placeholder="Complemento"/><br><br>
                        <input type="text" name="cepRet" onKeyPress="MascaraCep(form1.cep);" maxlength="10" onBlur="ValidaCep(form1.cep)" placeholder="CEP"><br><br>
                        <input type = "date" name= "dataRet" placeholder="Data" required="required" maxlength="10"/><br><br>
                        <input type = "text" name= "qtdDias" placeholder="Quantidade de Dias" required="required" maxlength="2"/><br><br>
                    </div>
                    <div id="conteudo-right">
                        <h2>Devolução</h2>
                        <input type = "text" name= "enderecoDev" placeholder="Endereço" required="required"/><br><br>
                        <input type = "text" name= "complementoDev" placeholder="Complemento"/><br><br>
                        <input type="text" name="cepDev" onKeyPress="MascaraCep(form1.cep);" maxlength="10" onBlur="ValidaCep(form1.cep)" placeholder="CEP"><br><br>
                        <input type = "date" name= "dataDev" placeholder="Data" required="required" maxlength="10" /><br><br><br/><br/>

                        <button type="submit" value="Continuar">Continuar</button><br/><br/>
                    </div>
                    <div id="conteudo2"></div>

                </form>

            </div>

            <%@include file="pag/footer.jsp" %>

        </div>

    </body>
</html>
