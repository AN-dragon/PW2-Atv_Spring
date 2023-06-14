<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@taglib uri="jakarta.tags.core" prefix="j" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Adicionar Jogo</title>
    </head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <body>
        <div class="container">

            <h1>Novo Jogo</h1>

            <form action="/jogo/insert" method="post">
                <div class="form-group">
                    <label for="titulo">Título:</label>
                    <input type="text" name="titulo" class="form-control" />
                </div>

                <div class="form-group">
                    <label for="anoDeLancamento">Ano de Lançamento:</label>
                    <input type="text" name="anoDeLancamento" class="form-control" />
                </div>

                <br /> 

                <a href="/jogo/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>

        </div>
    </body>
</html>