-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 19, 2024 at 05:26 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `armazenamento`
--

-- --------------------------------------------------------

--
-- Table structure for table `artistas`
--

CREATE TABLE `artistas` (
  `Id_Artista` int NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Nacionalidade` varchar(255) DEFAULT NULL,
  `Data_Cadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` enum('Ativo','Inativo') DEFAULT 'Ativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `artistas`
--

INSERT INTO `artistas` (`Id_Artista`, `Nome`, `Nacionalidade`, `Data_Cadastro`, `Status`) VALUES
(1, 'Cássia Eller', 'Brazilian', NULL, 'Ativo'),
(2, 'Djavan', 'Brazilian', NULL, 'Ativo'),
(3, 'Jorge Vercillo', 'Brazilian', NULL, 'Ativo'),
(4, 'Marisa Monte', 'Brazilian', NULL, 'Ativo'),
(5, 'Nando Reis', 'Brazilian', NULL, 'Ativo'),
(6, 'Zé Ramalho', 'Brazilian', NULL, 'Ativo'),
(7, 'Adele', 'British', NULL, 'Ativo'),
(8, 'Amy Winehouse', 'British', NULL, 'Ativo'),
(9, 'Cyndi Lauper', 'American', NULL, 'Ativo'),
(10, 'Ed Sheeran', 'British', NULL, 'Ativo'),
(11, 'Michael Jackson', 'American', NULL, 'Ativo'),
(12, 'Sam Smith', 'British', NULL, 'Ativo'),
(13, 'The Weeknd', 'Canadian', NULL, 'Ativo'),
(14, 'Bob Marley', 'Jamaican', NULL, 'Ativo'),
(15, 'Edson Gomes', 'Brazilian', NULL, 'Ativo'),
(16, 'Filosofia Reggae', 'Brazilian', NULL, 'Ativo'),
(17, 'Groundation', 'American', NULL, 'Ativo'),
(18, 'Natiruts', 'Brazilian', NULL, 'Ativo'),
(19, 'Planta E Raiz', 'Brazilian', NULL, 'Ativo'),
(20, 'Sine Calmon', 'Brazilian', NULL, 'Ativo'),
(21, 'Tribo De Jah', 'Brazilian', NULL, 'Ativo'),
(22, 'Barao Vermelho', 'Brazilian', NULL, 'Ativo'),
(23, 'Capital Inicial', 'Brazilian', NULL, 'Ativo'),
(24, 'Ira', 'Brazilian', NULL, 'Ativo'),
(25, 'Legiao Urbana', 'Brazilian', NULL, 'Ativo'),
(26, 'Paralamas Do Sucesso', 'Brazilian', NULL, 'Ativo'),
(27, 'Uns E Outros', 'Brazilian', NULL, 'Ativo'),
(28, 'Clapton', 'British', NULL, 'Ativo'),
(29, 'Creedence Clearwater Revival', 'American', NULL, 'Ativo'),
(30, 'Extreme', 'American', NULL, 'Ativo'),
(31, 'Led Zeppelin', 'British', NULL, 'Ativo'),
(32, 'Metallica', 'American', NULL, 'Ativo'),
(33, 'Queen', 'British', NULL, 'Ativo'),
(34, 'Queensryche', 'American', NULL, 'Ativo'),
(35, 'Rem', 'American', NULL, 'Ativo'),
(36, 'The Beatles', 'British', NULL, 'Ativo'),
(37, 'The Smiths', 'British', NULL, 'Ativo'),
(38, 'Alcione', 'Brazilian', NULL, 'Ativo'),
(39, 'Beth Carvalho', 'Brazilian', NULL, 'Ativo'),
(40, 'Bezerra Da Silva', 'Brazilian', NULL, 'Ativo'),
(41, 'Demônios Da Garoa', 'Brazilian', NULL, 'Ativo'),
(42, 'Fundo De Quintal', 'Brazilian', NULL, 'Ativo'),
(43, 'Grupo Revelação', 'Brazilian', NULL, 'Ativo'),
(44, 'Martinho Da Vila', 'Brazilian', NULL, 'Ativo'),
(45, 'Zeca Pagodinho', 'Brazilian', NULL, 'Ativo'),
(46, 'Chitao Xororo', 'Brazilian', NULL, 'Ativo'),
(47, 'Chitaozinho Xororo', 'Brazilian', NULL, 'Ativo'),
(48, 'Jorge E Mateus', 'Brazilian', NULL, 'Ativo'),
(49, 'Maiara E Maraisa', 'Brazilian', NULL, 'Ativo'),
(50, 'Marilia Mendonca', 'Brazilian', NULL, 'Ativo'),
(51, 'Milionario E Jose Rico', 'Brazilian', NULL, 'Ativo'),
(52, 'Paula Fernandes', 'Brazilian', NULL, 'Ativo'),
(53, 'Paula Mattos', 'Brazilian', NULL, 'Ativo'),
(54, 'Victor E Leo', 'Brazilian', NULL, 'Ativo');

-- --------------------------------------------------------

--
-- Table structure for table `cifras`
--

CREATE TABLE `cifras` (
  `Id_Pk` int NOT NULL,
  `Titulo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Genero` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Cod_Artista` int DEFAULT NULL,
  `Arquivo_Cifras` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Caminho_Arquivo_Cifras` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Data_Hora` datetime DEFAULT NULL,
  `Id_Artista` int DEFAULT NULL,
  `Id_Genero` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cifras`
--

INSERT INTO `cifras` (`Id_Pk`, `Titulo`, `Genero`, `Cod_Artista`, `Arquivo_Cifras`, `Caminho_Arquivo_Cifras`, `Data_Hora`, `Id_Artista`, `Id_Genero`) VALUES
(1, 'Cássia Eller - O Segundo Sol', 'Mpb', NULL, 'cifras/mpb_cássia-eller_o-segundo-sol.txt', NULL, NULL, NULL, NULL),
(2, 'Cássia Eller - Por Enquanto', 'Mpb', NULL, 'cifras/mpb_cássia-eller_por-enquanto.txt', NULL, NULL, NULL, NULL),
(3, 'Djavan - Eu Te Devoro', 'Mpb', NULL, 'cifras/mpb_djavan_eu-te-devoro.txt', NULL, NULL, NULL, NULL),
(4, 'Djavan - Samurai', 'Mpb', NULL, 'cifras/mpb_djavan_samurai.txt', NULL, NULL, NULL, NULL),
(5, 'Djavan - Se', 'Mpb', NULL, 'cifras/mpb_djavan_se.txt', NULL, NULL, NULL, NULL),
(6, 'Jorge Vercillo - Final Feliz', 'Mpb', NULL, 'cifras/mpb_jorge-vercillo_final-feliz.txt', NULL, NULL, NULL, NULL),
(7, 'Marisa Monte - A Sua', 'Mpb', NULL, 'cifras/mpb_marisa-monte_a sua.txt', NULL, NULL, NULL, NULL),
(8, 'Marisa Monte - Amor I Love You', 'Mpb', NULL, 'cifras/mpb_marisa-monte_amor-i-love-you.txt', NULL, NULL, NULL, NULL),
(9, 'Nando Reis - Por Onde Andei', 'Mpb', NULL, 'cifras/mpb_nando-reis_por-onde-andei.txt', NULL, NULL, NULL, NULL),
(10, 'Zé Ramalho - Admirável Gado Novo', 'Mpb', NULL, 'cifras/mpb_zé-ramalho_admirável-gado-novo.txt', NULL, NULL, NULL, NULL),
(11, 'Zé Ramalho - Chão De Giz', 'Mpb', NULL, 'cifras/mpb_zé-ramalho_chão-de-giz.txt', NULL, NULL, NULL, NULL),
(12, 'Adele - Rolling In The Deep', 'Pop', NULL, 'cifras/pop_adele_rolling-in-the-deep.txt', NULL, NULL, NULL, NULL),
(13, 'Adele - Set Fire To The Rain', 'Pop', NULL, 'cifras/pop_adele_set-fire-to-the-rain.txt', NULL, NULL, NULL, NULL),
(14, 'Adele - Someone Like You', 'Pop', NULL, 'cifras/pop_adele_someone-like-you.txt', NULL, NULL, NULL, NULL),
(15, 'Amy Winehouse - Back To Black', 'Pop', NULL, 'cifras/pop_amy-winehouse_back-to-black.txt', NULL, NULL, NULL, NULL),
(16, 'Cyndi Lauper  - Time After Time', 'Pop', NULL, 'cifras/pop_cyndi-lauper _time after time.txt', NULL, NULL, NULL, NULL),
(17, 'Cyndi Lauper - True Colors', 'Pop', NULL, 'cifras/pop_cyndi-lauper_true-colors.txt', NULL, NULL, NULL, NULL),
(18, 'Ed Sheeran - Photograph', 'Pop', NULL, 'cifras/pop_ed-sheeran_photograph.txt', NULL, NULL, NULL, NULL),
(19, 'Michael Jackson  - Human Nature', 'Pop', NULL, 'cifras/pop_michael-jackson _human-nature.txt', NULL, NULL, NULL, NULL),
(20, 'Michael Jackson - We Are The World', 'Pop', NULL, 'cifras/pop_michael-jackson_we-are-the-world.txt', NULL, NULL, NULL, NULL),
(21, 'Sam Smith - Too Good At Goodbyes', 'Pop', NULL, 'cifras/pop_sam-smith_too-good-at-goodbyes.txt', NULL, NULL, NULL, NULL),
(22, 'The Weeknd - I Feel It Coming', 'Pop', NULL, 'cifras/pop_the-weeknd_i-feel-it-coming.txt', NULL, NULL, NULL, NULL),
(23, 'Bob Marley - Is This Love', 'Reggae', NULL, 'cifras/reggae_bob-marley_is-this-love.txt', NULL, NULL, NULL, NULL),
(24, 'Bob Marley - Redemption Song', 'Reggae', NULL, 'cifras/reggae_bob-marley_redemption-song.txt', NULL, NULL, NULL, NULL),
(25, 'Edson Gomes - Malandrinha', 'Reggae', NULL, 'cifras/reggae_edson-gomes_malandrinha.txt', NULL, NULL, NULL, NULL),
(26, 'Filosofia Reggae - Sentimento Bom', 'Reggae', NULL, 'cifras/reggae_filosofia-reggae_sentimento-bom.txt', NULL, NULL, NULL, NULL),
(27, 'Groundation - Picture On The Wall', 'Reggae', NULL, 'cifras/reggae_groundation_picture-on-the-wall.txt', NULL, NULL, NULL, NULL),
(28, 'Natiruts - Glamour Tropical Rio Em Dias De Paz', 'Reggae', NULL, 'cifras/reggae_natiruts_glamour-tropical-rio-em-dias-de-paz.txt', NULL, NULL, NULL, NULL),
(29, 'Natiruts - Quero Ser Feliz Tambem', 'Reggae', NULL, 'cifras/reggae_natiruts_quero-ser-feliz-tambem.txt', NULL, NULL, NULL, NULL),
(30, 'Planta E Raiz - Voz Do Coracao', 'Reggae', NULL, 'cifras/reggae_planta-e-raiz_voz-do-coracao.txt', NULL, NULL, NULL, NULL),
(31, 'Sine Calmon - Sinta E Kaya', 'Reggae', NULL, 'cifras/reggae_sine-calmon_sinta-e-kaya.txt', NULL, NULL, NULL, NULL),
(32, 'Tribo De Jah - Nao Basta Ser Rasta', 'Reggae', NULL, 'cifras/reggae_tribo-de-jah_nao-basta-ser-rasta.txt', NULL, NULL, NULL, NULL),
(33, 'Barao Vermelho - Codinome Beija Flor', 'Rock Nacional', NULL, 'cifras/rock-nacional_barao-vermelho_codinome-beija-flor.txt', NULL, NULL, NULL, NULL),
(34, 'Capital Inicial - Fogo', 'Rock Nacional', NULL, 'cifras/rock-nacional_capital-inicial_fogo.txt', NULL, NULL, NULL, NULL),
(35, 'Ira - Tarde Vazia', 'Rock Nacional', NULL, 'cifras/rock-nacional_ira_tarde-vazia.txt', NULL, NULL, NULL, NULL),
(36, 'Legiao Urbana - Hoje A Noite Nao Tem Luar', 'Rock Nacional', NULL, 'cifras/rock-nacional_legiao-urbana_hoje-a-noite-nao-tem-luar.txt', NULL, NULL, NULL, NULL),
(37, 'Legiao Urbana - Indios', 'Rock Nacional', NULL, 'cifras/rock-nacional_legiao-urbana_indios.txt', NULL, NULL, NULL, NULL),
(38, 'Legiao Urbana - Metal Contra As Nuvens', 'Rock Nacional', NULL, 'cifras/rock-nacional_legiao-urbana_metal-contra-as-nuvens.txt', NULL, NULL, NULL, NULL),
(39, 'Paralamas Do Sucesso - Aonde Quer Que Eu Va', 'Rock Nacional', NULL, 'cifras/rock-nacional_paralamas-do-sucesso_aonde-quer-que-eu-va.txt', NULL, NULL, NULL, NULL),
(40, 'Paralamas Do Sucesso - Meu Erro', 'Rock Nacional', NULL, 'cifras/rock-nacional_paralamas-do-sucesso_meu-erro.txt', NULL, NULL, NULL, NULL),
(41, 'Paralamas Do Sucesso - Romance Ideal', 'Rock Nacional', NULL, 'cifras/rock-nacional_paralamas-do-sucesso_romance-ideal.txt', NULL, NULL, NULL, NULL),
(42, 'Uns E Outros - Carta Aos Missionarios', 'Rock Nacional', NULL, 'cifras/rock-nacional_uns-e-outros_carta-aos-missionarios.txt', NULL, NULL, NULL, NULL),
(43, 'Clapton - Tears In Heaven', 'Rock', NULL, 'cifras/rock_clapton_tears-in-heaven.txt', NULL, NULL, NULL, NULL),
(44, 'Creedence Clearwater Revival - Proud Mary', 'Rock', NULL, 'cifras/rock_creedence-clearwater-revival_proud-mary.txt', NULL, NULL, NULL, NULL),
(45, 'Extreme - More Than Words', 'Rock', NULL, 'cifras/rock_extreme_more-than-words.txt', NULL, NULL, NULL, NULL),
(46, 'Led Zeppelin - Stairway To Heaven', 'Rock', NULL, 'cifras/rock_led-zeppelin_stairway-to-heaven.txt', NULL, NULL, NULL, NULL),
(47, 'Metallica - Nothing Else Matters', 'Rock', NULL, 'cifras/rock_metallica_nothing-else-matters.txt', NULL, NULL, NULL, NULL),
(48, 'Queen - Crazy Little Thing Called Love', 'Rock', NULL, 'cifras/rock_queen_crazy-little-thing-called-love.txt', NULL, NULL, NULL, NULL),
(49, 'Queensryche - Silent Lucidity', 'Rock', NULL, 'cifras/rock_queensryche_silent-lucidity.txt', NULL, NULL, NULL, NULL),
(50, 'Rem - Losing My Religion', 'Rock', NULL, 'cifras/rock_rem_losing-my-religion.txt', NULL, NULL, NULL, NULL),
(51, 'The Beatles - Here Comes The Sun', 'Rock', NULL, 'cifras/rock_the-beatles_here-comes-the-sun.txt', NULL, NULL, NULL, NULL),
(52, 'The Smiths - Heaven Knows Im Miserable Now', 'Rock', NULL, 'cifras/rock_the-smiths_heaven-knows-im-miserable-now.txt', NULL, NULL, NULL, NULL),
(53, 'Alcione - Não Deixe O Samba Morrer', 'Samba', NULL, 'cifras/samba_alcione_não-deixe-o-samba-morrer.txt', NULL, NULL, NULL, NULL),
(54, 'Beth Carvalho - Vou Festejar', 'Samba', NULL, 'cifras/samba_beth-carvalho_vou-festejar.txt', NULL, NULL, NULL, NULL),
(55, 'Bezerra Da Silva - A Fumaça Já Subiu Pra Cuca', 'Samba', NULL, 'cifras/samba_bezerra-da-silva_a-fumaça-já-subiu-pra-cuca.txt', NULL, NULL, NULL, NULL),
(56, 'Bezerra Da Silva - Malandragem Dá Um Tempo', 'Samba', NULL, 'cifras/samba_bezerra-da-silva_malandragem-dá-um-tempo.txt', NULL, NULL, NULL, NULL),
(57, 'Demônios Da Garoa - Saudosa Maloca', 'Samba', NULL, 'cifras/samba_demônios-da-garoa_saudosa-maloca.txt', NULL, NULL, NULL, NULL),
(58, 'Demônios Da Garoa - Trem Das Onze', 'Samba', NULL, 'cifras/samba_demônios-da-garoa_trem-das-onze.txt', NULL, NULL, NULL, NULL),
(59, 'Fundo De Quintal - O Show Tem Que Continuar', 'Samba', NULL, 'cifras/samba_fundo-de-quintal_o-show-tem-que-continuar.txt', NULL, NULL, NULL, NULL),
(60, 'Grupo Revelação - Deixa Acontecer', 'Samba', NULL, 'cifras/samba_grupo-revelação_deixa-acontecer.txt', NULL, NULL, NULL, NULL),
(61, 'Martinho Da Vila - Mulheres', 'Samba', NULL, 'cifras/samba_martinho-da-vila_mulheres.txt', NULL, NULL, NULL, NULL),
(62, 'Zeca Pagodinho - Deixa A Vida Me Levar', 'Samba', NULL, 'cifras/samba_zeca-pagodinho_deixa-a-vida-me-levar.txt', NULL, NULL, NULL, NULL),
(63, 'Chitao Xororo - Sinonimos', 'Sertanejo', NULL, 'cifras/sertanejo_chitao-xororo_sinonimos.txt', NULL, NULL, NULL, NULL),
(64, 'Chitaozinho Xororo - Evidencias Ver 2', 'Sertanejo', NULL, 'cifras/sertanejo_chitaozinho-xororo_evidencias-ver-2.txt', NULL, NULL, NULL, NULL),
(65, 'Jorge E Mateus - Amo Noite E Dia', 'Sertanejo', NULL, 'cifras/sertanejo_jorge-e-mateus_amo-noite-e-dia.txt', NULL, NULL, NULL, NULL),
(66, 'Maiara E Maraisa - Medo Bobo', 'Sertanejo', NULL, 'cifras/sertanejo_maiara-e-maraisa_medo-bobo.txt', NULL, NULL, NULL, NULL),
(67, 'Marilia Mendonca - De Quem E A Culpa', 'Sertanejo', NULL, 'cifras/sertanejo_marilia-mendonca_de-quem-e-a-culpa.txt', NULL, NULL, NULL, NULL),
(68, 'Marilia Mendonca - Graveto', 'Sertanejo', NULL, 'cifras/sertanejo_marilia-mendonca_graveto.txt', NULL, NULL, NULL, NULL),
(69, 'Milionario E Jose Rico - Boate Azul', 'Sertanejo', NULL, 'cifras/sertanejo_milionario-e-jose-rico_boate-azul.txt', NULL, NULL, NULL, NULL),
(70, 'Paula Fernandes - Passaro De Fogo', 'Sertanejo', NULL, 'cifras/sertanejo_paula-fernandes_passaro-de-fogo.txt', NULL, NULL, NULL, NULL),
(71, 'Paula Mattos - Que Sorte A Nossa', 'Sertanejo', NULL, 'cifras/sertanejo_paula-mattos_que-sorte-a-nossa.txt', NULL, NULL, NULL, NULL),
(72, 'Victor E Leo - Borboletas', 'Sertanejo', NULL, 'cifras/sertanejo_victor-e-leo_borboletas.txt', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `compras_usuarios`
--

CREATE TABLE `compras_usuarios` (
  `id` int NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `telefone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endereco` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cidade` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cep` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `senha` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_cartao` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_compra` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `idade` int DEFAULT NULL,
  `validade_cartao` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv_cartao` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `acesso_todos_cursos` tinyint(1) DEFAULT '0',
  `banco` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE `cursos` (
  `id` int NOT NULL,
  `titulo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel_acesso` enum('gratis','pago') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `preco` decimal(10,2) DEFAULT '0.00',
  `ativo` enum('ativo','inativo') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ativo',
  `vezes_acessado` int NOT NULL DEFAULT '0',
  `quantidade_usuarios` int NOT NULL DEFAULT '0',
  `usuarios_acessaram` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`id`, `titulo`, `descricao`, `nivel_acesso`, `preco`, `ativo`, `vezes_acessado`, `quantidade_usuarios`, `usuarios_acessaram`) VALUES
(1, 'Curso de Guitarra', 'Aprenda a tocar guitarra do zero ao avançado.', 'gratis', '0.00', 'ativo', 0, 0, NULL),
(2, 'Curso de Baixo', 'Domine as técnicas fundamentais do baixo elétrico.', 'gratis', '0.00', 'ativo', 0, 0, NULL),
(3, 'Curso de Teclado', 'Aprenda a tocar teclado com facilidade e rapidez.', 'gratis', '0.00', 'ativo', 0, 0, NULL),
(4, 'Curso de Piano', 'Desenvolva suas habilidades no piano e impressione seus amigos.', 'gratis', '0.00', 'ativo', 0, 0, NULL),
(5, 'Curso de Violão', 'Descubra os segredos para se tornar um mestre do violão.', 'gratis', '0.00', 'ativo', 0, 0, NULL),
(6, 'Curso de Canto e Voz', 'Aprenda a cantar com técnica e expressão.', 'gratis', '0.00', 'ativo', 0, 0, NULL),
(7, 'Curso de Saxofone', 'Explore o mundo do saxofone e domine suas melodias.', 'gratis', '0.00', 'ativo', 0, 0, NULL),
(8, 'Curso de Ukulele', 'Divirta-se e aprenda a tocar músicas no ukulele.', 'gratis', '0.00', 'ativo', 0, 0, NULL),
(9, 'Curso de Cavaquinho', 'Aprenda os acordes básicos e ritmos populares do cavaquinho.', 'gratis', '0.00', 'ativo', 0, 0, NULL),
(10, 'Curso de Bateria', 'Torne-se um baterista habilidoso com este curso abrangente.', 'gratis', '0.00', 'ativo', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cursos_usuarios`
--

CREATE TABLE `cursos_usuarios` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `plano` varchar(50) NOT NULL,
  `data_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cursos_usuarios`
--

INSERT INTO `cursos_usuarios` (`id`, `nome`, `email`, `senha`, `plano`, `data_registro`) VALUES
(1, 'elvis', 'elvis@teste', '1', 'pago', '2024-02-14 21:48:47');

-- --------------------------------------------------------

--
-- Table structure for table `fale_conosco`
--

CREATE TABLE `fale_conosco` (
  `id` int NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `assunto` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mensagem` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lida` int NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fale_conosco`
--

INSERT INTO `fale_conosco` (`id`, `nome`, `email`, `assunto`, `mensagem`, `lida`, `data`) VALUES
(33, 'Elvis marcelo pereira de souza', 'elvis@teste', 'q', 'q', 0, '2024-02-14 18:03:30'),
(34, 'dom elvis', 'domelvis@teste', 'eu', 'laele', 0, '2024-02-14 18:11:27');

-- --------------------------------------------------------

--
-- Table structure for table `favoritas`
--

CREATE TABLE `favoritas` (
  `id` int NOT NULL,
  `usuarioId` int NOT NULL,
  `cifraId` int NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favoritas`
--

INSERT INTO `favoritas` (`id`, `usuarioId`, `cifraId`, `data`) VALUES
(88, 123, 1, '2024-02-14 22:44:28'),
(89, 123, 1, '2024-02-14 22:56:08'),
(90, 123, 1, '2024-02-19 13:55:06');

-- --------------------------------------------------------

--
-- Table structure for table `genero`
--

CREATE TABLE `genero` (
  `ID` int NOT NULL,
  `Descricao` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genero`
--

INSERT INTO `genero` (`ID`, `Descricao`) VALUES
(1, 'Rock'),
(2, 'Samba'),
(3, 'Pop'),
(4, 'Sertanejo'),
(5, 'Reggae'),
(6, 'Rap'),
(7, 'Eletrônica'),
(8, 'Forró'),
(9, 'Funk'),
(10, 'MPB'),
(11, 'Gospel'),
(12, 'Blues'),
(13, 'Jazz'),
(14, 'Reggaeton'),
(15, 'Axé');

-- --------------------------------------------------------

--
-- Table structure for table `novas_senhas`
--

CREATE TABLE `novas_senhas` (
  `id` int NOT NULL,
  `senha_temporaria` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `novas_senhas`
--

INSERT INTO `novas_senhas` (`id`, `senha_temporaria`, `criado_em`) VALUES
(5, '$2y$10$LZKJ1Z.QB56LrKGoTkVNyeQXQzoAEasiD5.C1wwpCBMbQA91L.uCO', '2024-02-14 18:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `senha` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `data_hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ativo` int NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `senha_reset_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `data_hora`, `ativo`, `data_nascimento`, `senha_reset_token`) VALUES
(102, 'elvis', 'elvis@teste', '$2y$10$Ym3.g62GtAL1E7BP19vT3exSjORZdSDAv9Uuj.zvECBZfYLPm50M2', '2024-02-14 17:29:12', 1, '1979-06-21', NULL),
(103, 'elvis marcelo pereira de souza', 'elvishootsrockreggae@hotmail.com', '$2y$10$pLeQu7MrVQLLIXXpnlVYSeFDOD9K.2IYvhKVAvVkASrcaDtM/pObC', '2024-02-14 22:22:45', 1, '1979-06-21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`Id_Artista`);

--
-- Indexes for table `cifras`
--
ALTER TABLE `cifras`
  ADD PRIMARY KEY (`Id_Pk`);

--
-- Indexes for table `compras_usuarios`
--
ALTER TABLE `compras_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cursos_usuarios`
--
ALTER TABLE `cursos_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `fale_conosco`
--
ALTER TABLE `fale_conosco`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favoritas`
--
ALTER TABLE `favoritas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cifraId` (`cifraId`);

--
-- Indexes for table `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `novas_senhas`
--
ALTER TABLE `novas_senhas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artistas`
--
ALTER TABLE `artistas`
  MODIFY `Id_Artista` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `cifras`
--
ALTER TABLE `cifras`
  MODIFY `Id_Pk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `compras_usuarios`
--
ALTER TABLE `compras_usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cursos_usuarios`
--
ALTER TABLE `cursos_usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fale_conosco`
--
ALTER TABLE `fale_conosco`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `favoritas`
--
ALTER TABLE `favoritas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `genero`
--
ALTER TABLE `genero`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `novas_senhas`
--
ALTER TABLE `novas_senhas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
