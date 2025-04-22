<?php
    include('db/conexao.php');
?>


<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Concenssionária</title>
    <link rel="stylesheet" href="styles/index.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

</head>
<body>
    <header>
        <nav>
            <!-- ? é pra saber que é uma requisição -->
            <a href="index.php?menu=home">HOME</a>
            <a href="index.php?menu=lista">LISTA</a>
        </nav>
    </header>

    <main>
        <?php
        // caso a pag seja home, eu chamo o arquivo do home, se for lista, chamo o arqv lista, se for bug, n chamo nenhum 
        if(isset($_GET['menu'])){
            $pagina = $_GET['menu'];
        }else{
            $pagina = "home"; 
        }

        switch($pagina){
            case 'home':
                include("pages/home/home.php");
                break;
            case 'lista':
                include("pages/receitas/listaReceitas.php");
                break;
            case 'adicionarCarro':
                include("pages/receitas/adicionarReceita.php");
                break;
            case 'dbAdicionarReceita':
                include("pages/receitas/dbAdicionarReceita.php");
                break;
            case 'editarReceita':
                include("pages/receitas/editarReceita.php");
                break;
            case 'dbEditarReceita':
                include("pages/receitas/dbEditarReceita.php");
                break;
            case 'deletarReceita':
                include("pages/receitas/deletarReceita.php");
                break;
            // caso a função n estrja configurada, voltamos pra pg do home
            default:
                include("pages/home/home.php");
                break; 
        }
        ?>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>
</body>
</html>