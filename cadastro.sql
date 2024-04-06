-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 19-Maio-2023 às 14:28
-- Versão do servidor: 5.7.36
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `cidade`, `endereco`, `telefone`) VALUES
(1, 'Eduardo', 'educajuru@gmail.com', '$2y$10$VhLaWY0csBw4eVjH/AUDFuz55hXk6pEFGyiGcNoux9vQs9g9B2RiK', '', '', ''),
(2, 'JOse', 'jose@etec.sp.gov.br', '$2y$10$mO75sGArpMaM7OwfqFN1u.gkA0vOYhlrUXKWoFYV7cbjb.ZaDmAGq', '', '', ''),
(3, 'JOse2', 'jose2@etec.sp.gov.br', '$2y$10$MoqiDmu3JRbssfTvQy7cPu3/0G1FgLO2Fl9ODDC0P/6VdkCV3orU6', '', '', ''),
(4, 'a', 'aaaa@gmail.com', '$2y$10$54/wYJE5SuyDiExm6KmqvO/JUAi5zwG1UzDwveBgB/jsr.CD7xL1W', '', '', ''),
(5, 'dsadadsa', 'dsadsa@dsaidhsakjd', '$2y$10$MG8uaDRijm9RW1NQMhxJw.k7ut6nHeabTDR9C8D0ZClHPSftBWXCu', '', '', ''),
(6, 'dsadadsa', 'dsadsa@dsaidhsakjd', '$2y$10$12nn46k2tbAvU4PzIallZubDDUYtaBH9oxynp89jWojLI7MNLRlDW', '', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
