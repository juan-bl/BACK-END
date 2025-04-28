-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Abr-2025 às 22:40
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `project_crud`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `receitas`
--

CREATE TABLE `receitas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receitaTexto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoDeReceita` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagem` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `receitas`
--

INSERT INTO `receitas` (`id`, `titulo`, `descricao`, `receitaTexto`, `autor`, `tipoDeReceita`, `imagem`) VALUES
(1, 'Arroz Carreteiro', 'Arroz Carreteiro Tradicional: Receita Autêntica Gaúcha', 'Modo de Preparo:Primeiramente, dessalgue o charque, deixando-o de molho e trocando a água várias vezes. Cozinhe até que fique macio e corte em pedaços pequenos.Em uma panela grande, aqueça o óleo e refogue a cebola, o alho e o pimentão até que fiquem macios.Acrescente o charque e refogue até dourar.', 'Receitas de Pesos', 'Almoço/Janta', 'https://newr7-r7-prod.web.arc-cdn.net/resizer/v2/XNFTSUGJRFCTLLENVCPIZBNGEQ.jpeg?auth=93e866cfc778c5f52bbc64c3c99471a8171a9c1a7880e489dcf0523bf1fd5e23&width=1500&height=1130'),
(2, 'Strogonoff de Frango', 'Nessa receita, você evita 10% de desperdício e economiza', 'Em uma panela, misture o frango, o alho, a maionese, o sal e a pimenta.  2 Em uma frigideira grande, derreta a manteiga e doure a cebola.  3 Junte o frango temperado até que esteja dourado.  4 Adicione os cogumelos, o ketchup e a mostarda.  5 Incorpore o creme de leite e retire do fogo antes de ferver.  6 Sirva com arroz branco e batata palha.', 'Tudo Gostoso', 'Almoço/Jantar', 'https://www.unileverfoodsolutions.com.br/dam/global-ufs/mcos/SLA/calcmenu/recipes/BR-recipes/chicken-&-other-poultry-dishes/strogonoff-de-frango/main-header.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `receitas`
--
ALTER TABLE `receitas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `receitas`
--
ALTER TABLE `receitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
