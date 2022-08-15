
/* Database */
CREATE DATABASE IF NOT EXISTS `webresources` 
USE `webresources`;


/* Table */
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='Tabela para guardar as categorias dos recursos web';


CREATE TABLE IF NOT EXISTS `resource` (
  `resource_id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_name` varchar(255) DEFAULT NULL,
  `resource_description` varchar(255) DEFAULT NULL,
  `resource_link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COMMENT='Tabela para guardar os recursos web';


CREATE TABLE IF NOT EXISTS `resource_category` (
  `category_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  KEY `category_id` (`category_id`),
  KEY `resource_id` (`resource_id`),
  CONSTRAINT `resource_category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `resource_category_ibfk_2` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabela para relacionamento N/N entre categoria e recurso';


/* Inserts */
INSERT INTO `category` (`category_id`, `category_description`) VALUES
	(1, 'Inspiração'),
	(2, 'Ilustrações'),
	(3, 'Ícones'),
	(4, 'Referências'),
	(5, 'Snippets CodePen');


INSERT INTO `resource` (`resource_id`, `resource_name`, `resource_description`, `resource_link`) VALUES
	(1, 'Siteinspire', 'Mais de 7.000 sites e perfis de agências digitais para se inspirar', 'https://siteinspire.com'),
	(2, 'CSSNectar', 'Galeria de design de sites para se inspirar', 'https://cssnectar.com/'),
	(3, 'Skuawk', 'Domínio de fotos públicas licenciado pela CC0 1.0', 'https://skuawk.com/'),
	(4, 'Iconduck', '118.894 ícones e ilustrações de código aberto gratuitos\r\n', 'https://iconduck.com/'),
	(5, 'Screenlane', 'Inspirações de UI Design com publicações semanais e uso gratuito', 'https://screenlane.com/'),
	(6, 'CSSDesignAwards', 'Galeria com sites premiados por boas UIs ou com boa UX', 'https://www.cssdesignawards.com/'),
	(7, 'UI Garage', 'Inspirações e padrões de UI', 'https://uigarage.net/'),
	(8, 'awwwards', 'Sites premiados por design, criatividade e inovação na internet', 'https://www.awwwards.com/'),
	(9, 'Free Frontend', 'Site com diversos snippets para se inspirar ou utilizar em seus projetos', 'https://freefrontend.com'),
	(10, 'Referência de currículo', 'Exemplo de um bom currículo', 'https://jonvieira.com/pdf/Resume.pdf'),
	(11, 'Sistema tipográfico', 'Dicas de como criar um bm sistema tipográfico', 'https://www.instagram.com/p/CKhXc6bAkhU/'),
	(12, 'Máscara para CEP', 'Função em JavaScript puro para validar formato CEP válido', 'https://codepen.io/SilasRodrigues19/pen/bGvgqJz'),
	(13, 'Máscara para número de celular', 'Função em JavaScript puro para validar formato de número de celular', 'https://codepen.io/SilasRodrigues19/pen/XWEpNvZ'),
	(14, 'Links sociais HTML', 'SMS, WhatsApp, Email, Facebook, Twitter e LinkedIn', 'https://codepen.io/SilasRodrigues19/full/qBxxNjK'),
	(15, 'Input accent-color', 'Propriedade para mudar cor de input do tipo radio, checkbox ou range', 'https://codepen.io/SilasRodrigues19/full/GRQQqrL'),
	(16, 'HTML accesskey', 'Tecla de acessibilidade para acionar alguma função do site', 'https://codepen.io/SilasRodrigues19/full/YzeeWWJ'),
	(17, 'Bootstrap datepicker', 'Traduções em português para o bootstrap datepicker', 'https://codepen.io/SilasRodrigues19/full/MWrKmrY'),
	(18, 'Layout Grid Responsivo', 'Grid com estrutura básica e semântica de um site', 'https://codepen.io/SilasRodrigues19/full/gOWVwje'),
	(19, 'Background hover effect', 'Efeito de hover em imagem utilizado no meu portfólio', 'https://codepen.io/SilasRodrigues19/full/gOWVwje'),
	(20, 'CSS Cursor', 'Personalize o cursor do seu site com qualquer ícone ou imagem', 'https://codepen.io/SilasRodrigues19/pen/qBXVGJE'),
	(21, 'Typing CSS', 'Efeito máquina de escrever com CSS puro', 'https://codepen.io/SilasRodrigues19/full/BadmedR'),
	(22, 'background-clip', 'Texto com imagem de fundo', 'https://codepen.io/SilasRodrigues19/full/ZEJadXE'),
	(23, 'Animated Hamburger Menu', 'Menu mobile com animação de abrir e fechar', 'https://codepen.io/SilasRodrigues19/full/dydVxoM'),
	(24, 'text-underline-offset', 'Reposicione o text decoration ', 'https://codepen.io/SilasRodrigues19/full/yLvoNmj'),
	(25, 'Truncate text', 'Coloque reticências em texto que seria quebrado para melhor experiência do usuário', 'https://codepen.io/SilasRodrigues19/full/GRQMbEo'),
	(26, 'contenteditable & spellcheck', 'Propriedades para permitir que o usário edite um texto e para checagem de ortográfia', 'https://codepen.io/SilasRodrigues19/full/ExQwBge'),
	(27, 'HTML Media Capture', 'Recurso para abrir a câmera do celular no input file', 'https://codepen.io/SilasRodrigues19/full/YzeroXo');



INSERT INTO `resource_category` (`category_id`, `resource_id`) VALUES
	(1, 1),
	(1, 2),
	(2, 3),
	(3, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(1, 9),
	(4, 10),
	(4, 11),
	(5, 12),
	(5, 13),
	(5, 14),
	(5, 15),
	(5, 16),
	(5, 17),
	(5, 18),
	(5, 19),
	(5, 20),
	(5, 21),
	(5, 22),
	(5, 23),
	(5, 24),
	(5, 25),
	(5, 26),
	(5, 27);


