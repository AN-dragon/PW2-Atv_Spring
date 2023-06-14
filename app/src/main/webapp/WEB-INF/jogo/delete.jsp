<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Deletar Jogo</title>
    </head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <body>
        <div class="container">

            <h1>Remover Jogo</h1>

            <p style="font-size: 21px;">
                Tem certeza que deseja remover o jogo ${jogo.titulo}?
            </p>

            <form action="/jogo/delete" method="post">
                <input type="hidden" name="id" value="${jogo.id}" />
            
                <br />

                <a href="/jogo/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-danger">Remover</button>
            </form>
    
        </div>
    </body>
</html>