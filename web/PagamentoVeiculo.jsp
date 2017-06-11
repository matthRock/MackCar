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
        <title>Pagamento</title>
    </head>

    <body>
        <div id="site">
            <%@include file="pag/menu2.jsp" %>
            <br/><br/><br/><br/>
            <center>
                <a href="IniciarLocacao.jsp"><img src="imagens/passo1.jpg" alt=""/></a>
                <a href="BuscarVeiculo.jsp"><img src="imagens/passo2.jpg" alt=""/></a>
                <a href="DadosVeiculo.jsp"><img src="imagens/passo3.jpg" alt=""/></a>
                <img src="imagens/passo4v.jpg" alt=""/>
            </center>
            <br/><br/><br/><br/>

            <div id="conteudo">
                <!--<form action = "LocalServlet"  method= "POST">-->
                <form name="form1" action = "Finalizacao.jsp"  method= "POST">
                    <div id="conteudo2"></div>

                    <div id="conteudo3">
                        <h3>Informações de Pagamento</h3>
                        <br/>
                        <!--<input type = "text" name= "formpaga" placeholder="Forma de Pagamento" required="required"/><br><br>-->
                        <input type = "text" name= "ntitular" placeholder="Nome Titular" required="required"/><br><br>
                        <input type="text" name="cpf" onBlur="ValidarCPF(form1.cpf);" onKeyPress="MascaraCPF(form1.cpf);" maxlength="14" placeholder="CPF"><br><br>
                        <select name="bandcartao" id="bandcartao" required="required">
                                <option >Selecionar Bandeira</option>
                                <option value="master">MasterCard</option>
                                <option value="visa">VISA</option>
                                <option value="amex">American Express</option>
                            </select><br/><br/>
                        <input type="tel" name="ncartao" id="ncartao" maxlength="19" placeholder="Número do Cartão" required="required"/><br/><br/>
                        <input type = "month" name= "datav" placeholder="Data Validade" required="required" /><br><br>
                        <input type = "text" name= "codseg" placeholder="Código de Segurança" maxlength="3" required="required"/><br><br>

                        <button type="submit" value="Concluir">Concluir</button><br/><br/>
                    </div>
                    <div id="conteudo3"></div>
                </form>
            </div>
            <%@include file="pag/footer.jsp" %>
        </div>
    </body>
</html>
