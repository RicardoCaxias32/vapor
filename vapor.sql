-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 29-Nov-2022 às 01:10
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `vapor`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `administrador`
--

INSERT INTO `administrador` (`id`, `nome`, `cpf`, `email`, `senha`) VALUES
(1, 'Matheus de Barros Fagionato', '42381546812', 'mdbf42@gmail.com', 'teste1'),
(2, 'Roberto Arnaldo', '80583687091', 'mdbf43@gmail.com', 'teste2'),
(3, 'Arthud Dent', '73030876055', 'mdbf44@gmail.com', 'teste3'),
(4, 'Seu Cebola', '07924654070', 'mdbf45@gmail.com', 'teste4'),
(5, 'Ronaldo Fenômeno', '01547105046', 'mdbf46@gmail.com', 'teste5');

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivos`
--

CREATE TABLE `arquivos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `assunto` varchar(50) NOT NULL,
  `mensagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `arquivos`
--

INSERT INTO `arquivos` (`id`, `nome`, `email`, `assunto`, `mensagem`) VALUES
(1, 'Ricardo da Silva Caxias', 'caxias32@hotmail.com', 'Criticas', 'Melhora essa merda cidadão.'),
(2, 'Ricardo da Silva Caxias', 'caxias32@hotmail.com', 'Elogios', 'é isso ai não desista'),
(3, 'Ricardo da Silva Caxias', 'caxias32@hotmail.com', 'Duvidas', 'apagar mensagem'),
(4, 'Ricardo da Silva Caxias', 'caxias32@hotmail.com', 'Outros', 'O que é Lorem Ipsum?\r\nLorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de m'),
(5, 'Ricardo da Silva Caxias', 'caxias32@hotmail.com', 'Suporte', 'O que é Lorem Ipsum?\r\nLorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de m'),
(6, 'Ricardo da Silva Caxias', 'caxias32@hotmail.com', 'Outros', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor '),
(7, 'Ricardo da Silva Caxias', 'caxias32@hotmail.com', 'Suporte', 'Brasil rumo ao hexa sera???'),
(8, 'Ricardo Caxias', 'caxias32@hotmail.com', 'Criticas', 'Meu projeto está uma merda'),
(9, 'João da Silva', 'mdbf42@gmail.com', 'Criticas', 'teste de mensagem'),
(10, 'Ricardo Caxias', 'caxias32@hotmail.com', 'Sugestao', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla aliquet enim tortor at auctor. Eget mi proin sed libero enim sed faucibus. Pellentesque elit eget gravida cum sociis natoque.'),
(11, 'Ricardo Caxias', 'caxias32@hotmail.com', 'Sugestao', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla aliquet enim tortor at auctor. Eget mi proin sed libero enim sed faucibus. Pellentesque elit eget gravida cum sociis natoque.'),
(12, 'Ricardo Caxias', 'caxias32@hotmail.com', 'Duvidas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt vitae semper quis lectus. Viverra vitae congue eu consequat ac. Elementum nibh tellus molestie nunc non blandit massa eni');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id`, `nome`) VALUES
(18, 'AMIZADE'),
(17, 'ARCADE'),
(15, 'AVENTURA'),
(16, 'CORRIDA'),
(19, 'ESPORTES'),
(23, 'FPS'),
(24, 'MOBA'),
(20, 'PESCARIA'),
(25, 'RPG'),
(21, 'SIMULADOR'),
(22, 'SUSPENSE'),
(13, 'TERROR');

-- --------------------------------------------------------

--
-- Estrutura da tabela `idioma`
--

CREATE TABLE `idioma` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `idioma`
--

INSERT INTO `idioma` (`id`, `nome`) VALUES
(1, 'Inglês'),
(2, 'Espanhol'),
(3, 'Italiano'),
(4, 'Chines'),
(5, 'Romeno'),
(6, 'Português');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogo`
--

CREATE TABLE `jogo` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `valor` int(11) NOT NULL,
  `descricao` longtext DEFAULT NULL,
  `imagem_url` varchar(200) NOT NULL,
  `video_url` varchar(200) DEFAULT NULL,
  `data_lancamento` date NOT NULL,
  `desenvolvedora` varchar(100) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogo`
--

INSERT INTO `jogo` (`id`, `nome`, `valor`, `descricao`, `imagem_url`, `video_url`, `data_lancamento`, `desenvolvedora`, `id_categoria`) VALUES
(1, 'MINECRAFT', 29, 'Jogo Quadrado', 'https://files.tecnoblog.net/wp-content/uploads/2019/09/minecraft-001.jpg', 'https://www.youtube.com/watch?v=jMe3tdyjouM', '2022-09-09', 'Mojang', 15),
(2, 'THE LAST OF US', 30, 'Jogo de Zumbi', 'https://upload.wikimedia.org/wikipedia/pt/b/be/The_Last_of_Us_capa.png', 'https://www.youtube.com/watch?v=IpjRuuFEPMk', '2022-10-09', 'Naughty Dog', 13),
(4, 'VALORANT', 0, 'Jogo de Tiro e Poderzinho', 'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt3f072336e3f3ade4/63096d7be4a8c30e088e7720/Valorant_2022_E5A2_PlayVALORANT_ContentStackThumbnail_1200x625_MB01.png', 'https://www.youtube.com/watch?v=0qhHKedfvkg', '2021-05-03', 'Riot', 23),
(5, 'LEAGUE OF LEGENDS', 0, 'Jogo de Torres e Poderzinho', 'https://s2.glbimg.com/M4Df2YVeiwElmr4cqNv1J_-gVgQ=/800x0/smart/filters:strip_icc()/s.glbimg.com/po/tt2/f/original/2014/04/03/league-of-legends-10.jpg', 'https://www.youtube.com/watch?v=aR-KAldshAE', '2015-05-03', 'Riot', 24),
(7, 'THE LEGEND OF ZELDA: BREATH OF THE WILD', 300, 'Jogo do Link', 'https://cdn.pocket-lint.com/r/s/970x/assets/images/137952-games-review-the-legend-of-zelda-breath-of-the-wild-review-image1-tbvqza2wel-jpg.webp', 'https://www.youtube.com/watch?v=zw47_q9wbBE', '2017-05-03', 'Nintendo', 15),
(8, 'CUPHEAD', 40, 'Jogo das Xicrina', 'https://conteudo.imguol.com.br/c/entretenimento/fd/2022/02/23/the-cuphead-show-personagem-diabo-1645649422377_v2_900x506.jpg.webp', 'https://www.youtube.com/watch?v=NN-9SQXoi50', '2018-05-03', 'Studio MDHR', 17),
(9, 'BATTLEFIELD 4', 299, 'Melhor FPS que tem', 'https://uploads.jovemnerd.com.br/wp-content/uploads/2021/06/battlefield-4-esta-gratuito-para-pc-no-amazon-prime-gaming.jpg', 'https://www.youtube.com/watch?v=hl-VV9loYLw', '2016-05-03', 'DICE', 23),
(10, 'BATTLEFIELD 2042', 150, 'Trailer é lindo mas o jogo é muito ruim', 'https://uploads.jovemnerd.com.br/wp-content/uploads/2021/11/Battlefield-2042-review.jpg', 'https://www.youtube.com/watch?v=eiAGqqSUqQY', '2021-09-03', 'DICE', 23);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogo_idioma`
--

CREATE TABLE `jogo_idioma` (
  `id` int(11) NOT NULL,
  `id_jogo` int(11) NOT NULL,
  `id_idioma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogo_idioma`
--

INSERT INTO `jogo_idioma` (`id`, `id_jogo`, `id_idioma`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 4),
(6, 2, 3),
(11, 8, 1),
(12, 8, 3),
(13, 4, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogo_plataforma`
--

CREATE TABLE `jogo_plataforma` (
  `id` int(11) NOT NULL,
  `id_jogo` int(11) NOT NULL,
  `id_plataforma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogo_plataforma`
--

INSERT INTO `jogo_plataforma` (`id`, `id_jogo`, `id_plataforma`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(10, 1, 4),
(11, 2, 4),
(13, 7, 8),
(14, 8, 8),
(18, 7, 7),
(19, 7, 8),
(20, 7, 1),
(21, 5, 1),
(22, 9, 1),
(23, 10, 1),
(24, 9, 2),
(25, 9, 3),
(26, 9, 4),
(27, 9, 5),
(28, 9, 6),
(29, 9, 7),
(30, 9, 8),
(31, 4, 1),
(32, 10, 1),
(33, 10, 4),
(34, 10, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `plataforma`
--

CREATE TABLE `plataforma` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `plataforma`
--

INSERT INTO `plataforma` (`id`, `nome`) VALUES
(1, 'PC'),
(2, 'Playstation 2'),
(3, 'Playstation 3'),
(4, 'Playstation 4'),
(5, 'Xbox 360'),
(6, 'Xbox One'),
(7, 'Nintendo Wii'),
(8, 'Nintendo Switch');

-- --------------------------------------------------------

--
-- Estrutura da tabela `suporte`
--

CREATE TABLE `suporte` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `assunto` varchar(50) NOT NULL,
  `mensagem` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `suporte`
--

INSERT INTO `suporte` (`id`, `nome`, `email`, `assunto`, `mensagem`) VALUES
(9, 'João da Silva', 'mdbf42@gmail.com', 'Criticas', 'teste de mensagem'),
(10, 'Ricardo Caxias', 'caxias32@hotmail.com', 'Sugestao', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla aliquet enim tortor at auctor. Eget mi proin sed libero enim sed faucibus. Pellentesque elit eget gravida cum sociis natoque.'),
(11, 'Ricardo Caxias', 'caxias32@hotmail.com', 'Sugestao', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla aliquet enim tortor at auctor. Eget mi proin sed libero enim sed faucibus. Pellentesque elit eget gravida cum sociis natoque. Cursus turpis massa tincidunt dui ut ornare lectus. Bibendum est ultricies integer quis auctor. Tristique sollicitudin nibh sit amet commodo nulla. Sem et tortor consequat id porta nibh venenatis cras sed. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue eget. Id leo in vitae turpis massa sed elementum. Convallis aenean et tortor at risus. Faucibus interdum posuere lorem ipsum dolor. Eu mi bibendum neque egestas congue quisque egestas diam. Volutpat diam ut venenatis tellus in metus. Velit aliquet sagittis id consectetur purus ut faucibus pulvinar elementum. Malesuada nunc vel risus commodo viverra. Erat imperdiet sed euismod nisi porta lorem. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Quisque sagittis purus sit amet. Metus dictum at tempor commodo ullamcorper a.\r\n\r\nEget duis at tellus at urna condimentum. Nibh nisl condimentum id venenatis a condimentum vitae sapien pellentesque. Diam donec adipiscing tristique risus nec feugiat. Sed ullamcorper morbi tincidunt ornare massa eget egestas purus. Diam maecenas ultricies mi eget mauris pharetra et ultrices. Tortor condimentum lacinia quis vel eros donec ac odio tempor. Nibh cras pulvinar mattis nunc sed. Nisi lacus sed viverra tellus in hac habitasse platea. Pretium quam vulputate dignissim suspendisse in est ante. Sagittis purus sit amet volutpat consequat. Sed egestas egestas fringilla phasellus faucibus scelerisque eleifend. Dui sapien eget mi proin sed libero enim sed faucibus. Quis blandit turpis cursus in hac habitasse platea. Ultricies tristique nulla aliquet enim tortor at auctor. Cursus sit amet dictum sit amet justo donec enim diam. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim. Cursus sit amet dictum sit amet justo donec enim diam.\r\n\r\nAliquet nibh praesent tristique magna sit. Augue ut lectus arcu bibendum. Id porta nibh venenatis cras sed felis eget velit aliquet. Massa id neque aliquam vestibulum morbi blandit cursus risus at. Massa ultricies mi quis hendrerit. Tempor orci eu lobortis elementum nibh. Ullamcorper a lacus vestibulum sed arcu non odio. Enim ut tellus elementum sagittis vitae et leo duis. Enim sit amet venenatis urna cursus eget nunc. Risus pretium quam vulputate dignissim suspendisse in est ante in. Tincidunt augue interdum velit euismod in pellentesque massa. In vitae turpis massa sed elementum tempus egestas sed sed. Imperdiet dui accumsan sit amet nulla facilisi.\r\n\r\nMauris vitae ultricies leo integer malesuada nunc vel risus commodo. Cras ornare arcu dui vivamus. Consequat nisl vel pretium lectus quam id leo in vitae. Elit duis tristique sollicitudin nibh. Diam volutpat commodo sed egestas egestas. Quis risus sed vulputate odio ut enim. Cursus metus aliquam eleifend mi in nulla posuere. Amet venenatis urna cursus eget nunc scelerisque viverra mauris. Lacus suspendisse faucibus interdum posuere lorem ipsum. In vitae turpis massa sed elementum tempus. In egestas erat imperdiet sed euismod nisi porta lorem mollis. Vulputate dignissim suspendisse in est ante in nibh mauris. Rhoncus mattis rhoncus urna neque viverra justo nec ultrices. Consectetur purus ut faucibus pulvinar elementum. Mattis aliquam faucibus purus in massa tempor nec feugiat. Mattis pellentesque id nibh tortor. Integer quis auctor elit sed vulputate mi sit amet mauris. Leo urna molestie at elementum eu facilisis sed. Libero nunc consequat interdum varius sit amet. Lorem mollis aliquam ut porttitor leo.\r\n\r\nRisus nec feugiat in fermentum posuere. Id interdum velit laoreet id donec ultrices tincidunt arcu. Sit amet mattis vulputate enim nulla. Molestie ac feugiat sed lectus vestibulum mattis. Dui ut ornare lectus sit amet est placerat. Nullam eget felis eget nunc lobortis mattis aliquam faucibus. Suspendisse faucibus interdum posuere lorem. Id interdum velit laoreet id donec ultrices tincidunt arcu non. In eu mi bibendum neque egestas congue quisque. Nec nam aliquam sem et tortor consequat. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas. Diam phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet. Eu consequat ac felis donec. Sed arcu non odio euismod lacinia at quis risus. Quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna. Ut diam quam nulla porttitor massa id neque aliquam vestibulum. Non quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Ut consequat semper viverra nam libero justo.'),
(12, 'Ricardo Caxias', 'caxias32@hotmail.com', 'Duvidas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt vitae semper quis lectus. Viverra vitae congue eu consequat ac. Elementum nibh tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget. In nulla posuere sollicitudin aliquam. Lacus vel facilisis volutpat est velit egestas dui id ornare. Fames ac turpis egestas sed tempus urna et pharetra pharetra. Cras fermentum odio eu feugiat pretium nibh ipsum consequat. Tempus imperdiet nulla malesuada pellentesque elit eget gravida. Velit laoreet id donec ultrices tincidunt arcu. Lectus magna fringilla urna porttitor. Vestibulum sed arcu non odio. Nulla pellentesque dignissim enim sit amet venenatis. Quam viverra orci sagittis eu volutpat odio facilisis mauris sit. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor aliquam nulla. Aliquam vestibulum morbi blandit cursus risus. Mauris a diam maecenas sed enim ut sem.\r\n\r\nPhasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Risus nullam eget felis eget nunc lobortis mattis aliquam. Tempus iaculis urna id volutpat lacus. Tellus elementum sagittis vitae et leo duis ut diam. Faucibus nisl tincidunt eget nullam non. Gravida quis blandit turpis cursus in hac habitasse. Scelerisque in dictum non consectetur a. Tortor dignissim convallis aenean et tortor at. Et molestie ac feugiat sed. Gravida arcu ac tortor dignissim convallis aenean et tortor. Est sit amet facilisis magna etiam tempor orci eu. Viverra adipiscing at in tellus integer feugiat scelerisque varius morbi. Odio morbi quis commodo odio aenean sed adipiscing diam donec. Imperdiet dui accumsan sit amet nulla facilisi. Mi eget mauris pharetra et ultrices neque ornare aenean. Elit sed vulputate mi sit. Euismod elementum nisi quis eleifend quam adipiscing vitae proin sagittis. Vulputate enim nulla aliquet porttitor lacus luctus accumsan tortor posuere.\r\n\r\nCursus in hac habitasse platea. A lacus vestibulum sed arcu non odio. Ipsum a arcu cursus vitae congue mauris rhoncus aenean vel. Eget nunc lobortis mattis aliquam faucibus. Quis varius quam quisque id diam. Interdum velit laoreet id donec ultrices tincidunt arcu non. Dolor sit amet consectetur adipiscing elit. Diam maecenas sed enim ut sem viverra. Nulla facilisi morbi tempus iaculis urna id. Arcu odio ut sem nulla pharetra diam sit. Cursus eget nunc scelerisque viverra mauris in aliquam sem fringilla. Ac feugiat sed lectus vestibulum mattis ullamcorper. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero nunc. Aliquet bibendum enim facilisis gravida neque convallis a cras semper. Est lorem ipsum dolor sit amet consectetur adipiscing elit pellentesque. Quis hendrerit dolor magna eget est lorem. Id aliquet lectus proin nibh nisl condimentum id venenatis. Libero volutpat sed cras ornare arcu dui vivamus arcu felis. Vestibulum morbi blandit cursus risus at ultrices mi tempus. Feugiat nibh sed pulvinar proin gravida.\r\n\r\nIn hendrerit gravida rutrum quisque non tellus orci ac. Sed turpis tincidunt id aliquet risus feugiat in. Facilisi cras fermentum odio eu feugiat pretium nibh ipsum consequat. Pharetra diam sit amet nisl suscipit adipiscing bibendum est. Laoreet id donec ultrices tincidunt arcu. Sit amet justo donec enim. Blandit turpis cursus in hac habitasse. Faucibus ornare suspendisse sed nisi lacus sed viverra tellus in. Velit egestas dui id ornare arcu. Sapien et ligula ullamcorper malesuada proin libero nunc consequat. Morbi tristique senectus et netus et malesuada fames ac turpis. Pharetra massa massa ultricies mi quis hendrerit dolor. Nibh ipsum consequat nisl vel pretium lectus quam id leo.\r\n\r\nTempus egestas sed sed risus pretium. Vitae nunc sed velit dignissim sodales ut eu sem. Sed velit dignissim sodales ut eu. Erat velit scelerisque in dictum non consectetur a erat nam. Ut sem nulla pharetra diam sit amet nisl suscipit adipiscing. Volutpat sed cras ornare arcu dui vivamus arcu. Velit dignissim sodales ut eu. Cum sociis natoque penatibus et magnis dis parturient. Viverra adipiscing at in tellus integer feugiat scelerisque varius morbi. Suspendisse sed nisi lacus sed viverra tellus in hac. Quis commodo odio aenean sed adipiscing diam. Mattis rhoncus urna neque viverra justo nec ultrices dui. Amet nisl suscipit adipiscing bibendum est ultricies integer. Praesent elementum facilisis leo vel fringilla est. Porttitor massa id neque aliquam vestibulum morbi.\r\n\r\nCursus sit amet dictum sit amet justo. Id nibh tortor id aliquet lectus proin nibh nisl condimentum. Morbi leo urna molestie at elementum eu. Dignissim convallis aenean et tortor at risus viverra adipiscing at. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor aliquam. Sit amet mattis vulputate enim nulla aliquet. Ut venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Nulla at volutpat diam ut venenatis tellus in metus vulputate. Risus nec feugiat in fermentum posuere urna nec tincidunt. Risus feugiat in ante metus dictum at tempor commodo. Dis parturient montes nascetur ridiculus mus mauris vitae ultricies.\r\n\r\nNunc consequat interdum varius sit. Proin fermentum leo vel orci porta non pulvinar. Auctor eu augue ut lectus arcu bibendum at varius. Elementum facilisis leo vel fringilla est ullamcorper eget. Enim eu turpis egestas pretium aenean pharetra magna ac. Sed egestas egestas fringilla phasellus faucibus scelerisque eleifend. Ut diam quam nulla porttitor massa id neque aliquam vestibulum. Mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa. Sagittis nisl rhoncus mattis rhoncus. Dignissim enim sit amet venenatis urna cursus eget nunc scelerisque. Nisi vitae suscipit tellus mauris a diam maecenas. Dapibus ultrices in iaculis nunc sed augue lacus viverra vitae. Mauris pellentesque pulvinar pellentesque habitant morbi tristique senectus et netus. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Viverra maecenas accumsan lacus vel facilisis.\r\n\r\nGravida neque convallis a cras semper auctor neque. Posuere urna nec tincidunt praesent semper. Tempus urna et pharetra pharetra massa massa ultricies mi. Odio aenean sed adipiscing diam donec adipiscing tristique risus nec. In ante metus dictum at tempor commodo ullamcorper a. Sit amet consectetur adipiscing elit ut aliquam purus sit. Risus ultricies tristique nulla aliquet. Laoreet suspendisse interdum consectetur libero id faucibus nisl. Et ligula ullamcorper malesuada proin libero nunc consequat interdum. In hac habitasse platea dictumst vestibulum rhoncus est. Augue eget arcu dictum varius. Pellentesque eu tincidunt tortor aliquam nulla facilisi. Nullam ac tortor vitae purus faucibus ornare suspendisse sed nisi. Sed elementum tempus egestas sed sed risus pretium quam. Dapibus ultrices in iaculis nunc. Etiam sit amet nisl purus in mollis.\r\n\r\nLacinia at quis risus sed vulputate odio. Platea dictumst vestibulum rhoncus est. Posuere urna nec tincidunt praesent semper feugiat. Lacus luctus accumsan tortor posuere ac ut consequat semper. Vel pretium lectus quam id leo in vitae. Eget velit aliquet sagittis id consectetur. Sit amet consectetur adipiscing elit pellentesque habitant. Dolor sed viverra ipsum nunc aliquet bibendum enim facilisis gravida. Turpis nunc eget lorem dolor sed viverra. Et pharetra pharetra massa massa ultricies mi quis hendrerit. Dolor sit amet consectetur adipiscing elit pellentesque. Elit pellentesque habitant morbi tristique. Egestas fringilla phasellus faucibus scelerisque. Dictum non consectetur a erat nam at. Rutrum quisque non tellus orci ac auctor. Viverra maecenas accumsan lacus vel facilisis. Mattis pellentesque id nibh tortor id. Varius vel pharetra vel turpis nunc eget. Porttitor massa id neque aliquam vestibulum morbi blandit. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus.\r\n\r\nCursus mattis molestie a iaculis at erat. Ultrices mi tempus imperdiet nulla malesuada pellentesque. Porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Egestas sed sed risus pretium quam vulputate. Congue eu consequat ac felis donec et. Sagittis purus sit amet volutpat consequat mauris nunc. Purus in massa tempor nec feugiat nisl pretium. Phasellus vestibulum lorem sed risus ultricies tristique. Tempor orci eu lobortis elementum nibh tellus. Viverra nam libero justo laoreet sit amet. Malesuada fames ac turpis egestas sed tempus urna. Ut etiam sit amet nisl purus in mollis nunc sed. Sit amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar. Semper auctor neque vitae tempus quam pellentesque nec nam aliquam. Duis convallis convallis tellus id interdum velit. Elit eget gravida cum sociis natoque penatibus et magnis dis. Non diam phasellus vestibulum lorem sed risus ultricies tristique nulla. Bibendum at varius vel pharetra vel turpis nunc eget lorem.\r\n\r\n');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `arquivos`
--
ALTER TABLE `arquivos`
  ADD UNIQUE KEY `id` (`id`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Índices para tabela `jogo`
--
ALTER TABLE `jogo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `nome` (`nome`),
  ADD UNIQUE KEY `imagem_url` (`imagem_url`),
  ADD UNIQUE KEY `video_url` (`video_url`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Índices para tabela `jogo_idioma`
--
ALTER TABLE `jogo_idioma`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_jogo` (`id_jogo`),
  ADD KEY `id_idioma` (`id_idioma`);

--
-- Índices para tabela `jogo_plataforma`
--
ALTER TABLE `jogo_plataforma`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_jogo` (`id_jogo`),
  ADD KEY `id_plataforma` (`id_plataforma`);

--
-- Índices para tabela `plataforma`
--
ALTER TABLE `plataforma`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Índices para tabela `suporte`
--
ALTER TABLE `suporte`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `arquivos`
--
ALTER TABLE `arquivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `idioma`
--
ALTER TABLE `idioma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `jogo`
--
ALTER TABLE `jogo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `jogo_idioma`
--
ALTER TABLE `jogo_idioma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `jogo_plataforma`
--
ALTER TABLE `jogo_plataforma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `plataforma`
--
ALTER TABLE `plataforma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `suporte`
--
ALTER TABLE `suporte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `jogo`
--
ALTER TABLE `jogo`
  ADD CONSTRAINT `jogo_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`);

--
-- Limitadores para a tabela `jogo_idioma`
--
ALTER TABLE `jogo_idioma`
  ADD CONSTRAINT `jogo_idioma_ibfk_1` FOREIGN KEY (`id_jogo`) REFERENCES `jogo` (`id`),
  ADD CONSTRAINT `jogo_idioma_ibfk_2` FOREIGN KEY (`id_idioma`) REFERENCES `idioma` (`id`);

--
-- Limitadores para a tabela `jogo_plataforma`
--
ALTER TABLE `jogo_plataforma`
  ADD CONSTRAINT `jogo_plataforma_ibfk_1` FOREIGN KEY (`id_jogo`) REFERENCES `jogo` (`id`),
  ADD CONSTRAINT `jogo_plataforma_ibfk_2` FOREIGN KEY (`id_plataforma`) REFERENCES `plataforma` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
