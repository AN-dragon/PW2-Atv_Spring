<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@taglib uri="jakarta.tags.core" prefix="j" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Lista de Jogos</title>
        <link rel="stylesheet" href="/css/bootstrap.min.css">
    </head>
    <body>

        <div class="container">
            <h1 style="text-align: center;">Jogos</h1>

            <a href="/jogo/insert" class="btn btn-primary">
                Novo Jogo
            </a>

            <table class="table">
                <tr>
                    <td>ID</td>
                    <td>Título</td>
                    <td>Ano de lançamento</td>
                    <td>&nbsp;</td>
                </tr>

                <j:forEach var="jItem" items="${jogos}">
                    <tr>
                        <td>${jItem.id}</td>
                        <td>${jItem.titulo}</td>
                        <td>${jItem.anoDeLancamento}</td>

                    <!--Update e Delete-->
                        <td>
                            <a href="/jogo/update?id=${jItem.id}" class="btn btn-warning">Editar</a>
                            <a href="/jogo/delete?id=${jItem.id}" class="btn btn-danger">Remover</a>
                        </td>
                    </tr>
                </j:forEach>
            
            </table>

            <br />

            <hr style="font-weight: bolder; color: #003246;">

            <p style="text-align: center;">
                Lista de Jogos&trade; - 2023
                
                <br />

                <a href="/" style="text-decoration: none; color: crimson;">
                    Voltar
                </a>
            </p>

        </div>
    </body>
</html>