<?php
    // $sql = "SELECT *,
    // upper(titulo) AS titulo,
    // upper(descricao) AS descricao,
    // upper(receitaTexto) AS receitaTexto,
    // upper(autor) AS autor,
    // upper(tipoDeReceita) AS tipoDeReceita,
    // upper(imagem) AS imagem
    // FROM receitas";

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
        <tr>
            <td><?=$dados['titulo'] ?></td>
            <td><?=$dados['autor'] ?></td>
            <td><?=$dados['tipoDeReceita'] ?></td>
            <td><?=$dados['imagem'] ?></td>
        </tr>
        <?php
    }
?>