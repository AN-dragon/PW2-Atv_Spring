<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Modificar Jogo</title>
    </head>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <body>
        <div class="container">

            <h1>Editar Jogo</h1>

            <form action="/jogo/update" method="post">
                <input type="hidden" name="id" value="${jogo.id}" />

                <div class="form-group">
                    <label for="titulo">Título</label>
                    <input type="text" name="titulo" class="form-control" value="${jogo.titulo}" />
                </div>

                <br />

                <div class="form-group">
                    <label for="anoDeLancamento">Ano de Lançamento</label>
                    <input type="text" name="anoDeLancamento" class="form-control" value="${jogo.anoDeLancamento}" />
                </div>

                <br />

                <a href="/jogo/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>

        </div>
    </body>
</html>