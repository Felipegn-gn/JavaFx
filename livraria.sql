-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Set-2025 às 03:14
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `livraria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL,
  `nome_autor` varchar(100) DEFAULT NULL,
  `email_autor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`id_autor`, `nome_autor`, `email_autor`) VALUES
(1, 'Roberto Martins Figueiredo', 'roberto.figueiredo728@example.com'),
(2, 'Daniel Kahneman', 'daniel.kahneman392@example.com'),
(3, 'Hilary Duff', 'hilary.duff814@example.com'),
(4, 'Robson Pinheiro', 'robson.pinheiro105@example.com'),
(5, 'Fabio Benedito de Souza', 'fabio.souza679@example.com'),
(6, 'Arlene Einsenberg', 'arlene.einsenberg234@example.com'),
(7, 'Andrew S. Tanenbaum', 'andrew.tanenbaum513@example.com'),
(8, 'Marcos Pitanga', 'marcos.pitanga847@example.com'),
(9, 'Julio Cesar de Barros', 'julio.barros981@example.com'),
(10, 'Maria Jose Valero', 'maria.valero307@example.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome_cli` varchar(100) DEFAULT NULL,
  `tel_cli` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome_cli`, `tel_cli`) VALUES
(1, 'Joao Silva ', '1111'),
(2, 'Maria Cunha', '2222'),
(3, 'Pedro Aguiar', '8888'),
(4, 'Elaine Luciana', '9374'),
(5, 'Antonio Pereira', '3764'),
(6, 'Catarina Dias', '999'),
(7, 'Felipe Escolar', '8787'),
(8, 'Nando Caixinha', '5478'),
(9, 'Pelé Golias', '7811'),
(10, 'Tito Vardones', '7489');

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `id_editora` int(11) NOT NULL,
  `nome_edit` varchar(100) DEFAULT NULL,
  `fone_edit` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`id_editora`, `nome_edit`, `fone_edit`) VALUES
(1, 'Casa dos Espiritos', '1111'),
(2, 'Id Editora', '2222'),
(3, 'Objetiva', '3333'),
(4, 'Manole', '4444'),
(5, 'Novo Conceito', '5555'),
(6, 'Record', '6666'),
(7, 'Benvira', '7777'),
(8, 'Scipione', '8888'),
(9, 'Appris', '9999'),
(10, 'Atica', '0000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `escreve`
--

CREATE TABLE `escreve` (
  `id_escreve` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL,
  `id_autor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `escreve`
--

INSERT INTO `escreve` (`id_escreve`, `id_livro`, `id_autor`) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 3, 2),
(4, 5, 5),
(5, 6, 6),
(6, 6, 7),
(7, 6, 8),
(8, 7, 9),
(9, 8, 10),
(10, 9, 10),
(11, 10, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `nome_gen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`id_genero`, `nome_gen`) VALUES
(1, 'Espiritualismo'),
(2, 'Infanto-Juvenil'),
(3, 'Economia'),
(4, 'Medicina'),
(5, 'Romance'),
(6, 'Historia'),
(7, 'Fantasia'),
(8, 'Auto-Ajuda'),
(9, 'Informatica'),
(10, 'Educacao'),
(11, 'Humor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_da_venda`
--

CREATE TABLE `itens_da_venda` (
  `id_itens` int(11) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `subtotal` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `itens_da_venda`
--

INSERT INTO `itens_da_venda` (`id_itens`, `id_venda`, `id_livro`, `quantidade`, `subtotal`) VALUES
(1, 1, 1, 1, 36.1),
(2, 3, 1, 1, 36.1),
(3, 4, 1, 1, 36.1),
(4, 5, 1, 1, 36.1),
(5, 5, 1, 1, 36.1),
(6, 5, 1, 1, 36.1),
(7, 6, 6, 1, 37.8),
(8, 7, 2, 1, 27.2),
(9, 8, 3, 1, 43.9),
(10, 9, 1, 1, 36.1),
(11, 6, 1, 1, 36.1),
(12, 1, 1, 1, 36.1),
(13, 4, 1, 1, 36.1),
(14, 7, 2, 1, 27.2),
(15, 9, 1, 1, 36.1),
(16, 3, 1, 1, 36.1),
(17, 8, 4, 1, 32.7),
(18, 2, 1, 1, 36.1),
(19, 4, 1, 1, 36.1),
(20, 6, 1, 1, 36.1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `id_livro` int(11) NOT NULL,
  `titulo_liv` varchar(100) NOT NULL,
  `preco_liv` float DEFAULT NULL,
  `estoque_liv` int(11) DEFAULT 0,
  `id_genero` int(11) NOT NULL,
  `id_editora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`id_livro`, `titulo_liv`, `preco_liv`, `estoque_liv`, `id_genero`, `id_editora`) VALUES
(1, 'Pelas Ruas de Calcuta', 36.1, 5, 1, 1),
(2, 'Devoted - Devocao', 27.2, 4, 2, 2),
(3, 'Rapido e Devagar - Duas Formas de Pensar', 43.9, 8, 3, 3),
(4, 'Xo, Bacteria! Tire Suas Duvidas Com Dr. Bacteria', 32.7, 6, 4, 4),
(5, 'P.s. - Eu Te Amo ', 23.5, 10, 5, 5),
(6, 'O Que Esperar Quando Voce Esta Esperando', 37.8, 20, 4, 6),
(7, 'As Melhores Frases Em Veja', 23.9, 0, 6, 7),
(8, 'Bichos Monstruosos', 24.9, 12, 2, 6),
(9, 'Casas Mal Assombradas', 27.9, 0, 2, 6),
(10, 'Metodologias Ativas Na Pratica Pedagogica', 1.99, 53, 10, 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `id_venda` int(11) NOT NULL,
  `data_venda` date NOT NULL,
  `total_venda` float DEFAULT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`id_venda`, `data_venda`, `total_venda`, `id_cliente`) VALUES
(1, '2024-01-01', 36.1, 1),
(2, '2024-02-02', 27.2, 2),
(3, '2024-03-03', 43.9, 3),
(4, '2024-04-04', 32.7, 4),
(5, '2024-05-05', 23.5, 5),
(6, '2024-06-06', 37.8, 6),
(7, '2024-07-07', 23.9, 7),
(8, '2024-08-08', 24.9, 8),
(9, '2024-09-09', 27.9, 9),
(10, '2024-10-10', 1.99, 10),
(11, '2024-11-11', 99, 1),
(12, '2024-12-12', 59, 2),
(13, '2023-01-02', 46, 3),
(14, '2023-02-01', 399, 4),
(15, '2023-03-04', 42, 5),
(16, '2023-04-03', 79, 6),
(17, '2023-05-06', 130, 7),
(18, '2023-06-05', 245, 8),
(19, '2023-07-06', 19, 9),
(20, '2023-08-09', 14, 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autor`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`id_editora`);

--
-- Índices para tabela `escreve`
--
ALTER TABLE `escreve`
  ADD PRIMARY KEY (`id_escreve`),
  ADD KEY `fk_escreve_livro` (`id_livro`),
  ADD KEY `fk_escreve_autor` (`id_autor`);

--
-- Índices para tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Índices para tabela `itens_da_venda`
--
ALTER TABLE `itens_da_venda`
  ADD PRIMARY KEY (`id_itens`),
  ADD KEY `fk_itens_venda` (`id_venda`),
  ADD KEY `fk_itens_livro` (`id_livro`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id_livro`),
  ADD KEY `fk_livro_genero` (`id_genero`),
  ADD KEY `fk_livro_editora` (`id_editora`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`id_venda`),
  ADD KEY `fk_venda_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autor`
--
ALTER TABLE `autor`
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `editora`
--
ALTER TABLE `editora`
  MODIFY `id_editora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `escreve`
--
ALTER TABLE `escreve`
  MODIFY `id_escreve` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `itens_da_venda`
--
ALTER TABLE `itens_da_venda`
  MODIFY `id_itens` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `id_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `id_venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `escreve`
--
ALTER TABLE `escreve`
  ADD CONSTRAINT `fk_escreve_autor` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`),
  ADD CONSTRAINT `fk_escreve_livro` FOREIGN KEY (`id_livro`) REFERENCES `livro` (`id_livro`);

--
-- Limitadores para a tabela `itens_da_venda`
--
ALTER TABLE `itens_da_venda`
  ADD CONSTRAINT `fk_itens_livro` FOREIGN KEY (`id_livro`) REFERENCES `livro` (`id_livro`),
  ADD CONSTRAINT `fk_itens_venda` FOREIGN KEY (`id_venda`) REFERENCES `venda` (`id_venda`);

--
-- Limitadores para a tabela `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `fk_livro_editora` FOREIGN KEY (`id_editora`) REFERENCES `editora` (`id_editora`),
  ADD CONSTRAINT `fk_livro_genero` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`);

--
-- Limitadores para a tabela `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `fk_venda_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
