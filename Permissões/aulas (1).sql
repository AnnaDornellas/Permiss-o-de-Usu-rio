-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Nov-2023 às 14:49
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `aulas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

CREATE TABLE `documentos` (
  `id` int(11) NOT NULL,
  `cpf` varchar(14) DEFAULT '111.111.111-11',
  `pessoa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `documentos`
--

INSERT INTO `documentos` (`id`, `cpf`, `pessoa_id`) VALUES
(1, '829.297.501-20', 1),
(3, '000.000', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `occupations`
--

CREATE TABLE `occupations` (
  `id` bigint(12) UNSIGNED NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) NOT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `occupations`
--

INSERT INTO `occupations` (`id`, `created`, `updated`, `name`, `occupation`, `email`) VALUES
(2451, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Arthur Gabriel', 'Administrador', 'arthur_gabriel@email.com'),
(2452, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'João Vitor', 'Administrador público', 'joao_vitor@email.com'),
(2453, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Arthur Miguel', 'Agropecuarista', 'arthur_miguel@email.com'),
(2454, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Luiz Felipe', 'Contabilista', 'luiz_felipe@email.com'),
(2455, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Carlos Eduardo', 'Economista', 'carlos_eduardo@email.com'),
(2456, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Luiz Gustavo', 'Especialista em comércio exterior', 'luiz_gustavo@email.com'),
(2457, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Davi Luiz', 'Chef', 'davi_luiz@email.com'),
(2458, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Luiz Henrique', 'Gerente comercial', 'luiz_henrique@email.com'),
(2459, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Davi Miguel', 'Gestor de recursos humanos', 'davi_miguel@email.com'),
(2460, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Luiz Miguel', 'Gestor de turismo', 'luiz_miguel@email.com'),
(2461, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Enzo Gabriel', 'Gestor público', 'enzo_gabriel@email.com'),
(2462, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Luiz Otávio', 'Hoteleiro', 'luiz_otavio@email.com'),
(2463, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Enzo Miguel', 'Piloto de avião', 'enzo_miguel@email.com'),
(2464, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Lucas Gabriel', 'Turismólogo', 'lucas_gabriel@email.com'),
(2465, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'João Gabriel', 'Artes e Design', 'joao_gabriel@email.com'),
(2466, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Pedro Henrique', 'Animador', 'pedro_henrique@email.com'),
(2467, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'João Guilherme', 'Arquiteto', 'joao_guilherme@email.com'),
(2468, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Pedro Lucas', 'Artista plástico', 'pedro_lucas@email.com'),
(2469, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'João Lucas', 'Ator', 'joao_lucas@email.com'),
(2470, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Pedro Miguel', 'Dançarino', 'pedro_miguel@email.com'),
(2471, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'João Miguel', 'Designer', 'joao_miguel@email.com'),
(2472, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Vitor Hugo', 'Designer de games', 'vitor_hugo@email.com'),
(2473, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'João Pedro', 'Designer de interiores', 'joao_pedro@email.com'),
(2474, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Ana Beatriz', 'Designer de moda', 'ana_beatriz@email.com'),
(2475, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Maria Eduarda', 'Fotógrafo', 'maria_eduarda@email.com'),
(2476, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Ana Cecília', 'Historiador da arte', 'ana_cecilia@email.com'),
(2477, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Maria Fernanda', 'Músico', 'maria_fernanda@email.com'),
(2478, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Ana Clara', 'Produtor cênico', 'ana_clara@email.com'),
(2479, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Maria Flor', 'Produtor fonográfico', 'maria_flor@email.com'),
(2480, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Ana Júlia', 'Ciências Biológicas e da Terra', 'ana_julia@email.com'),
(2481, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Maria Helena', 'Agrônomo', 'maria_helena@email.com'),
(2482, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Ana Laura', 'Bioquímico', 'ana_laura@email.com'),
(2483, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Maria Isis', 'Biotecnólogo', 'maria_isis@email.com'),
(2484, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Ana Lívia', 'Ecologista', 'ana_livia@email.com'),
(2485, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Maria Júlia', 'Geofísico', 'maria_julia@email.com'),
(2486, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Ana Luiza', 'Geólogo', 'ana_luiza@email.com'),
(2487, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Maria Laura', 'Gestor ambiental', 'maria_laura@email.com'),
(2488, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Ana Sofia', 'Veterinário', 'ana_sofia@email.com'),
(2489, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Maria Luiza', 'Meteorologista', 'maria_luiza@email.com'),
(2490, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Ana Vitória', 'Oceanógrafo', 'ana_vitoria@email.com'),
(2491, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Maria Sophia', 'Zootecnólogo', 'maria_sophia@email.com'),
(2492, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Maria Alice', 'Ciências Exatas e Informática', 'maria_alice@email.com'),
(2493, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Maria Valentina', 'Analista e desenvolvedor de sistemas', 'maria_valentina@email.com'),
(2494, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Maria Cecília', 'Astrônomo', 'maria_cecilia@email.com'),
(2495, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Maria Vitória', 'Cientista da computação', 'maria_vitoria@email.com'),
(2496, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Maria Clara', 'Estatístico', 'maria_clara@email.com'),
(2497, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Álvaro', 'Físico', 'alvaro@email.com'),
(2498, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Cícero', 'Gestor da tecnologia da informação', 'cicero@email.com'),
(2499, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Gael', 'Matemático', 'gael@email.com'),
(2500, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Lino', 'Nanotecnólogo', 'lino@email.com'),
(2501, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Salomão', 'Químico', 'salomao@email.com'),
(2502, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Amado', 'Ciências Sociais e Humanas', 'amado@email.com'),
(2503, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Ciro', 'Advogado', 'ciro@email.com'),
(2504, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Gaspar', 'Arqueólogo', 'gaspar@email.com'),
(2505, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Lourenço', 'Cooperativista', 'lourenco@email.com'),
(2506, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Santiago', 'Filósofo', 'santiago@email.com'),
(2507, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Antony', 'Geógrafo', 'antony@email.com'),
(2508, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Conrado', 'Historiador', 'conrado@email.com'),
(2509, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Gonçalo', 'Linguista', 'goncalo@email.com'),
(2510, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Martim', 'Museologista', 'martim@email.com'),
(2511, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Serafim', 'Pedagogo', 'serafim@email.com'),
(2512, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Bartolomeu', 'Professor', 'bartolomeu@email.com'),
(2513, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Cristovão', 'Psicopedagogo', 'cristovao@email.com'),
(2514, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Gregório', 'Relações internacionais', 'gregorio@email.com'),
(2515, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Nicolas', 'Sociólogo', 'nicolas@email.com'),
(2516, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Tadeu', 'Teólogo', 'tadeu@email.com'),
(2517, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Benedito', 'Tradutor e intérprete', 'benedito@email.com'),
(2518, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Dante', 'Comunicação e Informação', 'dante@email.com'),
(2519, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Guilhermo', 'Arquivologista', 'guilhermo@email.com'),
(2520, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Noah', 'Biblioteconomista', 'noah@email.com'),
(2521, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Tomé', 'Educomunicador', 'tome@email.com'),
(2522, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Benício', 'Jornalista', 'benicio@email.com'),
(2523, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Dimitri', 'Produtor audiovisual', 'dimitri@email.com'),
(2524, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Hermano', 'Produtor cultural', 'hermano@email.com'),
(2525, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Nuno', 'Produtor editorial', 'nuno@email.com'),
(2526, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Valentino', 'Produtor multimídia', 'valentino@email.com'),
(2527, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Benito', 'Produtor publicitário', 'benito@email.com'),
(2528, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Dom', 'Publicitário', 'dom@email.com'),
(2529, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Ícaro', 'Radialista', 'icaro@email.com'),
(2530, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Oliver', 'Relações públicas', 'oliver@email.com'),
(2531, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Vince', 'Secretária', 'vince@email.com'),
(2532, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Benjamin', 'Secretária executiva', 'benjamin@email.com'),
(2533, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Emanuel', 'Engenharia e Produção', 'emanuel@email.com'),
(2534, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Inácio', 'Agricultor', 'inacio@email.com'),
(2535, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Oscar', 'Construtor civil', 'oscar@email.com'),
(2536, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Zion', 'Construtor naval', 'zion@email.com'),
(2537, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Bento', 'Engenheiro acústico', 'bento@email.com'),
(2538, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Ernesto', 'Engenheiro aeronáutico', 'ernesto@email.com'),
(2539, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Levi', 'Engenheiro agrícola', 'levi@email.com'),
(2540, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Romeu', 'Engenheiro ambiental e sanitário', 'romeu@email.com'),
(2541, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Calebe', 'Engenheiro biomédico', 'calebe@email.com'),
(2542, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Franco', 'Engenheiro civil', 'franco@email.com'),
(2543, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Lince', 'Engenheiro da computação', 'lince@email.com'),
(2544, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Ruan', 'Engenheiro de alimentos', 'ruan@email.com'),
(2545, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Açucena', 'Engenheiro de biossistemas', 'acucena@email.com'),
(2546, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Augusta', 'Engenheiro de controle e automação', 'augusta@email.com'),
(2547, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Coralina', 'Engenheiro de energia', 'coralina@email.com'),
(2548, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Hortênsia', 'Engenheiro de inovação', 'hortensia@email.com'),
(2549, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Martina', 'Engenheiro de materiais', 'martina@email.com'),
(2550, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Pilar', 'Engenheiro de minas', 'pilar@email.com'),
(2551, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Adele', 'Engenheiro de pesca', 'adele@email.com'),
(2552, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Ayla', 'Engenheiro de petróleo', 'ayla@email.com'),
(2553, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Dora', 'Engenheiro de produção', 'dora@email.com'),
(2554, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Iolanda', 'Engenheiro de segurança do trabalho', 'iolanda@email.com'),
(2555, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Matilda', 'Engenheiro de sistemas', 'matilda@email.com'),
(2556, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Ramona', 'Engenheiro de software', 'ramona@email.com'),
(2557, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Agnes', 'Engenheiro de telecomunicações', 'agnes@email.com'),
(2558, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Benedita', 'Engenheiro de transporte e mobilidade', 'benedita@email.com'),
(2559, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Eleonara', 'Engenheiro elétrico', 'eleonara@email.com'),
(2563, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Alegra Rogeriop´pop´po', 'Engenheiro hídrico', 'alegra@email.com'),
(2564, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Betina', 'Engenheiro mecânico', 'betina@email.com'),
(2565, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Esperança', 'Engenheiro mecatrônico', 'esperanca@email.com'),
(2566, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Lia', 'Engenheiro naval', 'lia@email.com'),
(2567, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Mia', 'Engenheiro químico', 'mia@email.com'),
(2568, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Tarsila', 'Gestor da qualidade', 'tarsila@email.com'),
(2569, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Allana', 'Minerador', 'allana@email.com'),
(2570, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Branca', 'Silvicultor', 'branca@email.com'),
(2571, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Estrela', 'Saúde e Bem-Estar', 'estrela@email.com'),
(2572, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Linda', 'Biomédico', 'linda@email.com'),
(2573, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Micaela', 'Dentista', 'micaela@email.com'),
(2574, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Teodora', 'Educador físico', 'teodora@email.com'),
(2575, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Amélia', 'Enfermeiro', 'amelia@email.com'),
(2576, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Caetana', 'Esteticista', 'caetana@email.com'),
(2577, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Felipa', 'Farmacêutico', 'felipa@email.com'),
(2578, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Lolita', 'Fisioterapeuta', 'lolita@email.com'),
(2579, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Naomi', 'Fonoaudiólogo', 'naomi@email.com'),
(2580, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Úrsula', 'Gerontólogo', 'ursula@email.com'),
(2581, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Amora', 'Gestor em saúde', 'amora@email.com'),
(2582, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Carlota', 'Gestor hospitalar', 'carlota@email.com'),
(2583, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Flora', 'Médico', 'flora@email.com'),
(2584, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Louise', 'Musicoterapeuta', 'louise@email.com'),
(2585, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Olga', 'Nutricionista', 'olga@email.com'),
(2586, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Vida', 'Psicólogo', 'vida@email.com'),
(2587, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Anabel', 'Radiologista', 'anabel@email.com'),
(2588, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Celina', 'Terapeuta ocupacional', 'celina@email.com'),
(2589, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Florença', 'Administrador', 'florenca@email.com'),
(2590, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Luna', 'Administrador público', 'luna@email.com'),
(2591, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Pandora', 'Agropecuarista', 'pandora@email.com'),
(2592, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Violeta', 'Contabilista', 'violeta@email.com'),
(2593, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Analu', 'Economista', 'analu@email.com'),
(2594, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Charlote', 'Especialista em comércio exterior', 'charlote@email.com'),
(2595, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Frederica', 'Chef', 'frederica@email.com'),
(2596, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Mabel', 'Gerente comercial', 'mabel@email.com'),
(2597, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Penélope', 'Gestor de recursos humanos', 'penelope@email.com'),
(2598, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Zoé', 'Gestor de turismo', 'zoe@email.com'),
(2599, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Anastácia', 'Gestor público', 'anastacia@email.com'),
(2600, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Constança', 'Hoteleiro', 'constanca@email.com'),
(2601, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Gaia', 'Piloto de avião', 'gaia@email.com'),
(2602, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Maia', 'Turismólogo', 'maia@email.com'),
(2603, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Pérola', 'Artes e Design', 'perola@email.com'),
(2604, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Angelina', 'Animador', 'angelina@email.com'),
(2605, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Cora', 'Arquiteto', 'cora@email.com'),
(2606, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Guadalupe', 'Artista plástico', 'guadalupe@email.com'),
(2607, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Margarida', 'Ator', 'margarida@email.com'),
(2608, '2021-05-07 20:52:40', '2021-05-07 20:52:40', 'Petra', 'Dançarino', 'petra@email.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `dt_nascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `nome`, `email`, `dt_nascimento`) VALUES
(1, 'Rogerio Pontes', 'inovacaoti.pge@angra.rj.gov.br', '2000-12-22'),
(2, 'Anna Julia', 'teste@teste.com', '2004-07-29'),
(3, 'Pedro Lucas', 'teste2@teste.com', '2004-07-19'),
(4, 'Lucas Soares', 'teste3@gmail.com', NULL),
(5, 'Thiago', '', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(12) UNSIGNED NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `CPF` char(11) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `allow` longtext DEFAULT 'guest',
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `created`, `updated`, `username`, `email`, `CPF`, `password`, `allow`, `status`) VALUES
(1, '2023-11-14 12:19:19', '2023-11-14 12:19:19', 'rogerio', NULL, NULL, 'rogerio', 'guest', 1),
(2, '2023-11-14 12:20:53', '2023-11-14 12:20:53', 'pedro', NULL, NULL, 'pedro', 'guest', 1),
(3, '2023-11-14 12:22:46', '2023-11-14 12:22:46', 'anna', NULL, NULL, '$2y$12$KPTTTbupzp1nUdlj0Y.OIuzNpKhwjWx1lsSCEoyS/4CL2VUC0YOvW', 'guest', 1),
(4, '2023-11-16 11:28:12', '2023-11-16 11:28:12', 'Lucas Tech', NULL, NULL, '$2y$12$H.YzJ/1bZHONJQ1hWuDDGOHFHcOWfOJjsuM0NBk/1Z5YVyKRIslSq', 'guest', 1),
(5, '2023-11-16 12:29:39', '2023-11-16 12:29:39', 'Anna Tech', 'anna@tech.com', '11111111111', '$2y$12$EbYSXOxFx0WDXFCTLEPgv.8o0Ar92YETQgJEi5QHcM5P1wPQWasNS', 'admin,view,edit,add,delete', 1),
(6, '2023-11-16 13:16:00', '2023-11-16 13:16:00', 'Rogerio Tech', NULL, NULL, '$2y$12$KFE1XDg.ZOyb5yqSExz/OuaXFBx9YiVu2RHGq5.GYUTEQLR.xKKia', 'guest', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pessoa_id` (`pessoa_id`);

--
-- Índices para tabela `occupations`
--
ALTER TABLE `occupations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `CPF` (`CPF`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `occupations`
--
ALTER TABLE `occupations`
  MODIFY `id` bigint(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2610;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `documentos`
--
ALTER TABLE `documentos`
  ADD CONSTRAINT `documentos_ibfk_1` FOREIGN KEY (`pessoa_id`) REFERENCES `pessoas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
