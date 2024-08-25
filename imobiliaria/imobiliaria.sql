-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 25-Ago-2024 às 21:59
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
-- Banco de dados: `imobiliaria`
--
CREATE DATABASE IF NOT EXISTS `imobiliaria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `imobiliaria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluguel`
--

DROP TABLE IF EXISTS `aluguel`;
CREATE TABLE IF NOT EXISTS `aluguel` (
  `id_aluguel` int NOT NULL AUTO_INCREMENT,
  `inicio` date DEFAULT NULL,
  `fim` date DEFAULT NULL,
  `valor` decimal(6,2) DEFAULT NULL,
  `id_corretor` int DEFAULT NULL,
  `id_inquilino` int DEFAULT NULL,
  `id_imovel` int DEFAULT NULL,
  PRIMARY KEY (`id_aluguel`),
  KEY `id_corretor` (`id_corretor`),
  KEY `id_inquilino` (`id_inquilino`),
  KEY `id_imovel` (`id_imovel`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `aluguel`
--

INSERT INTO `aluguel` (`id_aluguel`, `inicio`, `fim`, `valor`, `id_corretor`, `id_inquilino`, `id_imovel`) VALUES
(1, '2024-01-01', '2024-12-31', '1321.00', 1, 1, 1),
(2, '2024-02-01', '2025-01-31', '2320.00', 2, 2, 2),
(3, '2024-03-01', '2025-02-28', '993.00', 3, 3, 3),
(4, '2024-04-01', '2025-03-31', '1827.99', 4, 4, 4),
(5, '2024-05-01', '2025-04-30', '2375.00', 5, 5, 5),
(6, '2024-06-01', '2025-05-31', '9826.99', 6, 6, 11),
(7, '2024-07-01', '2025-06-30', '2092.00', 7, 7, 12),
(8, '2024-08-01', '2025-07-31', '1872.99', 8, 8, 13),
(9, '2024-09-01', '2025-08-31', '2182.00', 9, 9, 14),
(10, '2024-10-01', '2025-09-30', '1920.00', 10, 10, 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `corretor`
--

DROP TABLE IF EXISTS `corretor`;
CREATE TABLE IF NOT EXISTS `corretor` (
  `id_corretor` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(191) NOT NULL,
  `cpf` varchar(191) NOT NULL,
  `nasc` date DEFAULT NULL,
  PRIMARY KEY (`id_corretor`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `corretor`
--

INSERT INTO `corretor` (`id_corretor`, `nome`, `email`, `cpf`, `nasc`) VALUES
(1, 'Amanda Ferreira', 'amanda.ferreira@gmail.com', '12345678910', '1986-08-22'),
(2, 'Fernando Alves', 'fernando.alves@yahoo.com', '10987654321', '1979-04-05'),
(3, 'Bianca Teixeira', 'bianca.teixeira@outlook.com', '11122233366', '1984-11-30'),
(4, 'Diego Ribeiro', 'diego.ribeiro@gmail.com', '55566677799', '1991-02-19'),
(5, 'Larissa Martins', 'larissa.martins@hotmail.com', '99988877733', '1987-12-11'),
(6, 'Luana Silva', 'luana.silva@email.com', '12398765432', '1982-09-15'),
(7, 'Rodrigo Souza', 'rodrigo.souza@gmail.com', '23487654321', '1985-05-04'),
(8, 'Natália Costa', 'natalia.costa@gmail.com', '34576543210', '1990-12-20'),
(9, 'João Mendes', 'joao.mendes@yahoo.com', '45665432109', '1978-01-11'),
(10, 'Paula Rodrigues', 'paula.rodrigues@outlook.com', '56754321098', '1993-07-26');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

DROP TABLE IF EXISTS `endereco`;
CREATE TABLE IF NOT EXISTS `endereco` (
  `id_endereco` int NOT NULL AUTO_INCREMENT,
  `bairro` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `CEP` varchar(255) NOT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `id_imovel` int DEFAULT NULL,
  PRIMARY KEY (`id_endereco`),
  KEY `id_imovel` (`id_imovel`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`id_endereco`, `bairro`, `estado`, `cidade`, `rua`, `numero`, `CEP`, `complemento`, `id_imovel`) VALUES
(1, 'Centro', 'SP', 'São Paulo', 'Rua das Flores', '123', '01000-000', 'Apto 12', 1),
(2, 'Copacabana', 'RJ', 'Rio de Janeiro', 'Av. Atlântica', '456', '22000-000', 'Cobertura', 2),
(3, 'Savassi', 'MG', 'Belo Horizonte', 'Rua Sergipe', '789', '30140-000', '', 3),
(4, 'Liberdade', 'SP', 'São Paulo', 'Rua dos Estudantes', '321', '01500-000', 'Casa', 4),
(5, 'Ipanema', 'RJ', 'Rio de Janeiro', 'Rua Visconde de Pirajá', '654', '22400-000', '', 5),
(6, 'Centro', 'RS', 'Porto Alegre', 'Av. Borges de Medeiros', '987', '90000-000', '', 6),
(7, 'Jardins', 'SP', 'São Paulo', 'Alameda Santos', '246', '01400-000', 'Apto 89', 7),
(8, 'Boa Viagem', 'PE', 'Recife', 'Av. Boa Viagem', '159', '51000-000', '', 8),
(9, 'Batel', 'PR', 'Curitiba', 'Rua Alferes Poli', '753', '80400-000', '', 9),
(10, 'Vila Madalena', 'SP', 'São Paulo', 'Rua Harmonia', '864', '05400-000', 'Sobrado', 10),
(11, 'Vila Mariana', 'SP', 'São Paulo', 'Rua Domingos de Morais', '1020', '04009-000', '', 11),
(12, 'Centro', 'RJ', 'Rio de Janeiro', 'Rua da Carioca', '152', '20050-008', '', 12),
(13, 'Savassi', 'MG', 'Belo Horizonte', 'Av. Cristóvão Colombo', '623', '30140-130', 'Loft 25', 13),
(14, 'Centro', 'RS', 'Porto Alegre', 'Rua dos Andradas', '1923', '90020-002', '', 14),
(15, 'Jardim Paulista', 'SP', 'São Paulo', 'Av. Paulista', '1578', '01310-200', 'Apto 102', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fiador`
--

DROP TABLE IF EXISTS `fiador`;
CREATE TABLE IF NOT EXISTS `fiador` (
  `id_fiador` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(191) NOT NULL,
  `cpf` varchar(191) NOT NULL,
  `nasc` date DEFAULT NULL,
  PRIMARY KEY (`id_fiador`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `fiador`
--

INSERT INTO `fiador` (`id_fiador`, `nome`, `email`, `cpf`, `nasc`) VALUES
(1, 'Lucas Pereira', 'lucas.pereira@gmail.com', '11122233344', '1978-03-15'),
(2, 'Aline Rodrigues', 'aline.rodrigues@yahoo.com', '55566677788', '1982-07-22'),
(3, 'Renato Carvalho', 'renato.carvalho@hotmail.com', '99988877766', '1970-11-10'),
(4, 'Camila Moreira', 'camila.moreira@outlook.com', '44455566677', '1989-01-25'),
(5, 'Felipe Almeida', 'felipe.almeida@email.com', '22233344455', '1985-06-17'),
(6, 'Júlio Cezar', 'julio.cezar@gmail.com', '11199988877', '1980-06-29'),
(7, 'Tatiana Lima', 'tatiana.lima@gmail.com', '33344455566', '1984-11-07'),
(8, 'Vinícius Moraes', 'vinicius.moraes@yahoo.com', '88899977766', '1977-02-16'),
(9, 'Beatriz Araújo', 'beatriz.araujo@outlook.com', '22233344477', '1993-08-25'),
(10, 'Marcelo Reis', 'marcelo.reis@gmail.com', '77788899944', '1989-03-12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos`
--

DROP TABLE IF EXISTS `fotos`;
CREATE TABLE IF NOT EXISTS `fotos` (
  `id_foto` int NOT NULL AUTO_INCREMENT,
  `midia` varchar(255) DEFAULT NULL,
  `id_imovel` int DEFAULT NULL,
  PRIMARY KEY (`id_foto`),
  KEY `id_imovel` (`id_imovel`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `fotos`
--

INSERT INTO `fotos` (`id_foto`, `midia`, `id_imovel`) VALUES
(1, 'https://example.com/fotos/imovel1.jpg', 1),
(2, 'https://example.com/fotos/imovel2.jpg', 2),
(3, 'https://example.com/fotos/imovel3.jpg', 3),
(4, 'https://example.com/fotos/imovel4.jpg', 4),
(5, 'https://example.com/fotos/imovel5.jpg', 5),
(6, 'https://example.com/fotos/imovel11.jpg', 11),
(7, 'https://example.com/fotos/imovel12.jpg', 12),
(8, 'https://example.com/fotos/imovel13.jpg', 13),
(9, 'https://example.com/fotos/imovel14.jpg', 14),
(10, 'https://example.com/fotos/imovel15.jpg', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

DROP TABLE IF EXISTS `imovel`;
CREATE TABLE IF NOT EXISTS `imovel` (
  `id_imovel` int NOT NULL AUTO_INCREMENT,
  `qtd_banheiro` int DEFAULT NULL,
  `qts_quarto` int DEFAULT NULL,
  `tamanho` int DEFAULT NULL,
  `garagem` bit(1) DEFAULT NULL,
  `extras` varchar(255) DEFAULT NULL,
  `piscina` bit(1) DEFAULT NULL,
  `lavanderia` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id_imovel`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `imovel`
--

INSERT INTO `imovel` (`id_imovel`, `qtd_banheiro`, `qts_quarto`, `tamanho`, `garagem`, `extras`, `piscina`, `lavanderia`) VALUES
(1, 2, 3, 120, b'1', 'Churrasqueira', b'0', b'1'),
(2, 1, 2, 80, b'0', 'Varanda', b'0', b'0'),
(3, 3, 4, 150, b'1', 'Área Gourmet', b'1', b'1'),
(4, 1, 1, 60, b'0', 'Jardim', b'0', b'1'),
(5, 2, 3, 110, b'1', 'Escritório', b'0', b'0'),
(6, 2, 4, 140, b'1', 'Sauna', b'1', b'1'),
(7, 1, 2, 90, b'0', 'Depósito', b'0', b'0'),
(8, 3, 5, 200, b'1', 'Quadra de esportes', b'1', b'1'),
(9, 2, 3, 130, b'1', 'Playground', b'0', b'1'),
(10, 1, 2, 75, b'0', 'Sala de jogos', b'0', b'0'),
(11, 2, 3, 120, b'1', 'Churrasqueira', b'0', b'1'),
(12, 1, 2, 80, b'0', 'Varanda', b'0', b'0'),
(13, 3, 4, 150, b'1', 'Área Gourmet', b'1', b'1'),
(14, 1, 1, 60, b'0', 'Jardim', b'0', b'1'),
(15, 2, 3, 110, b'1', 'Escritório', b'0', b'0'),
(16, 2, 4, 140, b'1', 'Sauna', b'1', b'1'),
(17, 1, 2, 90, b'0', 'Depósito', b'0', b'0'),
(18, 3, 5, 200, b'1', 'Quadra de esportes', b'1', b'1'),
(19, 2, 3, 130, b'1', 'Playground', b'0', b'1'),
(20, 1, 2, 75, b'0', 'Sala de jogos', b'0', b'0'),
(21, 2, 3, 125, b'1', 'Sala de TV', b'0', b'1'),
(22, 1, 1, 70, b'0', 'Cozinha planejada', b'0', b'0'),
(23, 3, 4, 160, b'1', 'Academia', b'1', b'1'),
(24, 2, 3, 115, b'1', 'Escritório', b'0', b'1'),
(25, 1, 2, 85, b'0', 'Despensa', b'0', b'0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `inquilino`
--

DROP TABLE IF EXISTS `inquilino`;
CREATE TABLE IF NOT EXISTS `inquilino` (
  `id_inquilino` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `nasc` date DEFAULT NULL,
  `id_fiador` int DEFAULT NULL,
  PRIMARY KEY (`id_inquilino`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `email` (`email`),
  KEY `id_fiador` (`id_fiador`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `inquilino`
--

INSERT INTO `inquilino` (`id_inquilino`, `nome`, `cpf`, `email`, `nasc`, `id_fiador`) VALUES
(1, 'Mariana Silva', '11122233355', 'mariana.silva@yahoo.com', '1995-04-08', 1),
(2, 'Gabriel Costa', '66677788811', 'gabriel.costa@gmail.com', '1990-09-18', 2),
(3, 'Eduardo Lima', '44455566688', 'eduardo.lima@hotmail.com', '1983-02-13', 3),
(4, 'Rafaela Souza', '99988877722', 'rafaela.souza@outlook.com', '1992-12-05', 4),
(5, 'Thiago Melo', '22233344499', 'thiago.melo@yahoo.com', '1988-07-14', 5),
(6, 'Gabriela Nogueira', '11199988822', 'gabriela.nogueira@gmail.com', '1996-07-03', 6),
(7, 'Renato Sampaio', '33344455588', 'renato.sampaio@email.com', '1991-11-28', 7),
(8, 'Clarice Batista', '88899977733', 'clarice.batista@outlook.com', '1985-01-09', 8),
(9, 'Pedro Henrique', '22233344455', 'pedro.henrique@yahoo.com', '1994-09-21', 9),
(10, 'Carolina Tavares', '77788899966', 'carolina.tavares@gmail.com', '1987-10-18', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `possui`
--

DROP TABLE IF EXISTS `possui`;
CREATE TABLE IF NOT EXISTS `possui` (
  `id_prop` int DEFAULT NULL,
  `id_imovel` varchar(255) DEFAULT NULL,
  KEY `id_prop` (`id_prop`),
  KEY `id_imovel` (`id_imovel`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `possui`
--

INSERT INTO `possui` (`id_prop`, `id_imovel`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '11'),
(7, '12'),
(8, '13'),
(9, '14'),
(10, '15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
--

DROP TABLE IF EXISTS `proprietario`;
CREATE TABLE IF NOT EXISTS `proprietario` (
  `id_prop` int NOT NULL AUTO_INCREMENT,
  `nasc` date DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(191) NOT NULL,
  `cpf` varchar(191) NOT NULL,
  `telefone` varchar(191) DEFAULT NULL,
  `banco` varchar(191) NOT NULL,
  `agencia` varchar(191) NOT NULL,
  `conta` varchar(191) NOT NULL,
  `pix` varchar(191) NOT NULL,
  `qtd_imovel` int DEFAULT NULL,
  PRIMARY KEY (`id_prop`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `proprietario`
--

INSERT INTO `proprietario` (`id_prop`, `nasc`, `nome`, `email`, `cpf`, `telefone`, `banco`, `agencia`, `conta`, `pix`, `qtd_imovel`) VALUES
(1, '1980-05-12', 'Carlos Silva', 'carlos.silva@gmail.com', '12345678901', '11999998888', 'Banco do Brasil', '1234', '56789-0', 'carlos.silva@gmail.com', 2),
(2, '1975-08-23', 'Maria Oliveira', 'maria.oliveira@email.com', '10987654321', '21988887777', 'Caixa Econômica', '4321', '12345-6', '10987654321', 1),
(3, '1990-02-14', 'José Santos', 'jose.santos@yahoo.com', '11122233344', '31977776666', 'Itaú', '5678', '65432-1', 'jose.santos@yahoo.com', 3),
(4, '1985-07-07', 'Ana Costa', 'ana.costa@gmail.com', '55566677788', '41966665555', 'Bradesco', '8765', '98765-4', '41966665555', 1),
(5, '1970-03-19', 'Paulo Almeida', 'paulo.almeida@gmail.com', '99988877766', '51955554444', 'Santander', '1357', '24680-9', 'paulo.almeida@gmail.com', 2),
(6, '1995-12-30', 'Fernanda Souza', 'fernanda.souza@yahoo.com', '33322211100', '61944443333', 'Nubank', '0246', '13579-8', '61944443333', 1),
(7, '1982-11-11', 'Roberto Lima', 'roberto.lima@outlook.com', '44455566677', '71933332222', 'Inter', '9753', '02468-1', '44455566677', 1),
(8, '1978-04-25', 'Juliana Martins', 'juliana.martins@hotmail.com', '22233344455', '81922221111', 'Sicoob', '8642', '13524-7', 'juliana.martins@hotmail.com', 3),
(9, '1992-09-09', 'Ricardo Barros', 'ricardo.barros@gmail.com', '66677788899', '91911110000', 'Banco Original', '7531', '95162-3', '91911110000', 2),
(10, '1988-06-16', 'Patrícia Ferreira', 'patricia.ferreira@yahoo.com', '77788899900', '11900001111', 'Banrisul', '6420', '84013-6', 'patricia.ferreira@yahoo.com', 1),
(11, '1983-04-21', 'Rafael Nunes', 'rafael.nunes@email.com', '55544433322', '21987654321', 'Itaú', '6789', '01234-5', '55544433322', 1),
(12, '1991-10-02', 'Luciana Fonseca', 'luciana.fonseca@outlook.com', '44433322211', '31976543210', 'Bradesco', '3456', '67890-1', '31976543210', 2),
(13, '1987-12-15', 'Gustavo Andrade', 'gustavo.andrade@hotmail.com', '33322211199', '41965432109', 'Banco do Brasil', '9101', '11213-4', 'gustavo.andrade@hotmail.com', 1),
(14, '1973-07-30', 'Marcela Vieira', 'marcela.vieira@gmail.com', '22211100088', '51954321098', 'Santander', '1121', '41516-7', 'marcela.vieira@gmail.com', 3),
(15, '1999-05-18', 'Bruno Cardoso', 'bruno.cardoso@yahoo.com', '66655544433', '61943210987', 'Caixa Econômica', '1314', '71819-0', '66655544433', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
