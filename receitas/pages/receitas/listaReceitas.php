<h1>VOCÊ ESTÁ NA LISTA DE RECEITAS!</h1>

<a href="index.php?menu=adicionarCarro">
    <button type="button">Adicionar receita</button>
</a>

    <form action="index.php?menu=lista" method="post">
        <input type="text" name="pesquisa" id="pesquisa">
        <button type="submit">Pesquisar</button>
    </form>

<table>
    <tr>
        <th>titulo</th>
        <th>descricao</th>
        <th>receitaTexto</th>
        <th>autor</th>
        <th>tipoDeReceita</th>
    </tr>

<?php
    //UTILIZANDO BANCO DE DADOS
    if(isset($_POST['pesquisa'])){
        $termoPesquisado = $_POST['pesquisa'];
    }else{
        $termoPesquisado = "";
    }

    // upper -> serve para aumentar a caixa de texto
    $sql = "SELECT id,
    upper(titulo) AS titulo,
    upper(descricao) AS descricao,
    upper(receitaTexto) AS receitaTexto,
    upper(autor) AS autor,
    upper(tipoDeReceita) AS tipoDeReceita,
    upper(imagem) AS imagem
    FROM receitas WHERE
    id = '$termoPesquisado' OR 
    titulo LIKE '%$termoPesquisado%
    ORDER BY titulo ASC'
    ";
    // pedidos ao db (conexão com o db) -> query
    $query = mysqli_query($conexao,$sql) or die("Erro na requisição!".mysqli_error($conexao));

    // fetch_assoc -> vai acessar um query e contar os resultados
    while($dados = mysqli_fetch_assoc($query)){
        ?>
        <tr>
            <td><?=$dados['titulo'] ?></td>
            <td><?=$dados['descricao'] ?></td>
            <td><?=$dados['receitaTexto'] ?></td>
            <td><?=$dados['autor'] ?></td>
            <td><?=$dados['tipoDeReceita'] ?></td>
            <td><?=$dados['imagem'] ?></td>
            <!-- EDITAR -->
            <!-- <td><a href="#">Editar</a></td> -->
            <!-- CASO TENHA BOOTSTRAP USAR O TREM ABAIXO, SE N, USAR O DE CIMA QUE 
             FICA A MSM COISA -->
            <!-- & -> linka algo a mais além da pagina chamada, no caso está chamando id de cada carro -->
            <td><a href="index.php?menu=editarReceita&id=<?=$dados['id']?>" class="btn btn-primary">Editar</a></td>
            <!-- DELETAR -->
            <td><a href="index.php?menu=deletarReceita&id=<?=$dados['id']?>" class="btn btn-danger">Deletar</a></td>
        </tr>
        <?php
    }
    ?>
</table>