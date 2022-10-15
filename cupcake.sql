-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.8-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para cupcake
CREATE DATABASE IF NOT EXISTS `cupcake` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cupcake`;

-- Copiando estrutura para tabela cupcake.cardapio
CREATE TABLE IF NOT EXISTS `cardapio` (
  `cardapio_id` int(11) NOT NULL AUTO_INCREMENT,
  `cardapio_nome` varchar(100) DEFAULT NULL,
  `cardapio_foto` varchar(255) DEFAULT NULL,
  `cardapio_descricao` varchar(500) DEFAULT NULL,
  `cardapio_preco` decimal(10,2) DEFAULT NULL,
  `cardapio_empresa` int(11) DEFAULT NULL,
  `cardapio_disponivel` int(1) DEFAULT NULL,
  PRIMARY KEY (`cardapio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela cupcake.cardapio: ~15 rows (aproximadamente)
/*!40000 ALTER TABLE `cardapio` DISABLE KEYS */;
INSERT INTO `cardapio` (`cardapio_id`, `cardapio_nome`, `cardapio_foto`, `cardapio_descricao`, `cardapio_preco`, `cardapio_empresa`, `cardapio_disponivel`) VALUES
	(1, 'HotDog Simples', '', 'pão, purê de batata e salsicha', 15.00, 5, 1),
	(2, 'HotDog Completo', '', 'pão, purê de batata, salsicha, ervilha, milho e batata palha', 18.00, 5, 1),
	(3, 'Refrigerante Lata', 'fotos\\20211026014015refris.png', 'Refrigerante em lata 350ml', 5.00, 1, 1),
	(4, 'Refrigerante KS', '', 'Refrigerante KS', 5.00, 1, 0),
	(5, 'Coxinha', 'C:\\fakepath\\cachorroquente.jpg', 'Coxinha de frango', 5.00, 1, 0),
	(6, 'Hotdog especial', 'fotos\\cachorroquente.jpg', 'hotdog especial', 20.00, 5, 1),
	(7, 'Hotdog especial', 'fotos\\cachorroquente.jpg20211005T031205+0200', 'hotdog especial', 20.00, 5, 1),
	(8, 'Hotdog especial', 'fotos\\20211005031452cachorroquente.jpg', 'hotdog especial', 20.00, 5, 1),
	(9, 'Cupcake de Chocolate', 'fotos\\20220504015538OIP.jpg', 'Cupcake de Chocolate', 8.00, 1, 1),
	(10, 'Cupcake de Cereja', 'fotos\\20220504015459istockphoto-172770955-170667a.jpg', 'Cupcake de Cereja', 5.00, 1, 1),
	(11, 'Cupcake Chocolate com Menta', 'fotos\\2022050401542418-cupcake-azul-tiffany-com-confeitos-prateados-1.jpg', 'Cupcake Chocolate com Menta', 9.00, 1, 1),
	(12, 'Cupcake Framboesa', 'fotos\\20220504015256R.jpg', 'Cupcake Framboesa', 7.00, 1, 1),
	(13, 'Suco de Laranja', 'fotos\\20211019025019suco de laranja.jpg', 'suco de laranja natural', 10.00, 1, 1),
	(14, 'Café', 'fotos\\20211026125124cafe.webp', 'Café', 3.50, 1, 0),
	(15, 'Cupcake Baunilha', 'fotos\\202205040153371794770.jpg', 'Cupcake Baunilha', 6.00, 1, 1);
/*!40000 ALTER TABLE `cardapio` ENABLE KEYS */;

-- Copiando estrutura para tabela cupcake.empresa
CREATE TABLE IF NOT EXISTS `empresa` (
  `empresa_id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa_nome` varchar(100) DEFAULT NULL,
  `empresa_foto` varchar(255) DEFAULT NULL,
  `empresa_descricao` varchar(500) DEFAULT NULL,
  `empresa_endereco` varchar(100) DEFAULT NULL,
  `empresa_numero` varchar(10) DEFAULT NULL,
  `empresa_complemento` varchar(50) DEFAULT NULL,
  `empresa_bairro` varchar(50) DEFAULT NULL,
  `empresa_municipio` varchar(100) DEFAULT NULL,
  `empresa_uf` varchar(2) DEFAULT NULL,
  `empresa_cep` varchar(9) DEFAULT NULL,
  `empresa_telefone` varchar(20) DEFAULT NULL,
  `empresa_usuario` varchar(30) DEFAULT NULL,
  `empresa_senha` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`empresa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela cupcake.empresa: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` (`empresa_id`, `empresa_nome`, `empresa_foto`, `empresa_descricao`, `empresa_endereco`, `empresa_numero`, `empresa_complemento`, `empresa_bairro`, `empresa_municipio`, `empresa_uf`, `empresa_cep`, `empresa_telefone`, `empresa_usuario`, `empresa_senha`) VALUES
	(1, 'Cupcakes JLC', 'fotos\\\\cupcakejlc.jpg', 'Os mais sabororos da cidade', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cupcake', '202cb962ac59075b964b07152d234b70');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
