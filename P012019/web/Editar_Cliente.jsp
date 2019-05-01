<%-- 
    Document   : Editar_Cliente
    Created on : 13/04/2019, 13:59:27
    Author     : Luan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Cliente</title>
        <% HttpSession sessao = request.getSession();
            if(sessao.getAttribute("sessao") == null) {
                request.setAttribute("erro", "Usuário não autenticado!");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        %>
    </head>
    <body>
        <center>
            <jsp:useBean id="cliente" scope="request" class="com.ifsp.p1.classes.Cliente" />
            <form name="frmEditarCliente" action="ClienteServlet" method="POST">
                <table>
                    <thead>
                        <tr>
                            <th colspan="2">Editar Cliente</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Nome:</td>
                            <td><input type="text" name="nome" value="${cliente.nome}" /></td>
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td><input type="text" name="email" value="${cliente.email}" /></td>
                        </tr>
                        <tr>
                            <td>CPF:</td>
                            <td><input type="text" name="cpf" value="${cliente.cpf}" /></td>
                        </tr>
                        <tr>
                           <td>RG:</td>
                            <td><input type="text" name="rg" value="${cliente.rg}" /></td>
                        </tr>
                        <tr>
                            <td>Idade:</td>
                            <td><input type="text" name="idade" value="${cliente.idade}" /></td>
                        </tr>
                        <tr>
                            <td>Logradouro:</td>
                            <td><input type="text" name="logradouro" value="${cliente.endereco.logradouro}" /></td>
                        </tr>
                        <tr>
                            <td>CEP:</td>
                            <td><input type="text" name="cep" value="${cliente.endereco.cep}" /></td>
                        </tr>
                        <tr>
                            <td>Cidade:</td>
                            <td><input type="text" name="cidade" value="${cliente.endereco.cidade}" /></td>
                        </tr>

                        <tr>
                            <td>Bairro:</td>
                            <td><input type="text" name="bairro" value="${cliente.endereco.bairro}" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Salvar" /></td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </center>
    </body>
</html>
