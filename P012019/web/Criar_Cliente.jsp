<%-- 
    Document   : Criar_Cliente
    Created on : 13/04/2019, 13:41:57
    Author     : Luan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Criar Cliente</title>
        <% HttpSession sessao = request.getSession();
            if(sessao.getAttribute("sessao") == null) {
                request.setAttribute("erro", "Usuário não autenticado!");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        %>
    </head>
    <body>
        <center>
            <form name="frmCriarCliente" action="ClienteServlet" method="POST">
                <table>
                    <thead>
                        <tr>
                            <th colspan="2">Criar Cliente</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Nome:</td>
                            <td><input type="text" name="nome" value="" /></td>
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td><input type="text" name="email" value="" /></td>
                        </tr>
                        <tr>
                            <td>CPF:</td>
                            <td><input type="text" name="cpf" value="" /></td>
                        </tr>
                        <tr>
                           <td>RG:</td>
                            <td><input type="text" name="rg" value="" /></td>
                        </tr>
                        <tr>
                            <td>Idade:</td>
                            <td><input type="text" name="idade" value="" /></td>
                        </tr>
                        <tr>
                            <td>Logradouro:</td>
                            <td><input type="text" name="logradouro" value="" /></td>
                        </tr>
                        <tr>
                            <td>CEP:</td>
                            <td><input type="text" name="cep" value="" /></td>
                        </tr>
                        <tr>
                            <td>Cidade:</td>
                            <td><input type="text" name="cidade" value="" /></td>
                        </tr>

                        <tr>
                            <td>Bairro:</td>
                            <td><input type="text" name="bairro" value="" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Criar" /></td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </center>
    </body>
</html>
