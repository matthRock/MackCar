<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <script src="js/MascaraVali.js" type="text/javascript"></script>

    </head>
    <body>
        <div id="site" >

            <div id="header">
                <%@include file="pag/menu.jsp" %>

                <center><img src="imagens/logo.jpg" alt=""/></center>
            </div>

            <div id="conteudo"><!-- abrimos a div conteudo -->


                <div id="conteudo1" style= "text-align:center">
                    <h1>Login</h1>

                    <form action = "Autenticador" method= "POST">

                        <input type = "text" name= "email" placeholder="E-mail" required="required"/><br><br>
                        <input type = "password" name= "senha" placeholder="********" required="required"/><br><br>
                        <input type="radio" name="adm" value="adm"/>Login Adm<br><br>
                        <button type="submit" class="logar">Logar</button><br><br>

                    </form>
                </div>

                <center><h1>Cadastro</h1></center>
                <div style= "text-align:center"> 
                    <form name="form1" action = "CadastroCliente" method= "POST">
                        <div id="conteudo2">
                            <p>Dados Pessoais</p>
                            <input type = "text" name= "nome" placeholder="Nome Completo" required="required"/><br><br>
                            <input type = "text" name= "sexo" placeholder="Sexo" required="required"/><br><br>
                            <input type = "date" name= "dataNasc" placeholder="Data de Nascimento" required="required" maxlength="10" pattern="[0-9]{2}\/[0-9]{2}\/[0-9]{4}$" min="1900-01-01" max="1999-01-01"/><br><br>
                            <input type="text" name="telefone" onKeyPress="MascaraTelefone(form1.tel);" maxlength="15"  onBlur="ValidaTelefone(form1.tel);" placeholder="Telefone"><br><br>
                            <input name="rg" type="text" id="rg" size="30" maxlength="12" onKeyPress="MascaraRG(form1.rg);" placeholder="RG"/><br><br>
                            <input type="text" name="cpf" onBlur="ValidarCPF(form1.cpf);" onKeyPress="MascaraCPF(form1.cpf);" maxlength="14" placeholder="CPF"><br><br>
                            <input type = "text" name= "cnh" placeholder="CNH" required="required" pattern="[0-9]+$" maxlength="11"/><br><br><br/>

                        </div>
                        <div id="conteudo3">
                            <p>Dados de Contato</p>
                            <input type = "text" name= "estado" placeholder="Estado" required="required"/><br><br>
                            <input type = "text" name= "cidade" placeholder="Cidade" required="required"/><br><br>
                            <input type = "text" name= "endereco" placeholder="Endereço" required="required"/><br><br>
                            <input type = "text" name= "complemento" placeholder="Complemento"/><br><br>
                            <input type="text" name="cep" onKeyPress="MascaraCep(form1.cep); maxlength="10"  placeholder="CEP"><br><br>
                            <input type = "email" name= "email" placeholder="E-mail" required="required" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"/><br><br>
                            <input type = "password" name= "senha" size="20" placeholder="Senha" required="required"/><br><br>
                            <input type = "password" name= "senha2" placeholder="Confirma Senha" required="required"/><br><br>

                            <input  style="background-color:red;color:white;" type="submit" class="Cadastrar" value="Cadastrar"><br/>



                        </div>
                    </form>
                </div>

            </div>

            <%@include file="pag/footer.jsp" %>

        </div>
    </body>
</html>
