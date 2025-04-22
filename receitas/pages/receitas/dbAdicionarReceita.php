<!-- esse arquivo é apenas para incluir os dados no db -->
<!-- <h1>você adicionou um novo carro!</h1> -->

<?php
// defende de comandos que podem alterar o db
$titulo = mysqli_real_escape_string($conexao,$_POST['titulo']);
$descricao = mysqli_real_escape_string($conexao,$_POST['descricao']);
$receitaTexto = mysqli_real_escape_string($conexao,$_POST['receitaTexto']);
$autor = mysqli_real_escape_string($conexao,$_POST['autor']);
$tipoDeReceita = mysqli_real_escape_string($conexao,$_POST['tipoDeReceita']);
$imagem = mysqli_real_escape_string($conexao,$_POST['imagem']);

$sql = "INSERT INTO receitas (
    -- colocar exatamente como tá escrito os nomes das colunas da tabela no db
    titulo,
    descricao,
    receitaTexto,
    autor,
    tipoDeReceita,
    imagem
) VALUES (
    --  devem estar na sequência exata 
    '{$titulo}',
    '{$descricao}',
    '{$receitaTexto}',
    '{$autor}',
    '{$tipoDeReceita}',
    '{$imagem}'
)";

mysqli_query($conexao,$sql) or die("Erro ao adicionar carro".mysqli_error(($conexao)));

echo "A receita de {$titulo} foi adicionado!"
?> 
