-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Fev-2025 às 20:59
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `arthurfernandesestoque`
--
DROP DATABASE IF EXISTS `arthurfernandesestoque`;
CREATE DATABASE IF NOT EXISTS `arthurfernandesestoque` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `arthurfernandesestoque`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `COD_cliente` int(11) NOT NULL COMMENT 'campo resposavel pelo codigo do cliente',
  `nome_cliente` varchar(50) NOT NULL COMMENT 'campo resposavel pelo nome do cliente',
  `endereco` varchar(50) NOT NULL COMMENT 'campo resposavel pelo endereço do cliente',
  `cidade` varchar(45) NOT NULL COMMENT 'campo resposavel pela cidade',
  `CEP` varchar(10) NOT NULL COMMENT 'campo resposavel pelo CEP',
  `CNPJ` varchar(30) NOT NULL COMMENT 'campo resposavel pelo CNPJ',
  `UF` varchar(45) NOT NULL COMMENT 'campo resposavel pela UF',
  `IE` varchar(10) NOT NULL COMMENT 'campo resposavel pelo IF'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`COD_cliente`, `nome_cliente`, `endereco`, `cidade`, `CEP`, `CNPJ`, `UF`, `IE`) VALUES
(20, 'Beth', 'Av Climério n. 45', 'São Paulo', '25679-300', '3248512673268', 'SP', '9280'),
(110, 'Jorge', 'Rua Caiapó 13', 'Curitiba', '30078-500', '1451276498349', 'PR', 'null'),
(130, 'Edmar', 'Rua da Prais s/n', 'Salvador', '30079-300', '234632842349', 'BA', '7121'),
(157, 'Paulo', 'Tv. Moraes c/3', 'Londrina', 'null', '328482233242', 'PR', '1923'),
(180, 'Livio', 'Av. Beira Mar n.1256', 'Florianópolis', '30077-500', '1273657123474', 'SC', 'null'),
(222, 'Lúcia', 'Rua Itabira 123 loja 09', 'Belo Horizonte', '22124-391', '2831521393488', 'MG', '2985'),
(234, 'José', 'Quadra 3 bl. 3 sl 1003', 'Brasilia', '22841-650', '2176357612323', 'DF', '2931'),
(260, 'Susana', 'Rua Lopes Mendes 12', 'Niterói', '30046-500', '217635712-329', 'RJ', '2530'),
(290, 'Renato', 'Rua Meireles n. 123 bl.2 sl.345', 'São Paulo', '30225-900', '1327657112314', 'SP', '1820'),
(390, 'Sebastião', 'Rua da Igreja n. 10', 'Uberaba', '30438-700', '321765472133', 'MG', '9071'),
(410, 'Rodolfo', 'Largo da Lapa 27 sobrado', 'Rio de Janeiro', '30078-900', '1283512823469', 'RJ', '7431'),
(720, 'Ana', 'Rua 17 n.19', 'Niterói', '24358-310', '12113231/0001-34', 'RJ', '2134'),
(830, 'Mauricio', 'Av Paulista 1236 sl/2345', 'São Paulo', '3012-683', '3281698574656', 'SP', '9343'),
(870, 'Flavio', 'Av Pres. Vargas 10', 'São Paulo', '22763-931', '22534126/9387-9', 'SP', '4631');

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_de_pedido`
--

CREATE TABLE `item_de_pedido` (
  `NUM_pedido` int(11) NOT NULL,
  `COD_produto` int(11) NOT NULL,
  `QTDE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `item_de_pedido`
--

INSERT INTO `item_de_pedido` (`NUM_pedido`, `COD_produto`, `QTDE`) VALUES
(121, 25, 10),
(121, 31, 35),
(97, 77, 20),
(101, 31, 9),
(148, 45, 8),
(148, 31, 7),
(148, 77, 3),
(148, 25, 10),
(148, 78, 30),
(104, 53, 32),
(203, 31, 6),
(189, 78, 45),
(143, 31, 20),
(105, 78, 10),
(111, 25, 10),
(111, 78, 70),
(103, 53, 37),
(91, 77, 40),
(138, 22, 10),
(138, 77, 35),
(138, 53, 18),
(108, 13, 17),
(119, 77, 40),
(119, 13, 6),
(119, 22, 10),
(119, 53, 43),
(137, 13, 8),
(101, 78, 18),
(143, 78, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `Num_pedido` int(11) NOT NULL,
  `prazo_entrega` int(10) DEFAULT NULL,
  `COD_cliente` int(11) NOT NULL,
  `COD_vendedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`Num_pedido`, `prazo_entrega`, `COD_cliente`, `COD_vendedor`) VALUES
(91, 20, 260, 11),
(97, 20, 720, 101),
(98, 20, 410, 209),
(101, 15, 720, 101),
(103, 20, 260, 11),
(104, 30, 110, 101),
(105, 15, 180, 240),
(108, 15, 290, 310),
(111, 20, 260, 240),
(112, 20, 260, 240),
(119, 30, 390, 250),
(121, 20, 410, 209),
(127, 10, 410, 11),
(137, 20, 720, 720),
(138, 20, 260, 11),
(143, 30, 20, 111),
(148, 20, 720, 101),
(189, 15, 870, 213),
(203, 30, 830, 250);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `COD_produto` int(11) NOT NULL,
  `unidade_produto` varchar(10) DEFAULT NULL,
  `desc_produto` varchar(50) DEFAULT NULL,
  `valor_unit` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`COD_produto`, `unidade_produto`, `desc_produto`, `valor_unit`) VALUES
(13, 'G', 'Ouro', 6.18),
(22, 'M', 'Linho', 0.11),
(25, 'Kg', 'Queijo', 0.97),
(30, 'SAC', 'Açucar', 0.30),
(31, 'Bar', 'Chocolate', 0.87),
(45, 'M', 'Madeira', 0.25),
(53, 'M', 'Linha', 1.80),
(77, 'M', 'Papel', 1.05),
(78, 'L', 'Vinho', 2.00),
(87, 'M', 'Cano', 1.97);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `Cod_vendedor` int(11) NOT NULL,
  `Nome_vendedor` varchar(50) DEFAULT NULL,
  `Sal_fixo` decimal(15,2) DEFAULT NULL,
  `FaixaComissao` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `vendedor`
--

INSERT INTO `vendedor` (`Cod_vendedor`, `Nome_vendedor`, `Sal_fixo`, `FaixaComissao`) VALUES
(11, 'João', 2780.00, 'C'),
(101, 'João', 2650.32, 'C'),
(111, 'Carlos', 2490.00, 'A'),
(209, 'José', 1800.00, 'C'),
(213, 'Jonas', 2300.50, 'A'),
(240, 'Antonio', 9500.00, 'C'),
(250, 'Mauricío', 2930.00, 'B'),
(310, 'Josias', 870.00, 'B'),
(720, 'Felipe', 4600.00, 'A');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`COD_cliente`);

--
-- Índices para tabela `item_de_pedido`
--
ALTER TABLE `item_de_pedido`
  ADD KEY `FK_NUM_pedido` (`NUM_pedido`),
  ADD KEY `FK_COD_produto` (`COD_produto`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`Num_pedido`),
  ADD KEY `FK_CLIENTE_PEDIDO` (`COD_cliente`),
  ADD KEY `FK_VENDEDOR_PEDIDO` (`COD_vendedor`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`COD_produto`);

--
-- Índices para tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`Cod_vendedor`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `item_de_pedido`
--
ALTER TABLE `item_de_pedido`
  ADD CONSTRAINT `FK_COD_produto` FOREIGN KEY (`COD_produto`) REFERENCES `produto` (`COD_produto`),
  ADD CONSTRAINT `FK_NUM_pedido` FOREIGN KEY (`NUM_pedido`) REFERENCES `pedido` (`Num_pedido`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `FK_CLIENTE_PEDIDO` FOREIGN KEY (`COD_cliente`) REFERENCES `cliente` (`COD_cliente`),
  ADD CONSTRAINT `FK_VENDEDOR_PEDIDO` FOREIGN KEY (`COD_vendedor`) REFERENCES `vendedor` (`Cod_vendedor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
