<?php

    $sql = "SELECT id, titulo, autor, tipoDeReceita, imagem
    FROM (
        SELECT id, titulo, autor, tipoDeReceita, imagem
        FROM receitas
        ORDER BY id DESC
        LIMIT 3
    ) AS ultimas_receitas
    ORDER BY id DESC";

    $query = mysqli_query($conexao,$sql) or die("Erro na requisição!".mysqli_error($conexao));

    while($dados = mysqli_fetch_assoc($query)){
        ?>
        <div class="mural1">
            <div class="card1">
                <h2><?=$dados['titulo'] ?></h2>
                <p><?=$dados['autor'] ?></p>
                <p><?=$dados['tipoDeReceita'] ?></p>
                <img src="<?=$dados['imagem'] ?>" alt="">
            </div>
            
        </div>
        <?php
    }
?>