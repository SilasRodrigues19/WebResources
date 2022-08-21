
-- Copiando estrutura para tabela webresources.category
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabela para guardar as categorias dos recursos web';

-- Copiando dados para a tabela webresources.category: ~11 rows (aproximadamente)
INSERT INTO `category` (`category_id`, `category_description`, `created_at`) VALUES
	(1, 'Inspiração', '2022-08-16 00:14:22'),
	(2, 'Ilustrações', '2022-08-16 00:14:22'),
	(3, 'Ícones & Material UI', '2022-08-16 00:14:22'),
	(4, 'Referências', '2022-08-16 00:14:22'),
	(5, 'Snippets CodePen', '2022-08-16 00:14:22'),
	(6, 'Utilitários para media (imagens, vídeos e gifs)', '2022-08-16 18:48:28'),
	(7, 'Paleta de cores & Gradientes', '2022-08-17 17:09:33'),
	(8, 'Responsividade', '2022-08-17 19:50:07'),
	(9, 'Templates', '2022-08-17 22:59:42'),
	(10, 'Hospedagem', '2022-08-17 23:10:23'),
	(11, 'Geradores / Trechos de códigos', '2022-08-17 23:15:10'),
	(12, 'Jogos', '2022-08-19 22:40:18');

-- Copiando estrutura para tabela webresources.resource
CREATE TABLE IF NOT EXISTS `resource` (
  `resource_id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_name` varchar(255) DEFAULT NULL,
  `resource_description` varchar(255) DEFAULT NULL,
  `resource_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='Tabela para guardar os recursos web';

-- Copiando dados para a tabela webresources.resource: ~134 rows (aproximadamente)
INSERT INTO `resource` (`resource_id`, `resource_name`, `resource_description`, `resource_link`, `created_at`) VALUES
	(1, 'Siteinspire', 'Mais de 7.000 sites e perfis de agências digitais para se inspirar', 'https://siteinspire.com', '2022-08-16 00:14:57'),
	(2, 'CSSNectar', 'Galeria de design de sites para se inspirar', 'https://cssnectar.com/', '2022-08-16 00:14:57'),
	(3, 'Skuawk', 'Domínio de fotos públicas licenciado pela CC0 1.0', 'https://skuawk.com/', '2022-08-16 00:14:57'),
	(4, 'Iconduck', '118.894 ícones e ilustrações de código aberto gratuitos\r\n', 'https://iconduck.com/', '2022-08-16 00:14:57'),
	(5, 'Screenlane', 'Inspirações de UI Design com publicações semanais e uso gratuito', 'https://screenlane.com/', '2022-08-16 00:14:57'),
	(6, 'CSSDesignAwards', 'Galeria com sites premiados por boas UI\'s ou com boa UX', 'https://www.cssdesignawards.com/', '2022-08-16 00:14:57'),
	(7, 'UI Garage', 'Inspirações e padrões de UI', 'https://uigarage.net/', '2022-08-16 00:14:57'),
	(8, 'awwwards', 'Sites premiados por design, criatividade e inovação na internet', 'https://www.awwwards.com/', '2022-08-16 00:14:57'),
	(9, 'Free Frontend', 'Site com diversos snippets para se inspirar ou utilizar em seus projetos', 'https://freefrontend.com', '2022-08-16 00:14:57'),
	(10, 'Referência de currículo', 'Exemplo de um bom currículo', 'https://jonvieira.com/pdf/Resume.pdf', '2022-08-16 00:14:57'),
	(11, 'Sistema tipográfico', 'Dicas de como criar um bm sistema tipográfico', 'https://www.instagram.com/p/CKhXc6bAkhU/', '2022-08-16 00:14:57'),
	(12, 'Máscara para CEP', 'Função em JavaScript puro para validar formato CEP válido', 'https://codepen.io/SilasRodrigues19/pen/bGvgqJz', '2022-08-16 00:14:57'),
	(13, 'Máscara para número de celular', 'Função em JavaScript puro para validar formato de número de celular', 'https://codepen.io/SilasRodrigues19/pen/XWEpNvZ', '2022-08-16 00:14:57'),
	(14, 'Links sociais HTML', 'SMS, WhatsApp, Email, Facebook, Twitter e LinkedIn', 'https://codepen.io/SilasRodrigues19/full/qBxxNjK', '2022-08-16 00:14:57'),
	(15, 'Input accent-color', 'Propriedade para mudar cor de input do tipo radio, checkbox ou range', 'https://codepen.io/SilasRodrigues19/full/GRQQqrL', '2022-08-16 00:14:57'),
	(16, 'HTML accesskey', 'Tecla de acessibilidade para acionar alguma função do site', 'https://codepen.io/SilasRodrigues19/full/YzeeWWJ', '2022-08-16 00:14:57'),
	(17, 'Bootstrap datepicker', 'Traduções em português para o bootstrap datepicker', 'https://codepen.io/SilasRodrigues19/full/MWrKmrY', '2022-08-16 00:14:57'),
	(18, 'Layout Grid Responsivo', 'Grid com estrutura básica e semântica de um site', 'https://codepen.io/SilasRodrigues19/full/gOWVwje', '2022-08-16 00:14:57'),
	(19, 'Background hover effect', 'Efeito de hover em imagem utilizado no meu portfólio', 'https://codepen.io/SilasRodrigues19/full/gOWVwje', '2022-08-16 00:14:57'),
	(20, 'CSS Cursor', 'Personalize o cursor do seu site com qualquer ícone ou imagem', 'https://codepen.io/SilasRodrigues19/pen/qBXVGJE', '2022-08-16 00:14:57'),
	(21, 'Typing CSS', 'Efeito máquina de escrever com CSS puro', 'https://codepen.io/SilasRodrigues19/full/BadmedR', '2022-08-16 00:14:57'),
	(22, 'background-clip', 'Texto com imagem de fundo', 'https://codepen.io/SilasRodrigues19/full/ZEJadXE', '2022-08-16 00:14:57'),
	(23, 'Animated Hamburger Menu', 'Menu mobile com animação de abrir e fechar', 'https://codepen.io/SilasRodrigues19/full/dydVxoM', '2022-08-16 00:14:57'),
	(24, 'text-underline-offset', 'Reposicione o text decoration ', 'https://codepen.io/SilasRodrigues19/full/yLvoNmj', '2022-08-16 00:14:57'),
	(25, 'Truncate text', 'Coloque reticências em texto que seria quebrado para melhor experiência do usuário', 'https://codepen.io/SilasRodrigues19/full/GRQMbEo', '2022-08-16 00:14:57'),
	(26, 'contenteditable & spellcheck', 'Propriedades para permitir que o usário edite um texto e para checagem de ortográfia', 'https://codepen.io/SilasRodrigues19/full/ExQwBge', '2022-08-16 00:14:57'),
	(27, 'HTML Media Capture', 'Recurso para abrir a câmera do celular no input file', 'https://codepen.io/SilasRodrigues19/full/YzeroXo', '2022-08-16 00:14:57'),
	(28, 'Iconify', 'Biblioteca que reúne outras bibliotecas de ícones em um só lugar', 'https://iconify.design', '2022-08-16 00:47:09'),
	(29, 'SNOWEB', 'Biblioteca de ícones SVG', 'https://www.snoweb-svg.com', '2022-08-16 17:59:34'),
	(30, 'Vector Mockups', 'Biblioteca de mockups para Figma', 'https://www.pixsellz.io/vector-mockups-library', '2022-08-16 18:04:30'),
	(31, 'Freebies', 'Diversos UI kits para Figma, Adobe XD, Sketch e em PSD', 'https://freebiesui.com', '2022-08-16 18:06:22'),
	(32, 'Simple Icons', 'Ícones SVG gratuitos para marcas populares', 'https://simpleicons.org', '2022-08-16 18:07:54'),
	(33, 'Free Line Icons', 'Mais de 5 mil ícones SVG em formato de linha', 'https://lineicons.com', '2022-08-16 18:09:24'),
	(34, 'Evil Icons', 'Pacote de ícones SVG com suporte para Rails, Sprockets, Node JS, Gulp, Grunt e CDN.', 'https://evil-icons.io', '2022-08-16 18:11:22'),
	(35, 'Storyset', 'Diversas ilustrações customizáveis e disponíveis em SVG', 'https://storyset.com', '2022-08-16 18:13:51'),
	(36, 'Free 3D Illustration', 'Temas de ilustrações em 3D e com integração para Figma', 'https://3d.khagwal.co', '2022-08-16 18:15:21'),
	(37, 'IRA Design', 'Illustrações customizáveis e em formato SVG', 'https://iradesign.io', '2022-08-16 18:16:22'),
	(38, 'Unsplash', 'Repositório de imagens para uso livre', 'https://unsplash.com', '2022-08-16 18:17:24'),
	(39, 'Pexels', 'Repositório de imagens para uso livre', 'https://www.pexels.com/pt-br/', '2022-08-16 18:18:06'),
	(40, 'Freepik', 'Repositório com imagens em diversos formatos, possui filtro para imagens com uso livre', 'https://br.freepik.com', '2022-08-16 18:19:40'),
	(41, 'Pixabay', 'Mais de 1 milhão de imagens de uso livre', 'https://pixabay.com/pt/', '2022-08-16 18:20:22'),
	(42, 'unDraw', 'Illustrações modernas com possibilidade de adptar a identidade visual do seu site', 'https://undraw.co', '2022-08-16 18:21:23'),
	(43, 'illustrations', 'Kit de illustrações open sorce e de uso livre', 'https://illlustrations.co', '2022-08-16 18:22:30'),
	(44, 'Imagator', 'Comprima,converta, edite e redimencione suas imagens online', 'https://imagator.co', '2022-08-16 23:30:55'),
	(45, 'CapCut', 'Editor de vídeos gratuito e online', 'https://www.capcut.com', '2022-08-16 23:32:15'),
	(46, 'Cleanup Pictures', 'Remova objetos de imagens', 'https://cleanup.pictures', '2022-08-16 23:43:28'),
	(47, 'Magic Eraser', 'Remova objetos de imagens', 'https://www.magiceraser.io', '2022-08-16 23:48:11'),
	(48, 'Edit Photo', 'Editor de imagens online gratuito', 'https://edit.photo', '2022-08-16 23:49:20'),
	(49, 'Baseline', 'Remova background de imagens', 'https://baseline.is/tools/background-remover/', '2022-08-16 23:50:18'),
	(50, 'ZMO', 'Remova objetos de imagens', 'https://baseline.is/tools/background-remover/', '2022-08-16 23:51:02'),
	(51, 'Pika', 'Gere screenshots bonitas para postagem em mídias sociais', 'https://pika.style', '2022-08-16 23:52:07'),
	(52, 'Image Color Picker', 'Obtenha a paleta de cores presente na imagem escolhida', 'https://imagecolorpicker.com', '2022-08-16 23:52:56'),
	(53, 'PNGEgg', 'Banco de imagens com fundo transparente', 'https://www.pngegg.com', '2022-08-16 23:55:12'),
	(54, 'HiClipart', 'Banco de imagens com fundo transparente', 'https://www.hiclipart.com', '2022-08-16 23:55:42'),
	(55, 'PngPix', 'Banco de imagens com fundo transparente', 'https://www.pngpix.com', '2022-08-16 23:56:07'),
	(56, 'PNGWing', 'Banco de imagens com fundo transparente', 'https://www.pngwing.com', '2022-08-16 23:56:36'),
	(57, 'Cloudinary', 'Otimize seus vídeos e imagens, aplique filtros, entre outros.', 'https://cloudinary.com', '2022-08-16 23:59:17'),
	(58, 'Remove BG', 'Remova fundo de imagens', 'https://www.remove.bg/pt-br', '2022-08-16 23:59:49'),
	(59, 'Trace', 'Remova fundo de imagens', 'https://www.stickermule.com/br/trace', '2022-08-17 00:00:26'),
	(60, 'Erase BG', 'Remova fundo de imagens', 'https://www.erase.bg', '2022-08-17 00:01:33'),
	(61, 'SVGOMG', 'Otimize seu SVG online', 'https://jakearchibald.github.io/svgomg/', '2022-08-17 00:02:25'),
	(62, 'Vecta', 'Comprima e otimize seus arquivos SVG', 'https://vecta.io/nano', '2022-08-17 00:03:25'),
	(63, 'EZGIF', 'Diversos utilitários para imagens, gifs e vídeos', 'https://ezgif.com', '2022-08-17 00:04:51'),
	(64, 'AnyConv', 'Conversor de imagem, documentos, vídeos e áudios', 'https://anyconv.com/pt/', '2022-08-17 00:05:50'),
	(65, 'PROMO', 'Redimencione imagens mantendo a proporção', 'https://promo.com/tools/image-resizer/', '2022-08-17 00:06:34'),
	(66, 'colorpalettes.earth', 'Paleta de cores inspirada em paisagens da natureza', 'https://colorpalettes.earth', '2022-08-17 17:15:54'),
	(67, 'Components AI', 'Theme builder, color scale,color system, gradientes', 'https://components.ai/theme', '2022-08-17 17:23:44'),
	(68, 'Eggradients', 'Background gradients', 'https://www.eggradients.com', '2022-08-17 17:25:32'),
	(69, 'Gradient Hunt', 'Projeto open-source com cores gradientes e extensão pro Google Chrome', 'https://gradienthunt.com', '2022-08-17 17:28:20'),
	(70, 'Hex Colors', 'Monte backgrounds gradientes de no máximo 7 cores diferentes', 'https://hexcolor.co/gradient-generator', '2022-08-17 17:30:09'),
	(71, 'CSS Gradient', 'Background gradient com customização de angulo e possibilidade de obter cores de imagem', 'https://cssgradient.io', '2022-08-17 17:32:14'),
	(72, 'uiGradients', 'Backgrounds gradient com exportação em .jpg', 'https://uigradients.com/#Jaipur', '2022-08-17 17:33:37'),
	(73, 'Flat UI Colors', 'Mais de 13 paletas de cores para utilizar em seu projeto', 'https://flatuicolors.com', '2022-08-17 17:36:39'),
	(74, 'colors.lol', 'Paleta de cores com a regra 60-30-10 de UI Design', 'https://colors.lol', '2022-08-17 17:50:19'),
	(75, 'Coolors', 'Paleta de cores com diversos tipos de exportação, integração com Figma e extensão para o Chrome', 'https://coolors.co', '2022-08-17 18:10:30'),
	(76, 'Color Scale', 'Ferramenta para escalar as cores, bem útil para determinar peso tipográfico', 'https://hihayk.github.io/scale/#4/6/35/46/-0/0/20/14/2DC7ED/45/199/237/white', '2022-08-17 18:12:40'),
	(77, 'Color Palette Generator', 'Paleta de cores com exportação em SVG e criação de paleta através de imagem', 'https://colors.muz.li', '2022-08-17 18:15:19'),
	(78, 'Curated Color Palette', 'Paleta de cores selecionada para boas UI\'s', 'https://www.colorion.co', '2022-08-17 18:19:44'),
	(79, 'ColorSpace', 'Gere uma paleta de cores a partir de uma cor inicial informada', 'https://mycolor.space', '2022-08-17 18:56:32'),
	(80, 'Randoma11y', 'Gere 2 cores com um excelente contraste', 'https://randoma11y.com', '2022-08-17 18:59:57'),
	(81, 'WebGradients', 'Coleção de mais de 180 backgrounds gradientes dos mais variados', 'https://webgradients.com', '2022-08-17 19:01:25'),
	(82, 'Color Hunt', 'Paleta de cores selecionadas para boas UI\'s', 'https://colorhunt.co', '2022-08-17 19:02:45'),
	(83, 'Happy Hues', 'Paleta de cores selecionadas em contexto', 'https://www.happyhues.co', '2022-08-17 19:03:56'),
	(84, 'Simple CSS', 'Gere media queries para qualquer tipo e tamanho de dispositivo', 'https://simplecss.eu', '2022-08-17 22:16:30'),
	(85, 'Browserling', 'Teste a compatibilidade do seu site escolhendo um SO específico, navegador específico e até mesmo a versão', 'https://www.browserling.com', '2022-08-17 22:18:40'),
	(86, 'Responsive Viewer', 'Extensão de navegador para verificar a responsividade do seu site', 'https://chrome.google.com/webstore/detail/responsive-viewer/inmopeiepgfljkpkidclfgbgbmfcennb', '2022-08-17 22:19:59'),
	(87, 'Responsively App', 'Programa para baixar e executar o site para testar a responsividade', 'https://responsively.app', '2022-08-17 22:21:00'),
	(88, 'Am I Responsive?', 'Veja como está a responsividade do seu site de uma forma dinâmica', 'https://ui.dev/amiresponsive', '2022-08-17 22:53:15'),
	(89, 'Angry Tools', 'Ferramenta para testar todas as propriedades de media query', 'https://angrytools.com/css/mediaquery/', '2022-08-17 22:57:02'),
	(90, 'CSS3 Media Queries', 'Cheque quais tipos de media seu navegador suporta', 'http://cssmediaqueries.com/overview.html', '2022-08-17 22:58:32'),
	(91, 'CSS Author', 'Diversos templates, incluindo recursos para Figma e Adobe XD', 'https://cssauthor.com', '2022-08-17 23:07:27'),
	(92, 'Free CSS', 'Coleção de templates e layouts CSS', 'https://www.free-css.com', '2022-08-17 23:08:14'),
	(93, 'UIDeck', 'Landing pages, templates e UI kits', 'https://uideck.com', '2022-08-17 23:09:00'),
	(94, 'InfinityFree', 'Hospedagem gratuita com suporte pra PHP e MySQL e sem anúncios', 'https://www.infinityfree.net', '2022-08-17 23:11:39'),
	(95, '000webhost', 'Hospedagem gratuita com suporte a PHP e MySQL', 'https://br.000webhost.com', '2022-08-17 23:12:46'),
	(96, 'Vercel', 'Hospedagem de sites estáticos, não suporta linguagens de back end', 'https://vercel.com/dashboard', '2022-08-17 23:13:40'),
	(97, 'GitHub Pages', 'Hospedagem de sites estáticos, não suporta linguagens de back end', 'https://pages.github.com', '2022-08-17 23:14:24'),
	(98, 'HTML Code Generator', 'Diversos trechos de código em várias linguagens, bibliotecas e frameworks web', 'https://www.html-code-generator.com', '2022-08-17 23:16:55'),
	(99, 'CSS Layout Generator', 'Templates bem comuns e prontos para utilizar, em Grid e FlexBox', 'https://layout.bradwoods.io', '2022-08-17 23:17:54'),
	(100, 'HTML Boilerplates', 'Boilerplate para estrutura inicial do HTML', 'https://htmlboilerplates.com', '2022-08-17 23:18:56'),
	(101, 'Headless UI', 'Diversos components de UI para React ou Vue', 'https://headlessui.com', '2022-08-17 23:20:03'),
	(102, 'The Component Gallery', 'Coleção de componentes UI', 'https://component.gallery', '2022-08-17 23:21:43'),
	(103, 'Layout patterns', 'Coleção de layouts comuns', 'https://web.dev/patterns/layout/', '2022-08-17 23:23:22'),
	(104, 'Type Scale Clamp', 'Ferramenta de escalonamento de tipografia', 'https://maximeroudier.com/typeScaleClampGenerator/', '2022-08-17 23:25:14'),
	(105, 'Glassmorphism Generator', 'Gerador de estilos com efeito de vidro', 'https://ui.glass/generator/', '2022-08-17 23:26:53'),
	(106, 'Pattern Generator', 'Ferramenta para criar padrões únicos, contínuos e com direito de uso.', 'https://doodad.dev/pattern-generator/', '2022-08-17 23:28:20'),
	(107, 'CSS Scan', 'Botões dos mais variados estilos para utilizar', 'https://getcssscan.com/css-buttons-examples', '2022-08-17 23:29:42'),
	(108, 'MagicPattern', 'Backgrounds com padrões e totalmente customizáveis', 'https://www.magicpattern.design/tools/css-backgrounds', '2022-08-17 23:30:54'),
	(109, 'wweb.dev', 'Backgrounds animados', 'https://wweb.dev/resources/animated-css-background-generator/', '2022-08-17 23:31:35'),
	(110, 'Mesh Gradients', 'Backgrounds com padrões e exportação em .png', 'https://meshgradient.in', '2022-08-17 23:32:50'),
	(111, 'Haikei', 'Padrões modernos para backgrounds, customizáveis e com exporação em .png ou .svg', 'https://haikei.app', '2022-08-17 23:34:12'),
	(112, 'Free Frontend', ' Exemplos de código, tutoriais e artigos gratuitos de HTML, CSS e JavaScript (jQuery, React, Vue) ', 'https://freefrontend.com', '2022-08-17 23:35:07'),
	(113, 'Grid Malven', 'Aprenda sobre as propriedades de CSS Grid através de exemplos visuais', 'https://grid.malven.co', '2022-08-17 23:36:19'),
	(114, 'UIverse', 'Diversos elementos de UI para utilizar de forma gratuita', 'https://uiverse.io', '2022-08-17 23:37:46'),
	(115, 'CSS Pixel Art', 'Ferramenta para criar pixel arts e exportar como código CSS', 'https://fjolt.com/article/css-pixel-art-generator', '2022-08-17 23:38:54'),
	(116, 'Hamburgers', 'Diversos estilos de menu mobile, com diferentes tipos de animação', 'https://jonsuh.com/hamburgers/', '2022-08-17 23:40:23'),
	(117, 'Blobs', 'Gere diferentes padrões de bolhas para utilizar em seu site', 'https://blobs.app', '2022-08-17 23:42:02'),
	(118, 'EnjoyCSS', 'Gere backgrounds, shadows, borders, transitions, transforms, shapes, entre outros', 'https://enjoycss.com', '2022-08-17 23:44:06'),
	(119, 'CSS Generator Tool', 'Gere efeitos de shadow, gradients, borders, filters, entre outros', 'https://cssgenerator.org', '2022-08-17 23:45:48'),
	(120, 'Neumorphic Generator', 'Gerador de estilos de neumorfismo para CSS', 'https://neumorphic.design', '2022-08-17 23:47:14'),
	(121, 'Data Viz Color Palette', 'Paletas de cores em contexto, recomendadas para usar em gráficos', 'https://www.learnui.design/tools/data-color-picker.html', '2022-08-17 23:48:26'),
	(122, 'Fancy Border Radius', 'Gere formatos despadronizados utilizando border-radius', 'https://9elements.github.io/fancy-border-radius/', '2022-08-17 23:49:21'),
	(123, 'Smooth Shadow', 'Gerador de box-shadow suave', 'https://shadows.brumm.af', '2022-08-17 23:50:10'),
	(124, 'Neumorphism', 'Gerador de shadow com efeito de neumorfismo', 'https://neumorphism.io', '2022-08-17 23:50:54'),
	(125, 'Wicked Blocks', 'Coleção gratuita de blocos e componentes para Tailwind CSS', 'https://wickedblocks.dev', '2022-08-17 23:51:34'),
	(126, '30 seconds of code', 'Mais de 1100 trechos de código curtos para diversos tipos de necessidade', 'https://www.30secondsofcode.org', '2022-08-17 23:52:31'),
	(127, 'Flexy Boxes', 'Playground para aprender Flexbox e exportar o código para utilizar', 'https://the-echoplex.net/flexyboxes/', '2022-08-17 23:53:20'),
	(128, 'CSS Grid Generator', 'Playground para aprender Grid e exportar o código para utilizar', 'https://cssgrid-generator.netlify.app', '2022-08-17 23:53:52'),
	(129, 'Layoutit Grid', 'Playground interativo para aprender Grid e exportar o código para utilizar', 'https://grid.layoutit.com', '2022-08-17 23:54:28'),
	(130, 'Devhints', 'Coleção de cheatsheets', 'https://devhints.io', '2022-08-17 23:55:26'),
	(131, 'Web Code Tools', 'Diversos tipos de geradores de código para Front End', 'https://webcode.tools', '2022-08-17 23:56:06'),
	(132, 'BGJar', 'Gerador de background com padrões', 'https://bgjar.com', '2022-08-18 00:05:06'),
	(133, 'Blobmaker', 'Crie shapes randomicos e exporte em .svg', 'https://www.blobmaker.app', '2022-08-18 00:06:15'),
	(134, 'Get Waves', 'Gerador de backgrounds de waves com exportação em .svg', 'https://getwaves.io', '2022-08-18 00:06:57'),
	(135, 'CodeCombat', 'Jogos para aprender Python e JavaScript', 'https://codecombat.com/play/', '2022-08-19 22:43:45'),
	(136, 'JSRobot', 'Aprenda lógica de programação com JavaScript', 'https://lab.reaal.me/jsrobot/', '2022-08-19 22:45:17'),
	(137, 'CheckiO', 'Resolva desafios em TypeScript ou Python', 'https://checkio.org', '2022-08-19 22:47:03'),
	(138, 'Codewars', 'Várias tarefas em diferentes linguagens para praticar', 'https://www.codewars.com/join', '2022-08-19 22:48:34'),
	(139, 'Screeps', 'MMO para programadores', 'https://screeps.com', '2022-08-19 22:51:05'),
	(140, 'Untrusted', 'Jogo para implementar algoritmos em JavaScript', 'https://alexnisnevich.github.io/untrusted/', '2022-08-19 22:53:34'),
	(141, 'Flexbox Froggy', 'Jogo interativo para aprender as propriedades de FlexBox', 'https://flexboxfroggy.com/#pt-br', '2022-08-19 22:56:27'),
	(142, 'Grid Garden', 'Jogo interativo para aprender as propriedades de Grid Layout', 'https://cssgridgarden.com/#pt-br', '2022-08-19 22:56:54'),
	(143, 'CSSBattle', 'Teste suas habilidades CSS resolvendo desafios com o menor código possível', 'https://cssbattle.dev', '2022-08-19 22:57:56'),
	(144, 'Flexbox Defense', 'Jogo interativo para aprender as propriedades de Flexbox', 'http://www.flexboxdefense.com', '2022-08-19 22:59:03'),
	(145, 'CodingGame', 'Aprenda conceitos resolvendo desafios em mais de 25 linguagens', 'https://www.codingame.com/start', '2022-08-19 23:02:21'),
	(146, 'Pixel Game', 'Desenhe uma caixa que corresponda ao width e height informado', 'https://pixact.ly', '2022-08-19 23:05:00');

-- Copiando estrutura para tabela webresources.resource_category
CREATE TABLE IF NOT EXISTS `resource_category` (
  `category_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  KEY `category_id` (`category_id`),
  KEY `resource_id` (`resource_id`),
  CONSTRAINT `resource_category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `resource_category_ibfk_2` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Tabela para relacionamento N/N entre categoria e recurso';

-- Copiando dados para a tabela webresources.resource_category: ~143 rows (aproximadamente)
INSERT INTO `resource_category` (`category_id`, `resource_id`, `created_at`) VALUES
	(1, 1, '2022-08-16 00:15:12'),
	(1, 2, '2022-08-16 00:15:12'),
	(2, 3, '2022-08-16 00:15:12'),
	(3, 4, '2022-08-16 00:15:12'),
	(1, 5, '2022-08-16 00:15:12'),
	(1, 6, '2022-08-16 00:15:12'),
	(1, 7, '2022-08-16 00:15:12'),
	(1, 8, '2022-08-16 00:15:12'),
	(1, 9, '2022-08-16 00:15:12'),
	(4, 10, '2022-08-16 00:15:12'),
	(4, 11, '2022-08-16 00:15:12'),
	(5, 12, '2022-08-16 00:15:12'),
	(5, 13, '2022-08-16 00:15:12'),
	(5, 14, '2022-08-16 00:15:12'),
	(5, 15, '2022-08-16 00:15:12'),
	(5, 16, '2022-08-16 00:15:12'),
	(5, 17, '2022-08-16 00:15:12'),
	(5, 18, '2022-08-16 00:15:12'),
	(5, 19, '2022-08-16 00:15:12'),
	(5, 20, '2022-08-16 00:15:12'),
	(5, 21, '2022-08-16 00:15:12'),
	(5, 22, '2022-08-16 00:15:12'),
	(5, 23, '2022-08-16 00:15:12'),
	(5, 24, '2022-08-16 00:15:12'),
	(5, 25, '2022-08-16 00:15:12'),
	(5, 26, '2022-08-16 00:15:12'),
	(5, 27, '2022-08-16 00:15:12'),
	(3, 28, '2022-08-16 00:47:09'),
	(3, 29, '2022-08-16 17:59:35'),
	(3, 30, '2022-08-16 18:04:30'),
	(3, 31, '2022-08-16 18:06:23'),
	(3, 32, '2022-08-16 18:07:55'),
	(3, 33, '2022-08-16 18:09:24'),
	(3, 34, '2022-08-16 18:11:22'),
	(2, 35, '2022-08-16 18:13:51'),
	(2, 36, '2022-08-16 18:15:21'),
	(2, 37, '2022-08-16 18:16:22'),
	(2, 38, '2022-08-16 18:17:24'),
	(2, 39, '2022-08-16 18:18:06'),
	(2, 40, '2022-08-16 18:19:41'),
	(2, 41, '2022-08-16 18:20:22'),
	(2, 42, '2022-08-16 18:21:24'),
	(2, 43, '2022-08-16 18:22:30'),
	(6, 44, '2022-08-16 23:30:55'),
	(6, 45, '2022-08-16 23:32:15'),
	(6, 46, '2022-08-16 23:43:28'),
	(6, 47, '2022-08-16 23:48:12'),
	(6, 48, '2022-08-16 23:49:20'),
	(6, 49, '2022-08-16 23:50:18'),
	(6, 50, '2022-08-16 23:51:02'),
	(6, 51, '2022-08-16 23:52:07'),
	(6, 52, '2022-08-16 23:52:57'),
	(2, 53, '2022-08-16 23:55:12'),
	(2, 54, '2022-08-16 23:55:42'),
	(2, 55, '2022-08-16 23:56:07'),
	(2, 56, '2022-08-16 23:56:36'),
	(6, 57, '2022-08-16 23:59:17'),
	(6, 58, '2022-08-16 23:59:50'),
	(6, 59, '2022-08-17 00:00:26'),
	(6, 60, '2022-08-17 00:01:33'),
	(6, 61, '2022-08-17 00:02:25'),
	(6, 62, '2022-08-17 00:03:25'),
	(6, 63, '2022-08-17 00:04:51'),
	(6, 64, '2022-08-17 00:05:50'),
	(6, 65, '2022-08-17 00:06:34'),
	(7, 66, '2022-08-17 17:15:54'),
	(3, 67, '2022-08-17 17:23:44'),
	(7, 68, '2022-08-17 17:25:32'),
	(7, 69, '2022-08-17 17:28:21'),
	(7, 70, '2022-08-17 17:30:10'),
	(7, 71, '2022-08-17 17:32:14'),
	(7, 72, '2022-08-17 17:33:37'),
	(7, 73, '2022-08-17 17:36:39'),
	(7, 74, '2022-08-17 17:50:20'),
	(7, 75, '2022-08-17 18:10:31'),
	(7, 76, '2022-08-17 18:12:41'),
	(7, 77, '2022-08-17 18:15:19'),
	(7, 78, '2022-08-17 18:19:45'),
	(7, 79, '2022-08-17 18:56:33'),
	(7, 80, '2022-08-17 18:59:57'),
	(7, 81, '2022-08-17 19:01:25'),
	(7, 82, '2022-08-17 19:02:45'),
	(7, 83, '2022-08-17 19:03:56'),
	(8, 84, '2022-08-17 22:16:31'),
	(8, 85, '2022-08-17 22:18:40'),
	(8, 86, '2022-08-17 22:20:00'),
	(8, 87, '2022-08-17 22:21:00'),
	(8, 88, '2022-08-17 22:53:16'),
	(8, 89, '2022-08-17 22:57:02'),
	(8, 90, '2022-08-17 22:58:33'),
	(9, 91, '2022-08-17 23:07:28'),
	(9, 92, '2022-08-17 23:08:14'),
	(9, 93, '2022-08-17 23:09:00'),
	(10, 94, '2022-08-17 23:11:39'),
	(10, 95, '2022-08-17 23:12:47'),
	(10, 96, '2022-08-17 23:13:41'),
	(10, 97, '2022-08-17 23:14:25'),
	(11, 98, '2022-08-17 23:16:55'),
	(11, 99, '2022-08-17 23:17:54'),
	(11, 100, '2022-08-17 23:18:56'),
	(11, 101, '2022-08-17 23:20:03'),
	(11, 102, '2022-08-17 23:21:43'),
	(11, 103, '2022-08-17 23:23:22'),
	(11, 104, '2022-08-17 23:25:14'),
	(11, 105, '2022-08-17 23:26:53'),
	(11, 106, '2022-08-17 23:28:20'),
	(11, 107, '2022-08-17 23:29:42'),
	(11, 108, '2022-08-17 23:30:54'),
	(11, 109, '2022-08-17 23:31:35'),
	(11, 110, '2022-08-17 23:32:50'),
	(11, 111, '2022-08-17 23:34:12'),
	(11, 112, '2022-08-17 23:35:07'),
	(11, 113, '2022-08-17 23:36:19'),
	(11, 114, '2022-08-17 23:37:47'),
	(11, 115, '2022-08-17 23:38:55'),
	(11, 116, '2022-08-17 23:40:23'),
	(11, 117, '2022-08-17 23:42:02'),
	(11, 118, '2022-08-17 23:44:06'),
	(11, 119, '2022-08-17 23:45:49'),
	(11, 120, '2022-08-17 23:47:14'),
	(7, 121, '2022-08-17 23:48:26'),
	(11, 122, '2022-08-17 23:49:21'),
	(11, 123, '2022-08-17 23:50:10'),
	(11, 124, '2022-08-17 23:50:54'),
	(11, 125, '2022-08-17 23:51:35'),
	(11, 126, '2022-08-17 23:52:31'),
	(11, 127, '2022-08-17 23:53:20'),
	(11, 128, '2022-08-17 23:53:53'),
	(11, 129, '2022-08-17 23:54:28'),
	(11, 130, '2022-08-17 23:55:26'),
	(11, 131, '2022-08-17 23:56:06'),
	(11, 132, '2022-08-18 00:05:06'),
	(11, 133, '2022-08-18 00:06:15'),
	(11, 134, '2022-08-18 00:06:57'),
	(12, 135, '2022-08-19 22:43:45'),
	(12, 136, '2022-08-19 22:45:17'),
	(12, 137, '2022-08-19 22:47:03'),
	(12, 138, '2022-08-19 22:48:34'),
	(12, 139, '2022-08-19 22:51:05'),
	(12, 140, '2022-08-19 22:53:34'),
	(12, 141, '2022-08-19 22:56:27'),
	(12, 142, '2022-08-19 22:56:55'),
	(12, 143, '2022-08-19 22:57:56'),
	(12, 144, '2022-08-19 22:59:04'),
	(12, 145, '2022-08-19 23:02:21'),
	(12, 146, '2022-08-19 23:05:00');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
