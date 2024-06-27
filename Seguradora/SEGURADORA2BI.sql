-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 26-Jun-2024 às 18:26
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `seguradora`
--
CREATE DATABASE IF NOT EXISTS `seguradora` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `seguradora`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `carro`
--

DROP TABLE IF EXISTS `carro`;
CREATE TABLE IF NOT EXISTS `carro` (
  `idCarro` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(40) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `chassi` varchar(17) DEFAULT NULL,
  `placa` varchar(10) NOT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `porte` varchar(15) DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  `anoCarro` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`idCarro`),
  KEY `idCliente` (`idCliente`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `carro`
--

INSERT INTO `carro` (`idCarro`, `marca`, `modelo`, `chassi`, `placa`, `cor`, `porte`, `idCliente`, `anoCarro`) VALUES
(1, 'Ferrari', '458 Italia', NULL, 'LIB0316', 'Vermelho', NULL, 1, '2022'),
(2, 'Citroen', 'C3', NULL, 'ALE1106', 'Branco', NULL, 2, '2021'),
(3, 'Volkswagen', 'fusca 1500', NULL, 'RON2210', 'Azul', NULL, 3, '1989'),
(4, 'Porshe', 'Porshe Taycan Turbo', NULL, 'AUX1609', 'Prata', NULL, 4, '2019'),
(5, 'Land Rover', 'Range Rover Evoque', NULL, 'Isa1705', 'Preto', NULL, 5, '2023');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `rg` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(19) NOT NULL,
  `dataNasc` date NOT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `cep` varchar(15) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `rg` (`rg`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nome`, `cpf`, `rg`, `email`, `telefone`, `dataNasc`, `rua`, `complemento`, `bairro`, `cidade`, `cep`, `uf`) VALUES
(1, 'Carolina Libarino', '575782728', '50.000.000-0', 'carollibarino2@gmail.com', '11 971896071', '2007-09-03', 'diamantino de oliveira', NULL, 'jd pastoril', 'ribeirão pires', '09400420', 'SP'),
(2, 'Alessandra Libarino', '2378686186', '2377864342', 'sandramarzi@gmail.com', '11 998588155', '1976-06-11', 'diamantino de oliveira', NULL, 'jd pastoril', 'ribeirão pires', '09400420', 'SP'),
(3, 'Ronaldo Marinho', '78634632632', '21635725632', 'libarino@gmail.com', '11 973853190', '1975-10-22', 'diamantino de oliveira', NULL, 'jd pastoril', 'ribeirão pires', '09400420', 'SP'),
(4, 'Auxiliadora da Conceição', '217687263', '3278716378', 'xilifeliz@gmail.com', '11 996295741', '1951-09-16', 'diamantino de oliveira', NULL, 'jd pastoril', 'ribeirão pires', '09400420', 'SP'),
(5, 'Isabela Libarino', '2186178623', '2187687126', 'isamlibarino@gmail.com', '11 955904785', '2011-05-17', 'diamantino de oliveira', NULL, 'jd pastoril', 'ribeirão pires', '09400420', 'SP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ocorrencia`
--

DROP TABLE IF EXISTS `ocorrencia`;
CREATE TABLE IF NOT EXISTS `ocorrencia` (
  `idOcorrencia` int NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `rua` varchar(80) DEFAULT NULL,
  `bairro` varchar(80) DEFAULT NULL,
  `cidade` varchar(80) DEFAULT NULL,
  `uf` varchar(20) DEFAULT NULL,
  `idCarro` int DEFAULT NULL,
  `idTipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idOcorrencia`),
  KEY `idCarro` (`idCarro`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `ocorrencia`
--

INSERT INTO `ocorrencia` (`idOcorrencia`, `data`, `hora`, `descricao`, `rua`, `bairro`, `cidade`, `uf`, `idCarro`, `idTipo`) VALUES
(5, '2019-08-26', '17:30:10', 'Cliente trancou chaves no Porta Malas', 'Rua RRED', 'Bairro CCDD', 'Santo André', NULL, 1, 'C111'),
(4, '2019-08-26', '11:10:00', 'Cliente bateu carro em cruzamento com perca Total, aberto sinistro', 'Rua AAA', 'Bairro DD', 'São Paulo', NULL, 4, 'B859'),
(3, '2019-08-26', '11:30:10', 'Cliente teve carro furtado da garagem de sua Residência', 'Rua M', 'Bairro J', 'São Bernardo', NULL, 5, 'R888'),
(2, '2019-08-26', '12:30:10', 'Cliente trancou chaves no Porta Malas', 'Rua H', 'Bairro C', 'Santo André', NULL, 2, 'C111'),
(1, '2019-08-26', '11:00:00', 'Descarregou bateria do carro, pois cliente esqueceu luz interna acesa', 'Rua B', 'Bairro A', 'Mauá', NULL, 1, 'B124');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo`
--

DROP TABLE IF EXISTS `tipo`;
CREATE TABLE IF NOT EXISTS `tipo` (
  `idTipo` varchar(10) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tipo`
--

INSERT INTO `tipo` (`idTipo`, `tipo`) VALUES
('B123', 'Batida Simples'),
('C111', 'Chave Travada'),
('B124', 'Bateria Descarregada'),
('B859', 'Batida Simples'),
('R888', 'Furto');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
