<?php

    $id=$_GET['id'];

    echo "essa é a receita de N° $id";

    $sql="SELECT * FROM receitas WHERE id = {$id}";
    $query = mysqli_query($conexao,$sql) or die("Erro ao executar a consulta".mysqli_error($conexao));
    $dados = mysqli_fetch_assoc($query);

?>

    <h2>EDITAR RECEITA</h2>

<form action="index.php?menu=dbEditarReceita" method="post">
<div class="form-group">
        <label for="id">N°</label>
        <input value="<?=$id?>" type="text" id="id" name="id">
    </div>
    <div class="form-group">
        <label for="titulo">titulo</label>
        <input value="<?=$dados['titulo']?>" type="text" id="titulo" name="titulo">
    </div>
    <div class="form-group">
        <label for="descricao">descricao</label>
        <input value="<?=$dados['descricao']?>" type="text" id="descricao" name="descricao">
    </div>
    <div class="form-group">
        <label for="receitaTexto">receitaTexto</label>
        <input value="<?=$dados['receitaTexto']?>" type="text" id="receitaTexto" name="receitaTexto">
    </div>
    <div class="form-group">
        <label for="autor">autor</label>
        <input value="<?=$dados['autor']?>"type="text" id="autor" name="autor">
    </div>
    <div class="form-group">
        <label for="tipoDeReceita">Tipo De Receita</label>
        <input value="<?=$dados['tipoDeReceita']?>" type="text" id="tipoDeReceita" name="tipoDeReceita">
    </div>
    <div class="form-group">
        <label for="imagem">Imagem</label>
        <input value="<?=$dados['imagem']?>" type="url" id="imagem" name="imagem">
    </div>
    <button type="submit">Editar</button>
</form>
