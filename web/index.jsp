<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div id="site">
             
            <%@include file="pag/menu.jsp" %>
           <%@include file="pag/slide.jsp" %>
            
            <center><h1>Bem Vindo(a)!</h1></center>

            <div id="conteudo">
                
                <div id="conteudo2"></div>
                
                <div id="conteudo1">
                    
                    <h2>Sobre</h2>
                        
                    <h5> Na MackCar, você tem liberdade para adaptar o seu aluguel conforme a sua necessidade.</h5>
                    
                    <h5>Aqui você tem tranquilidade em saber que a nossa equipe estará ao seu lado em todas as etapas da reserva. </h5>
                    
                    <h5>  Nesta página você terá mais informações de como nós trabalhamos.</h5>
                    <hr>
                    
                    <h2>Requisitos para Locação de Veículos no Brasil</h2>
                    
                    <table>
                        <tr>
                            <td><img src="imagens/menor-idade.jpg" alt="" width="75" height="75"/></td>
                            <td><h4> Idade Mínima </h4> 
                                <h5> O locatário/condutor deverá possuir idade mínima de 18 anos. </h5> 
                            </td>
                        </tr>
                        <tr>
                            <td><img src="imagens/cnh.jpg" alt="" width="90" height="75"/></td>
                            <td><h4> Carteira Nacional de Habilitação (CNH)</h4>
                                <h5> O locatário deverá apresentar seu documento de habilitação original,
                                    válido e dentro do prazo de vencimento. </h5>
                            </td>
                        </tr>
                    </table>
                    
                    
                </div>
            </div>

            <%@include file="pag/footer.jsp" %>
        </div>
    </body>
</html>
