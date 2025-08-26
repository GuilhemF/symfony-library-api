-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 26 août 2025 à 14:24
-- Version du serveur : 10.6.22-MariaDB-0ubuntu0.22.04.1
-- Version de PHP : 8.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `library_api_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`id`, `nom`) VALUES
(3, 'Barjavel'),
(4, 'Harry Harrison'),
(5, 'Alexandre Dumas'),
(6, 'Virignie Despentes'),
(7, 'Bret Easton Ellis'),
(8, 'Mourad Winter');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`) VALUES
(1, 'Aventure'),
(3, 'Humour'),
(4, 'Science-Fiction'),
(5, 'Thriller'),
(6, 'Classique'),
(7, 'Drame');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20250809143734', '2025-08-09 14:38:58', 31),
('DoctrineMigrations\\Version20250809201047', '2025-08-09 20:11:01', 29),
('DoctrineMigrations\\Version20250810142849', '2025-08-10 14:29:30', 33),
('DoctrineMigrations\\Version20250811072536', '2025-08-11 07:27:08', 166);

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `auteur_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`id`, `titre`, `description`, `slug`, `image`, `auteur_id`) VALUES
(8, 'La nuit des temps', 'L\'Antarctique peut révéler bien des secrets... Des scientifiques vont en effet détecter un signal en provenance du sous-sol glaciaire et mettre à jour, à plus d\'un kilomètre de profondeur, une sphère datant de plus de 900 000 ans. A l\'intérieur, endormis, un homme et une femme les attendent. Passé le premier instant de stupeur, les chercheurs décident de réveiller la femme, dont le corps parfait a, semble-t-il, subi le moins de dommages. Grâce à une Traductrice, les scientifiques sont alors à même d\'entendre et de voir son incroyable récit, celui d\'une humanité ayant vécu plus d\'un million d\'années auparavant, détentrice d\'un fabuleux pouvoir permettant de créer la matière à partir du néant. L\'homme endormi avec la belle Eléa, seul à même d\'expliquer l\'étrange équation de Zoran qui résout, à elle seule, ce qu\'est l\'énergie absolue, devient alors l\'objet d\'un enjeu dépassant l\'entendement. Simon, le jeune médecin de l\'équipe, amoureux dès le premier regard posé sur Eléa, parviendra-t-il à protéger celle qu\'il aime ? Saura-t-il seulement la garder auprès de lui quand le coeur de sa bien-aimée semble resté prisonnier dans la glace et le temps ?', NULL, 'https://library-api.guilhemf.com/img/nuit.jpg', 3),
(9, 'Ravage', '\"- Vous ne savez pas ce qui est arrivé ? Tous les moteurs d\'avions se sont arrêtés hier à la même heure, juste au moment où le courant flanchait partout. Tous ceux qui s\'étaient mis en descente pour atterrir sur la terrasse sont tombés comme une grêle. Vous n\'avez rien entendu, là-dessous ? Moi, dans mon petit appartement près du garage, c\'est bien un miracle si je n\'ai pas été aplati. Quand le bus de la ligne 2 est tombé, j\'ai sauté au plafond comme une crêpe... Allez donc jeter un coup d\'oeil dehors, vous verrez le beau travail !\"', NULL, 'https://library-api.guilhemf.com/img/ravage.jpg', 3),
(10, 'Soleil vert', 'Tandis que l\'humanité s\'apprête à entrer dans le troisième millénaire, la surpopulation est devenue telle que les ressources naturelles ne suffisent plus à couvrir ses besoins. La nourriture et l\'eau sont rationnées, il n\'y a plus de pétrole, plus guère d\'animaux. Trente-cinq millions de New-Yorkais, pour la plupart sans emploi ni logement, se battent pour survivre. Andy Rush a un travail, lui. Tous les jours, avec les autres policiers de sa brigade, il part disperser les émeutes de la faim qui se produisent lors de chaque nouvelle distribution de nourriture de synthèse. Alors, qu\'importe si un nabab aux activités louches s\'est fait descendre ? S\'il parvenait à attraper le meurtrier, Andy le remercierait presque pour services rendus...', NULL, 'https://library-api.guilhemf.com/img/soleil.jpg', 4),
(11, 'Les trois mousquetaires', 'Dumas séduit, fascine, intéresse, amuse, enseigne.Victor Hugo.Tout le monde connaît la verve prodigieuse de M. Dumas, son entrain facile, son bonheur de mise en scène, son dialogue spirituel et toujours en mouvement, ce récit léger qui court sans cesse et qui sait enlever l’obstacle et l’espace sans jamais faiblir. Il couvre d’immenses toiles sans jamais fatiguer ni son pinceau, ni son lecteur.Sainte-Beuve.Les Trois Mousquetaires… notre seule épopée depuis le Moyen Âge.Roger Nimier.Les Trois Mousquetaires forment le plus divertissant des romans d’aventures. Leurs personnages, Athos, Porthos, Aramis et d’Artagnan, sont sortis des bibliothèques pour descendre dans la rue. Ils ont enseigné l’insolence et l’amitié à beaucoup de jeunes Français qui ont aussi découvert les fatalités de l’amour en rêvant aux belles épaules de Milady et à ses regards de perdition.Kléber Haedens.', NULL, 'https://library-api.guilhemf.com/img/mousquetaire.webp', 5),
(12, 'Le Comte de Monte-Cristo', 'Comment devenir comte de Monte-Cristo quand on est simple marin ? Ce roman est le récit d\'une transformation, de celles qui affectent les créatures acculées au changement : la métamorphose. Espérant modestement devenir capitaine, Edmond Dantès se heurtera pourtant à la conspiration la plus lâche. Dans les geôles du château d\'If, où il a été injustement jeté, Edmond entame la mue d\'un être rivé à la plus dévorante des passions : la vengeance. Innocent décrété coupable par les calculs de ses ennemis et le cynisme de toute une époque, Dantès ne s\'en laissera plus compter : à lui intrigues et dissimulation. Pour faire tomber les masques il lui faudra s\'en forger un, pétri dans la rancoeur des années perdues. Palpitant roman d\'aventures, devenu le modèle du genre, cette traversée épique du XIXᵉ siècle précipitera les personnages de Marseille à Paris en passant par Rome et la Méditerranée. Le Comte de Monte-Cristo répond aux mesquineries du siècle par le souffle d\'une odyssée. Édition en deux volumes.', NULL, 'https://library-api.guilhemf.com/img/cristo.jpg', 5),
(13, 'Vernon Subutex (Tome 1)', ' Qui est Vernon Subutex ?\nUne légende urbaine.\nUn ange déchu.\nUn disparu qui ne cesse de ressurgir.\nLe détenteur d\'un secret.\nLe dernier témoin d\'un monde révolu.\nL\'ultime visage de notre comédie inhumaine.\nNotre fantôme à tous.\n\nMagistral et fulgurant. Une œuvre d\'art. François Busnel, L\'Express.\n\nDans cette peinture d\'une France qui dégringole dans la haine et la précarité, Virginie Despentes touche au sommet de son art. Alexis Brocas, Le Magazine littéraire.\n\nUne comédie humaine d\'aujourd\'hui dont Balzac pourrait bien se délecter. Pierre Vavasseur, Le Parisien. ', NULL, 'https://library-api.guilhemf.com/img/sub1.jpg', 6),
(14, 'Vernon Subutex (Tome 2)', 'On retrouve Vernon, toujours SDF, et mal en point. L\'ancien disquaire est déconnecté du monde réel, sans ambition ni projets. Il apprend à vivre dans la rue, au côté de Charles, un poivrot collant. Les anciens amis de Vernon continue de le traquer comme il possède l’interview inédite du rockeur Alex Bleach, enregistrée peu avant sa mort…\nUne formidable suite après un premier tome salué par une presse unanime et plusieurs fois primé.', NULL, 'https://library-api.guilhemf.com/img/sub2.webp', 6),
(15, 'Vernon Subutex (Tome 3)', ' Un dernier volume encore plus explosif que les précédents. Nelly Kaprièlian, Les Inrockuptibles.\n\nLe constat est d’une âpreté inouïe, dans laquelle pourtant ne se dissout pas l’humanisme tenace et rageur qu’on sent pulser dans chaque page, chaque phrase. Nathalie Crom, Télérama.\n\nLa manière qu’a Despentes de dépeindre ses personnages et de les ancrer dans le réel captive. Emma Dubois, Les Échos.\n\nTrois tomes addictifs et intelligents. Drôlerie, sens de la formule et collision des niveaux de langage se mêlent pour rendre Vernon irrésistible. Raphaëlle Leyris, Le Monde des livres.\n\nL’une des fresques les plus marquantes de ce début de XXIe siècle. Marianne Pavot, L’Express. ', NULL, 'https://library-api.guilhemf.com/img/sub3.webp', 6),
(16, 'Les lois de l\'attraction', 'Le roman le moins connu de B.E. Ellis est peut-être le meilleur – sinon le plus hypnotique. La précision stylistique plus aboutie que dans Moins que zéro se love dans une méthode narrative mûrie : faire se fondre les personnages dans la chimère de ce qu\'ils veulent se croire. Croisant les existences fantomatiques d\'étudiants pendant l\'année universitaire 1985/86, Ellis en étale cliniquement les aventures, frustrations et errances, les peignant en poissons avariés s\'incrustant dans du papier journal, un journal intime collectif schizoïde et momifié. Il n\'est que drague morne, drogue triste et sexe froid, parsemant l\'évolution de ces pantins (parfois rencontrés dans Moins que zéro) dans le néant dévorant de leur vie. 340 pages de : SEAN- Vais dans la chambre de Denton. Nous descendons quelques bières, on fume de l\'herbe, on discute, mais je ne saque pas l\'histoire de la mort de son copain, pas davantage la musique de Duran Duran ni ses regards torves, si bien que nous continuer de parler et que je me sens de plus en plus raide. Chronique hébétée sous forme de succession de monologues intérieurs et démonstration d\'écriture, Les Lois de l\'attraction captive, amuse et terrifie. Parfait vaccin contre toute nostalgie pour les années 80, c\'est le pendant partouze-valium de l\'autre grand roman d\'Ellis, American Psycho, centré lui sur un seul personnage pour mieux en sonder les abysses. ', NULL, 'https://library-api.guilhemf.com/img/attraction.jpg', 7),
(17, 'Lunar Park', 'Cinq ans après l\'éblouissant Glamorama, Bret Easton Ellis change de registre et se met en scène pour devenir le personnage central de Lunar Park.\nOn se souvient des personnages décadents Patrick Bateman (American Psycho) et Victor Ward (Glamorama), des paradis artificiels, de la gloire et de la violence qui étaient au cœur de leurs expériences. Comme s\'il s\'agissait d\'écarter une réputation sulfureuse, mêlant ses propres souvenirs, ses démons et les personnages qui peuplent ses précédents textes, Ellis décide avec Lunar Park d\'incarner lui-même un homme marié, père de famille, vivant dans une immense propriété du comté de Midland. En définitive, une vie bourgeoise partagée entre le centre commercial le samedi après-midi, les séances chez une thérapeute pour couples et les dîners entre voisins. Un revirement comique qui se transforme en cauchemar. Le narrateur, Bret Easton Ellis, pense que les madeleines de Proust sont des mandarines, que sa maison d\'Elsinore Lane est hantée, que le spectre est son père mort et peut-être aussi le héros assassin d\'American Psycho, qu\'il doit retrouver la simplicité des phrases de son premier roman... Un rêve halluciné et jubilatoire qui mêle autobiographie et visions stupéfiantes : Bret Easton Ellis se joue avec humour et virtuosité du mythe de l\'écrivain pour écrire un roman puissant et magistralement maîtrisé. Lunar Park paraît quasi simultanément aux États-Unis, en Angleterre et en France.', NULL, 'https://library-api.guilhemf.com/img/lunar.jpg', 7),
(18, 'Les meufs, c\'est des mecs bien', 'Un récit follement contemporain. Entre deux vannes et références pop, Mourad aborde les sujets de l\'Islam, de l\'amour, de la pression sociétale avec une sensibilité enrobée de mordant.\n\nWourad et Adélaïde filent le parfait amour. Ensemble depuis bientôt deux ans, ils ont réussi jusque-là à faire abstraction de leurs divergences religieuses, car \" l\'amour est plus fort que tout \". C\'est pas eux qui le disent, ils l\'ont lu sur Facebook.\nUn soir, Adélaïde fait une annonce qui bouleverse la vie du couple. Elle compte se convertir à l\'Islam et porter le voile.\nAinsi, Wourad passe, sans le vouloir, de rebeu cool à DRH de Daesh dans l\'esprit de sa belle-famille, mais aussi auprès de ses proches.\nSauf que lui n\'avait pas du tout prévu ça, et la religion, bah il y connaît que dalle... ', NULL, 'https://library-api.guilhemf.com/img/meuf.jpg', 8),
(19, 'L\'Amour, c\'est surcoté', 'Une idée : la séduire. Peu de temps : il a la dalle.\n\nLui, c\'est Wourad.\nIl a vingt-sept ans. Il aime bien dire que c\'est l\'âge du Christ... quand il avait vingt-sept ans. Il trouve ça drôle. Il est lourd, parfois. Et souvent il est misogyne, homophobe, raciste. Il coche toutes les mauvaises cases. Un gars un peu paumé. Un gars qui n\'a jamais su qui il était vraiment. Un jour, il rencontre une fille. Pas du tout paumée, on dirait. Sacrément futée, même. Comme il adore les paris débiles, il se donne trente jours pour la ken. Pas un de plus. ', NULL, 'https://library-api.guilhemf.com/img/amour.jpg', 8);

-- --------------------------------------------------------

--
-- Structure de la table `livre_categorie`
--

CREATE TABLE `livre_categorie` (
  `livre_id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `livre_categorie`
--

INSERT INTO `livre_categorie` (`livre_id`, `categorie_id`) VALUES
(8, 4),
(9, 4),
(10, 4),
(11, 1),
(11, 6),
(12, 1),
(12, 6),
(13, 7),
(14, 7),
(15, 7),
(16, 5),
(17, 5),
(18, 3),
(19, 3);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'contact@guilhemf.com', '[\"ROLE_ADMIN\"]', '$2y$13$GBwBXungkULXhd7QLCKCx.AxpA7JeZgX60ASFO9EC34UyUQqyuFee');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AC634F9960BB6FE6` (`auteur_id`);

--
-- Index pour la table `livre_categorie`
--
ALTER TABLE `livre_categorie`
  ADD PRIMARY KEY (`livre_id`,`categorie_id`),
  ADD KEY `IDX_E61B069E37D925CB` (`livre_id`),
  ADD KEY `IDX_E61B069EBCF5E72D` (`categorie_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `FK_AC634F9960BB6FE6` FOREIGN KEY (`auteur_id`) REFERENCES `auteur` (`id`);

--
-- Contraintes pour la table `livre_categorie`
--
ALTER TABLE `livre_categorie`
  ADD CONSTRAINT `FK_E61B069E37D925CB` FOREIGN KEY (`livre_id`) REFERENCES `livre` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E61B069EBCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
