-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25-Fev-2017 às 23:53
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`) VALUES
(1, 'esporte'),
(2, 'escolar'),
(3, 'mobilidade'),
(4, 'guloseimas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `descricao` text,
  `categoria_id` int(11) DEFAULT NULL,
  `usado` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `preco`, `descricao`, `categoria_id`, `usado`) VALUES
(31, 'ViolÃ£o Tagima', '356.00', 'Descricao deste produto', 3, 0),
(25, 'ImÃ£ de Geladeira', '5.00', 'UtensÃ­lio domÃ©stico', 2, 0),
(28, 'Cerveja usada', '4.00', 'A cerveja foi usada', 4, 1),
(29, 'Garrafa de CafÃ© Usada', '10.00', 'Uma garrafa de cafÃ© bem usada', 4, 1),
(32, 'lapis do futuro', '999.00', 'Ã© um lÃ¡pis que veio do futuro capaz de viajar no tempo entre diversas outras funÃ§Ãµes que somente um lÃ¡pis como este Ã© capaz de fazer.', 2, 0),
(33, 'Ã¡gua cristalina', '123.00', 'Descricao de tudo o que quero descrever', 3, 0),
(36, 'Bala de doce de leite', '2.00', 'docinho de leite', 4, 0),
(39, 'pudim de  doce de leite', '10.00', 'doce de leite delicioso', 4, 0),
(37, 'bala de chocolate', '1.00', 'bala de chocolate', 4, 0),
(38, 'Borracha', '3.00', 'Produto da lista de material escolar', 2, 0),
(40, 'carro audi a4', '20000.00', 'audi a4 bem batido', 3, 1),
(41, 'Pudim de chocolate', '5.00', 'Delicioso pudim de chocolate branco e preto', 4, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
