<h1>VOCÊ ESTÁ NA LISTA DE RECEITAS!</h1>

<a href="index.php?menu=adicionarCarro">
    <button type="button">Adicionar receita</button>
</a>

    <form action="index.php?menu=lista" method="post">
        <input type="text" name="pesquisa" id="pesquisa">
        <button type="submit">Pesquisar</button>
    </form>

<div>
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
        titulo LIKE '%$termoPesquisado%'
        ORDER BY titulo ASC";
        // pedidos ao db (conexão com o db) -> query
        $query = mysqli_query($conexao,$sql) or die("Erro na requisição!".mysqli_error($conexao));

        if ($termoPesquisado == "") {
            echo "Procure sua Receita!";
        } else {
            // fetch_assoc -> vai acessar um query e contar os resultados
            while($dados = mysqli_fetch_assoc($query)){
                ?>
                    <div>
                        <h2><?=$dados['titulo'] ?></h2>
                        <p><?=$dados['descricao'] ?></p>
                        <td><?=$dados['receitaTexto'] ?></td>
                        <td><?=$dados['autor'] ?></td>
                        <td><?=$dados['tipoDeReceita'] ?></td>
                        <td><?=$dados['imagem'] ?></td>
                        
                        <td><a href="index.php?menu=editarReceita&id=<?=$dados['id']?>" class="btn btn-primary">Editar</a></td>
                    
                        <td><a href="index.php?menu=deletarReceita&id=<?=$dados['id']?>" class="btn btn-danger">Deletar</a></td>
                    </div>
                <?php
            }
        }
        
    ?>
</div>