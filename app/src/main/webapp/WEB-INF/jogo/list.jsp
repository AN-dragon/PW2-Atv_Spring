<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@taglib uri="jakarta.tags.core" prefix="j" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Lista de Jogos</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
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

        </div>
    </body>
</html>