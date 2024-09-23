-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Set-2024 às 13:58
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `andar`
--

CREATE TABLE `andar` (
  `codlugar` int(10) NOT NULL,
  `andar` varchar(20) DEFAULT NULL,
  `capacidade` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `andar`
--

INSERT INTO `andar` (`codlugar`, `andar`, `capacidade`) VALUES
(1, '1', 10),
(2, '1', 12),
(3, '1', 14),
(4, '1', 16),
(5, '1', 18),
(6, '1', 20),
(7, '1', 22),
(8, '1', 24),
(9, '1', 26),
(10, '1', 28),
(11, '1', 30),
(12, '1', 32),
(13, '1', 34),
(14, '1', 36),
(15, '1', 38),
(16, '1', 40),
(17, '1', 42),
(18, '1', 44),
(19, '1', 46),
(20, '1', 48);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(20) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `nasc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `nome`, `nasc`) VALUES
('012.345.678-09', 'Juliana Martins', '1983-10-30'),
('012.345.678-19', 'Vinícius Azevedo', '1981-08-12'),
('123.456.789-00', 'Ana Silva', '1990-01-15'),
('123.456.789-10', 'Tiago Mendes', '1994-11-11'),
('234.567.890-01', 'Carlos Oliveira', '1985-02-20'),
('234.567.890-11', 'Sérgio Barros', '1986-12-01'),
('345.678.901-02', 'Mariana Santos', '1992-03-10'),
('345.678.901-12', 'Tatiane Pires', '1975-01-21'),
('456.789.012-03', 'José Ferreira', '1988-04-25'),
('456.789.012-13', 'Lucas Pereira', '1999-02-15'),
('567.890.123-04', 'Luana Costa', '1995-05-30'),
('567.890.123-14', 'Cláudia Teixeira', '1982-03-28'),
('678.901.234-05', 'Roberto Almeida', '1978-06-18'),
('678.901.234-15', 'André Sousa', '1970-04-05'),
('789.012.345-06', 'Patrícia Lima', '1993-07-22'),
('789.012.345-16', 'Bruno Carvalho', '1996-05-17'),
('890.123.456-07', 'Ricardo Gomes', '1980-08-14'),
('890.123.456-17', 'Renata Almeida', '1987-06-22'),
('901.234.567-08', 'Fernanda Rocha', '1991-09-05'),
('901.234.567-18', 'Aline Dias', '1998-07-30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estacionamento`
--

CREATE TABLE `estacionamento` (
  `codestacionamento` int(10) NOT NULL,
  `horasaida` time DEFAULT NULL,
  `horaentrada` time DEFAULT NULL,
  `dataentrada` datetime DEFAULT NULL,
  `datasaida` datetime DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `codlugar` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estacionamento`
--

INSERT INTO `estacionamento` (`codestacionamento`, `horasaida`, `horaentrada`, `dataentrada`, `datasaida`, `placa`, `codlugar`) VALUES
(1, '10:00:00', '08:00:00', '2024-09-20 08:00:00', '2024-09-20 10:00:00', 'ABC1A23', 1),
(2, '11:00:00', '09:00:00', '2024-09-20 09:00:00', '2024-09-20 11:00:00', 'DEF2B34', 2),
(3, '12:00:00', '10:00:00', '2024-09-20 10:00:00', '2024-09-20 12:00:00', 'GHI3C45', 3),
(4, '13:00:00', '11:00:00', '2024-09-20 11:00:00', '2024-09-20 13:00:00', 'JKL4D56', 4),
(5, '14:00:00', '12:00:00', '2024-09-20 12:00:00', '2024-09-20 14:00:00', 'MNO5E67', 5),
(6, '15:00:00', '13:00:00', '2024-09-20 13:00:00', '2024-09-20 15:00:00', 'PQR6F78', 6),
(7, '16:00:00', '14:00:00', '2024-09-20 14:00:00', '2024-09-20 16:00:00', 'STU7G89', 7),
(8, '17:00:00', '15:00:00', '2024-09-20 15:00:00', '2024-09-20 17:00:00', 'VWX8H90', 8),
(9, '18:00:00', '16:00:00', '2024-09-20 16:00:00', '2024-09-20 18:00:00', 'YZA9I01', 9),
(10, '19:00:00', '17:00:00', '2024-09-20 17:00:00', '2024-09-20 19:00:00', 'BCD0J12', 10),
(11, '10:30:00', '08:30:00', '2024-09-20 08:30:00', '2024-09-20 10:30:00', 'EFG1K23', 11),
(12, '11:30:00', '09:30:00', '2024-09-20 09:30:00', '2024-09-20 11:30:00', 'HIJ2L34', 12),
(13, '12:30:00', '10:30:00', '2024-09-20 10:30:00', '2024-09-20 12:30:00', 'KLM3M45', 13),
(14, '13:30:00', '11:30:00', '2024-09-20 11:30:00', '2024-09-20 13:30:00', 'NOP4N56', 14),
(15, '14:30:00', '12:30:00', '2024-09-20 12:30:00', '2024-09-20 14:30:00', 'QRS5O67', 15),
(16, '15:30:00', '13:30:00', '2024-09-20 13:30:00', '2024-09-20 15:30:00', 'TUV6P78', 16),
(17, '16:30:00', '14:30:00', '2024-09-20 14:30:00', '2024-09-20 16:30:00', 'WXY7Q89', 17),
(18, '17:30:00', '15:30:00', '2024-09-20 15:30:00', '2024-09-20 17:30:00', 'ZAB8R90', 18),
(19, '18:30:00', '16:30:00', '2024-09-20 16:30:00', '2024-09-20 18:30:00', 'CDE9S01', 19),
(20, '19:30:00', '17:30:00', '2024-09-20 17:30:00', '2024-09-20 19:30:00', 'FGH0T12', 20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(10) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`) VALUES
(1, 'Fusca'),
(2, 'Civic'),
(3, 'Corolla'),
(4, 'Gol'),
(5, 'Onix'),
(6, 'Palio'),
(7, 'Astra'),
(8, 'Focus'),
(9, 'Sandero'),
(10, 'HB20'),
(11, 'Tracker'),
(12, 'Compass'),
(13, 'Kicks'),
(14, 'Creta'),
(15, 'T-Cross'),
(16, 'Duster'),
(17, 'Ranger'),
(18, 'Hilux'),
(19, 'Maverick'),
(20, 'Tucson');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(10) NOT NULL,
  `codmodelo` int(10) DEFAULT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `ano` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `codmodelo`, `cor`, `cpf`, `ano`) VALUES
('ABC1A23', 1, 'Preto', '123.456.789-00', 2003),
('BCD0J12', 10, 'Roxo', '012.345.678-09', 2000),
('CDE9S01', 9, 'Cinza', '901.234.567-18', 1998),
('DEF2B34', 2, 'Branco', '234.567.890-01', 2000),
('EFG1K23', 1, 'Bege', '123.456.789-10', 2001),
('FGH0T12', 10, 'Amarelo', '012.345.678-19', 1980),
('GHI3C45', 3, 'Vermelho', '345.678.901-02', 1976),
('HIJ2L34', 2, 'Dourado', '234.567.890-11', 2000),
('JKL4D56', 4, 'Azul', '456.789.012-03', 2009),
('KLM3M45', 3, 'Prata', '345.678.901-12', 2020),
('MNO5E67', 5, 'Prata', '567.890.123-04', 2009),
('NOP4N56', 4, 'Preto', '456.789.012-13', 2004),
('PQR6F78', 6, 'Verde', '678.901.234-05', 2019),
('QRS5O67', 5, 'Branco', '567.890.123-14', 2023),
('STU7G89', 7, 'Cinza', '789.012.345-06', 2020),
('TUV6P78', 6, 'Vermelho', '678.901.234-15', 2000),
('VWX8H90', 8, 'Amarelo', '890.123.456-07', 2003),
('WXY7Q89', 7, 'Azul', '789.012.345-16', 2018),
('YZA9I01', 9, 'Laranja', '901.234.567-08', 2000),
('ZAB8R90', 8, 'Verde', '890.123.456-17', 2017);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codlugar`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `estacionamento`
--
ALTER TABLE `estacionamento`
  ADD PRIMARY KEY (`codestacionamento`),
  ADD KEY `placa` (`placa`),
  ADD KEY `codlugar` (`codlugar`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codmodelo` (`codmodelo`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estacionamento`
--
ALTER TABLE `estacionamento`
  ADD CONSTRAINT `estacionamento_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`),
  ADD CONSTRAINT `estacionamento_ibfk_2` FOREIGN KEY (`codlugar`) REFERENCES `andar` (`codlugar`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codmodelo`) REFERENCES `modelo` (`codmodelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
