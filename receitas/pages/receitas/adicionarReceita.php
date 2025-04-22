<h2>CADASTRAR RECEITA</h2>

<form action="index.php?menu=dbAdicionarReceita" method="post">
    <div class="form-group">
        <label for="titulo">Titulo:</label>
        <input type="text" id="titulo" name="titulo">
    </div>
    <div class="form-group">
        <label for="descricao">Descrição:</label>
        <input type="text" id="descricao" name="descricao">
    </div>
    <div class="form-group">
        <label for="receitaTexto">Receita:</label>
        <input type="text" id="receitaTexto" name="receitaTexto">
    </div>
    <div class="form-group">
        <label for="autor">Autor:</label>
        <input type="text" id="autor" name="autor">
    </div>
    <div class="form-group">
        <label for="tipoDeReceita">Tipo De Receita:</label>
        <input type="text" id="tipoDeReceita" name="tipoDeReceita">
    </div>
    <div class="form-group">
        <label for="imagem">Imagem:</label>
        <input type="url" id="imagem" name="imagem">
    </div>
    <button type="submit">CADASTRAR</button>
</form>
    