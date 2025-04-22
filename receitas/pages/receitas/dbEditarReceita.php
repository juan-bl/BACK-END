<!--  -->
  <h3>Atualizar Receita</h3>

<?php
    // defende de comandos que podem alterar o db
    $id = mysqli_real_escape_string($conexao,$_POST['id']);
    $titulo = mysqli_real_escape_string($conexao,$_POST['titulo']);
    $descricao = mysqli_real_escape_string($conexao,$_POST['descricao']);
    $receitaTexto = mysqli_real_escape_string($conexao,$_POST['receitaTexto']);
    $autor = mysqli_real_escape_string($conexao,$_POST['autor']);
    $tipoDeReceita = mysqli_real_escape_string($conexao,$_POST['tipoDeReceita']);
    $imagem = mysqli_real_escape_string($conexao,$_POST['imagem']);

    // UPDATE TABLE SET NAME = NAME WHERE ID -> preciso colocar o where id para especificar onde que quero mudar o nome, pq se n, todos os nomes serão mudados

    $sql = "UPDATE receitas SET
    titulo = '{$titulo}',
    descricao = '{$descricao}',
    receitaTexto = '{$receitaTexto}',
    autor = '{$autor}',
    tipoDeReceita = '{$tipoDeReceita}',
    imagem = '{$imagem}'
    WHERE id = '{$id}'
    ";

    mysqli_query($conexao,$sql) or die("Erro ao atualizar");

    echo "A receita foi atualizada 🤞";
?>