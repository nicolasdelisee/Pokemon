-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: pokedex
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_pokedex` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `sprite` varchar(500) DEFAULT NULL,
  `trivia` varchar(5000) DEFAULT NULL,
  `main_type` int DEFAULT NULL,
  `secondary_type` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pokemon_FK` (`main_type`),
  KEY `pokemon_FK_1` (`secondary_type`),
  CONSTRAINT `pokemon_FK` FOREIGN KEY (`main_type`) REFERENCES `type` (`id`),
  CONSTRAINT `pokemon_FK_1` FOREIGN KEY (`secondary_type`) REFERENCES `type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
INSERT INTO `pokemon` VALUES (1,1,'Bulbizarre','https://www.pokepedia.fr/images/thumb/e/ef/Bulbizarre-RFVF.png/250px-Bulbizarre-RFVF.png','https://www.pokepedia.fr/images/3/33/Miniature_001_DEPS.png','Bulbizarre est un petit quadrupède vert avec une tête large. Il porte un bulbe sur son dos. Ce dernier lui sert également d\'organe de stockage, puisqu\'on rapporte notamment qu\'en période de sécheresse, il peut survivre plusieurs jours sans manger grâce à l\'énergie qui y est accumulée. Il a des taches foncées sur le corps faisant penser à un batracien. Son bulbe grandit en permanence en absorbant les rayons du soleil, et lorsque le poids du bulbe sera trop grand et empêchera Bulbizarre de se dresser sur ses deux pattes arrière, cela signifiera que son évolution en Herbizarre est proche.',11,NULL),(2,2,'Herbizarre','https://www.pokepedia.fr/images/thumb/4/44/Herbizarre-RFVF.png/250px-Herbizarre-RFVF.png','https://www.pokepedia.fr/images/f/fc/Miniature_002_DEPS.png','Herbizarre est un Pokémon quadrupède, semblable à un dinosaure. Il a un corps bleu vert avec des taches plus foncées. Deux canines supérieures dépassent de sa bouche quand elle est fermée, et par rapport à sa pré-évolution, ses yeux sont plus petits et plus foncés. Il a sur le haut de sa tête deux oreilles pointues remplies de noir. Il a un petit museau rond et une large bouche. Chacun de ses pieds possède trois griffes pointues et blanches. Le bulbe sur son dos a fleuri et est devenu un gros bourgeon rose dont le poids est tel qu\'il empêche Herbizarre de se tenir sur ses pattes postérieures trop longtemps. Une petite tige marron, entourée par quatre larges feuilles, soutient le bourgeon.\n\nQuand le bourgeon est sur le point d\'éclore, il dégage une délicate odeur fleurie et commence à se gonfler. Herbizarre commence donc à passer plus de temps au soleil pour préparer son évolution proche. L\'exposition au soleil donne plus de force à la plante et à Herbizarre. Les Herbizarre vivent naturellement dans les plaines. Cependant, à présent, beaucoup vivent en captivité. ',11,NULL),(3,3,'Florizarre','https://www.pokepedia.fr/images/thumb/4/42/Florizarre-RFVF.png/250px-Florizarre-RFVF.png','https://www.pokepedia.fr/images/c/ca/Miniature_003_DEPS.png','Florizarre est un imposant quadrupède à la peau verte ayant l\'aspect d\'un batracien, il est beaucoup plus grand et lourd que Bulbizarre et Herbizarre. Il porte une grande fleur rose tachetée sur son dos, entourée de quatre grandes feuilles. L\'intérieur de ses oreilles s\'est coloré de rouge et sa peau au niveau de ses pattes est désormais recouverte d\'excroissances faisant penser aux verrues d\'un crapaud. Sa bouche est ornée de six petites canines. Chacun de ses pas provoque un tremblement du sol. Sa fleur émet un parfum qui calme les esprits et appâte les Pokémon. Ce parfum est plus entêtant après une journée de pluie. La fleur permet aussi à Florizarre d\'absorber les rayons du soleil pour se soigner ou être plus efficace en combat.\n\nFlorizarre possède plus de lianes que ses pré-évolutions, qui étaient limitées à deux. Avec elles, il peut soulever des adversaires très lourds. Lors d\'une attaque Lance-Soleil, sa fleur sur son dos emmagasine l\'énergie des rayons du soleil, mais il semblerait qu\'il puisse relâcher sa puissance soit par l\'orifice de sa plante, soit par sa bouche, selon la position angulaire de son adversaire.',11,NULL),(4,4,'Salamèche','https://www.pokepedia.fr/images/thumb/8/89/Salam%C3%A8che-RFVF.png/530px-Salam%C3%A8che-RFVF.png?20141019213025','https://www.pokepedia.fr/images/7/72/Miniature_004_EV.png','Salamèche est un Pokémon bipède et reptilien avec un corps principalement orange, à l\'exception de son ventre et de ses plantes de pieds qui sont beiges. Ses bras et ses jambes sont courts, avec respectivement quatre doigts et trois griffes chacune. Une flamme brûle au bout de la svelte queue de Salamèche, et elle flamboie depuis sa naissance. La flamme peut servir d\'indication quant à la santé et à l\'humeur de Salamèche : elle brûle fièrement quand le Pokémon est en pleine forme, doucement si le Pokémon est faible ou triste, ondoie quand il est heureux et flamboie quand il est en colère. Il est dit qu\'un Salamèche meurt si sa flamme s\'éteint.\n\nSalamèche peut être trouvé dans les chaudes aires montagneuses. Cependant, il est trouvé encore plus fréquemment sous la propriété d\'un Dresseur. Comme montré dans Pokémon Snap, Salamèche a un comportement de groupe, appelant les autres membres de sa bande quand il trouve à manger.',7,NULL),(5,5,'Reptincel','https://www.pokepedia.fr/images/thumb/6/64/Reptincel-RFVF.png/250px-Reptincel-RFVF.png','https://www.pokepedia.fr/images/4/49/Miniature_005_EV.png','Reptincel est tiré du dinosaure ; il possède trois grandes et puissantes griffes acérées à chaque main et pied, qui l\'aident notamment à déchirer la peau de ses ennemis lors des combats. Sa peau est plus foncée que celle de sa pré-évolution et son museau s\'est allongé. Son crâne est désormais doté d\'une crête. Sa queue, longue et terminée par une flamme, lui sert notamment à élever sa température, le rendant plus puissant en combat, et à faire chuter ses adversaires avant de les achever.\n\nLe Pokédex le dit extrêmement agressif, violent, voire cruel dans certains cas. Il cherche toujours des adversaires plus puissants et sa flamme devient bleue tandis que sa température augmente.',7,NULL),(6,6,'Dracaufeu','https://www.pokepedia.fr/images/thumb/1/17/Dracaufeu-RFVF.png/250px-Dracaufeu-RFVF.png','https://www.pokepedia.fr/images/4/4a/Miniature_006_EV.png','Dracaufeu est basé sur un dragon européen. Contrairement à ses pré-évolutions, il a deux ailes lui permettant de voler : l\'intérieur des ailes est bleu alors que leur verso est orange. Son cou s\'est développé, il est désormais plus long et deux crêtes ont poussé à l\'arrière de son crâne. Ses membres supérieurs se sont atrophiés tandis que sa queue s\'est allongée pour permettre à ce titan de garder une certaine stabilité au sol bien qu\'il soit plus à l\'aise dans les airs. Sa dentition, avec ses canines apparentes, révèle une préférence marquée pour la viande ; il possède trois griffes à chaque patte et a le ventre jaune pâle. Pokémon noble, il n\'attaque pas les plus faibles que lui et cherche toujours des adversaires plus forts. Après un combat difficile ou s\'il est en colère, sa flamme s\'intensifie et devient blanc-bleu. Il crache des flammes pouvant faire fondre n\'importe quoi et est souvent la cause d\'incendies.',7,18),(7,7,'Carapuce','https://www.pokepedia.fr/images/thumb/c/cc/Carapuce-RFVF.png/250px-Carapuce-RFVF.png','https://www.pokepedia.fr/images/a/ab/Miniature_007_DEPS.png','Carapuce est une petite tortue bipède de couleur bleue. Il possède une carapace brune au pourtour blanc, beige au niveau du ventre. Ses yeux sont grands et violacés. Il a une queue enroulée sur elle-même formant une spirale. Il possède quatre pattes avec chacune trois doigts.\n\nSa carapace, molle à la naissance, durcit avec le temps et lui sert à se protéger pour lancer ensuite des jets d\'eau ou d\'écume, mais aussi à améliorer son hydrodynamisme.',4,NULL),(8,8,'Carabaffe','https://www.pokepedia.fr/images/thumb/2/2a/Carabaffe-RFVF.png/250px-Carabaffe-RFVF.png','https://www.pokepedia.fr/images/7/74/Miniature_008_DEPS.png','Carabaffe est une tortue bipède de couleur bleu indigo, dont les oreilles et la queue sont recouvertes d\'une fourrure duveteuse de couleur blanche ; celle-ci fait d\'ailleurs penser à des vagues. Ses grands yeux sont marron. Trois griffes ornent chacune de ses pattes, et une épaisse carapace le protège des coups.\n\nCarabaffe est fait pour le combat : des canines affleurent sur ses lèvres, sa queue peut administrer de puissantes volées de coups et ses pattes robustes lui permettent de résister aux chocs. Il semble pouvoir nager extrêmement vite, notamment à l\'aide de ses oreilles et de sa queue.\n\nIl serait inspiré d\'un cryptide japonais : Minogame, avec lequel il partage les oreilles et la queue.',4,NULL),(9,9,'Tortank','https://www.pokepedia.fr/images/thumb/2/24/Tortank-RFVF.png/250px-Tortank-RFVF.png','https://www.pokepedia.fr/images/2/2c/Miniature_009_DEPS.png','Tortank est un bipède massif de la famille des tortues. Les extrémités supérieures gauche et droite de sa carapace sont ornées d\'un canon à eau pouvant être orienté dans diverses directions. Formé au combat, sa tête s\'est endurcie : le duvet de Carabaffe n\'est plus présent et il possède désormais deux petites oreilles et une queue courte. Ses griffes se sont maintenant développées sur tous ses doigts et ses yeux n\'ont pas changé de couleur.',4,NULL),(10,10,'Chenipan','https://www.pokepedia.fr/images/thumb/c/c7/Chenipan-RFVF.png/250px-Chenipan-RFVF.png','https://www.pokepedia.fr/images/c/c3/Miniature_010_DEPS.png','Chenipan est un Pokémon serpentin ressemblant aux larves de Papilio troilus. Il a le corps d\'une chenille verte avec des marques jaunes en forme d\'anneaux sur les flancs. Il possède également de grands yeux jaunes aux pupilles noires. Sa caractéristique la plus notable est l\'antenne rouge vif sur sa tête en forme de « Y », certainement un osmeterium, qui libère une odeur repoussant les prédateurs. Ses marques en formes d\'yeux servent également à effrayer ses ennemis. Ses pattes se terminent par des ventouses, permettant à ce Pokémon d\'escalader la plupart des surfaces avec un minimum d\'efforts.',9,NULL),(11,11,'Chrysacier','https://www.pokepedia.fr/images/thumb/6/6c/Chrysacier-RFVF.png/250px-Chrysacier-RFVF.png','https://www.pokepedia.fr/images/0/02/Miniature_011_DEPS.png','Chrysacier est un Pokémon cocon intégralement vert. Courbé vers l\'arrière, il possède deux yeux à demi fermés avec des sclères blanches (jaune pâle dans l\'animé). Sous ses yeux, plusieurs plaques prennent la forme d\'un museau. Il possède une pointe au milieu du dos. L\'extrémité inférieure de son corps comporte deux anneaux striés.',9,NULL),(12,12,'Papilusion','https://www.pokepedia.fr/images/thumb/8/83/Papilusion-RFVF.png/250px-Papilusion-RFVF.png','https://www.pokepedia.fr/images/4/47/Miniature_012_DEPS.png','Papilusion est une sorte de papillon possédant de grandes antennes. Il est violet avec des parties bleues ; ses ailes, très grandes pour sa taille, permettent notamment les capacités de type Vol et l\'utilisation de diverses poudres. Comme pour les insectes réels, ses yeux sont probablement composés. Ses ailes possèdent des motifs comme les papillons. Il a deux grands pieds qui ne semblent pas posséder de doigts, mais deux mains qui en ont trois sur chacune d\'elles. Papilusion a deux petites dents qui semblent sortir de son nez. Ses antennes sont de longues tiges noires avec une boule au bout. Il adore le pollen.',9,18),(13,13,'Aspicot','https://www.pokepedia.fr/images/thumb/9/9b/Aspicot-RFVF.png/250px-Aspicot-RFVF.png','https://www.pokepedia.fr/images/0/01/Miniature_013_DEPS.png','Aspicot est à moitié chenille et à moitié asticot. Sa tête est recouverte d\'un aiguillon empoisonné qui fait sa dangereuse réputation.\n\nContrairement à son « rival » Chenipan, il est muni de petits yeux noirs et de quatorze petites pattes rondes et violettes le long de son corps marron clair. Au bout de sa queue, il possède un autre aiguillon empoisonné qui lui sert beaucoup moins. Il n\'a pas de bouche ni d\'oreilles, mais a un gros nez violet de forme ovale.',9,NULL),(14,14,'Coconfort','https://www.pokepedia.fr/images/thumb/b/b6/Coconfort-RFVF.png/250px-Coconfort-RFVF.png','https://www.pokepedia.fr/images/4/40/Miniature_014_DEPS.png','Coconfort est en fait un Pokémon enveloppé dans une armure marron clair attendant son évolution. Il est inspiré d\'une nymphe de guêpe, c\'est-à-dire son stade entre la larve et l\'adulte. Il a deux dards sous sa tête triangulaire, précurseurs de sa future évolution en Dardargnan. Il a deux yeux noirs à pupille blanche.\n\nCe Pokémon est l\'état intermédiaire entre Aspicot et Dardargnan ; il dort constamment tant qu\'il n\'a pas évolué en ce dernier.\n\nDans Pokémon Rouge et Bleu, le sprite de Coconfort présentait des griffes, qu\'on ne retrouve plus dans aucun autre jeu.',9,NULL),(15,15,'Dardagnan','https://www.pokepedia.fr/images/thumb/e/ee/Dardargnan-RFVF.png/250px-Dardargnan-RFVF.png','https://www.pokepedia.fr/images/f/fb/Miniature_015_DEPS.png','Dardargnan est un Pokémon inspiré de la guêpe géante du Japon, le vespa mandarinia. Il possède deux grandes antennes sur sa tête triangulaire. Il est jaune et noir et possède quatre pattes dont les deux antérieures sont munies de gros dards. Il possède quatre ailes transparentes et un dard jaune en guise de queue. Ses yeux sont rouges et lui permettent de voir même en grande vitesse pendant son vol.',9,12),(16,16,'Roucool','https://www.pokepedia.fr/images/thumb/9/94/Roucool-RFVF.png/250px-Roucool-RFVF.png','https://www.pokepedia.fr/images/5/52/Miniature_016_DEPS.png','Roucool est un petit Pokémon aviaire au corps dodu. Il est principalement marron avec un visage, un ventre et quelques plumes de couleur crème. Ses serres et son bec sont gris rosâtre. Il a des marquages noirs angulaires autour des yeux et une petite crête aux plumes marron et crème sur le dessus de la tête.\n\nRoucool a un sens de l\'orientation extrêmement aiguisé, surtout pour rentrer chez lui. Il peut localiser son nid même s\'il a été déplacé. C\'est un Pokémon docile, et il préfère s\'enfuir en volant devant ses ennemis plutôt que de les combattre. En agitant rapidement ses ailes, il peut soulever des nuages de poussière et créer des tourbillons pour se protéger et faire fuir son potentiel ennemi. Roucool est un Pokémon très commun, et peut être trouvé dans les prés et les forêts.',10,18),(17,17,'Roucoups','https://www.pokepedia.fr/images/thumb/d/dc/Roucoups-RFVF.png/250px-Roucoups-RFVF.png','https://www.pokepedia.fr/images/7/7d/Miniature_017_DEPS.png','Roucoups est un Pokémon volatile qui ressemble à un rapace. Il est couvert de plumes marron, et a un visage et un ventre couleur crème. Il a une crête de plumes rouge rosâtre sur le dessus de la tête et des marquages noirs angulaires autour des yeux. Le plumage de sa queue est alternativement rouge et jaune, et les plumes de sa queue ont un bout déchiqueté. Son bec et ses jambes sont roses, et il a de puissantes serres aiguisées dont il se sert pour attraper ses proies.\n\nRoucoups est un puissant volatile qui peut repérer des proies à plusieurs kilomètres de son nid. Il a une vision extraordinaire, ce qui l\'aide à repérer ses proies préférées, comme les Magicarpe ou les Noeunoeuf. Dans l\'animé, il s\'attaque aux Chenipan. Un Roucoups peut étendre son territoire jusqu\'à 60 kilomètres à la ronde. Son nid est généralement au centre de son territoire. Il survole tous les jours son territoire à la recherche de nourriture ou d\'intrus. Roucoups est un Pokémon dangereux, il donne de dynamiques coups de bec aux intrus. Il est communément trouvé dans les forêts.',10,18),(18,18,'Roucarnage','https://www.pokepedia.fr/images/thumb/d/d8/Roucarnage-RFVF.png/250px-Roucarnage-RFVF.png','https://www.pokepedia.fr/images/3/3e/Miniature_018_DEPS.png','Bien que dans beaucoup de langues, son nom soit issu du terme pigeon, il a bien plus de points communs avec un aigle. Ainsi, il partage avec cet animal une silhouette proche (allure générale, taille, forme des ailes et des serres, etc) et d\'autres données physiologiques, comme la vue perçante. Cependant, ce Pokémon oiseau est doté d\'un physique assez fort. Là où d\'autres concurrents du même genre sont plutôt petits (Hélédelle mesure 0,7 m - Étouraptor, Déflaisan, Flambusard et Rapasdepic mesurent 1,2 m), Roucarnage atteint une moyenne d\'1,5 m. De même pour la masse, Hélédelle pèse 19,8 kg, Étouraptor atteint 24,9 kg, Rapasdepic 38 kg, Flambusard 24,5 kg et Déflaisan 29 kg; alors que Roucarnage monte à 39,5 kg. Son allure à l\'aspect moins élancé traduit d\'ailleurs ces données physiques. De ce fait, Roucarnage se sert surtout de ses ailes puissantes pour attaquer. Si contrairement à Rapasdepic, il n\'a pas la capacité de lancer l\'attaque Bec Vrille, il se sert surtout de Tornade, Cyclone mais aussi Cru-Aile et Rapace. L\'attaque Hâte est aussi régulièrement utilisée pour combler ce déficit de vitesse. Roucarnage est un Pokémon réputé pour sa fierté, ainsi que son ardeur à défendre son territoire. A l\'état domestique, il est en général très docile (notamment parce que la plupart des Roucarnage domestiques sont issus d\'évolutions à partir du stade de base Roucool), mais conserve son ardeur qu\'il met au service de son Dresseur.',10,18),(19,19,'Rattata','https://www.pokepedia.fr/images/thumb/9/9e/Rattata-RFVF.png/250px-Rattata-RFVF.png','https://www.pokepedia.fr/images/9/93/Miniature_019_DEPS.png','Rattata est un Pokémon ressemblant à un rat au corps violet et blanc pâle. C\'est donc un quadrupède, avec trois griffes à chaque patte.\n\nIl possède deux moustaches qui lui donnent plus de stabilité pour être plus rapide ; soit pour attaquer, soit pour fuir. Il a deux oreilles dont l\'ouïe peut porter très loin en plus d\'yeux rouges à vue perçante. Sa bouche est munie de deux grandes dents. Son ventre est complètement blanc pâle et il possède une longue queue violette qui se retourne sur elle-même. Selon le Pokédex, une étude a prouvé que les dents du Rattata repoussent aussi vite que celle du Keunotor.',10,NULL),(20,20,'Rattatac','https://www.pokepedia.fr/images/thumb/9/98/Rattatac-RFVF.png/250px-Rattatac-RFVF.png','https://www.pokepedia.fr/images/f/fc/Miniature_020_DEPS.png','Rattatac ressemble à un gros rat et possède de petits bras, un corps marron et beige et des pieds palmés. Il a les yeux noirs. Il possède aussi une longue queue marron. Sa bouche possède deux larges incisives (une en bas et une en haut). Il a des moustaches qui sont au nombre de trois de chaque côté de sa tête. Rattatac est rapide et robuste et capable de croquer n\'importe quoi. Si l\'on coupe ses moustaches, il perdra de la vitesse et sera moins efficace au combat.',10,NULL);
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainer`
--

DROP TABLE IF EXISTS `trainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `sprite` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rival` int DEFAULT NULL,
  `trivia` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainer`
--

LOCK TABLES `trainer` WRITE;
/*!40000 ALTER TABLE `trainer` DISABLE KEYS */;
INSERT INTO `trainer` VALUES (1,'Sacha','https://www.pokepedia.fr/images/thumb/a/ae/Sacha-Anim%C3%A9_LV.png/175px-Sacha-Anim%C3%A9_LV.png','https://forums.p-insurgence.com/uploads/default/original/3X/9/8/98b4473d564e96176be7296d1263692e099b3f37.png',NULL,'Sacha Ketchum est le personnage principal de Pokémon, la série, et de divers mangas basés sur l\'anime. C\'est un Dresseur Pokémon originaire de Bourg Palette qui rêve de devenir Maître Pokémon. '),(2,'Koga','https://www.pokepedia.fr/images/thumb/e/e7/Koga-LGPE.png/250px-Koga-LGPE.png','https://static.wikia.nocookie.net/emile/images/4/4f/Spr_FRLG_Koga.webp/revision/latest/scale-to-width/360?cb=20201212163429',NULL,'Koga est le Champion de l\'Arène de Parmanie dans Pokémon Rouge, Bleu et Jaune et leurs remakes. Il devient ensuite un membre du Conseil 4 dans Pokémon Or, Argent et Cristal et leurs remakes, laissant l\'Arène entre les mains de sa fille Jeannine. Il est, selon un Jongleur de l\'Arène de Parmanie, le membre « d\'une grande famille de terribles ninjas ». Il est en effet un ninja, et il se spécialise dans l\'utilisation des Pokémon Poison.'),(3,'Scout','https://www.pokepedia.fr/images/3/3e/Sprite_Scout_LGPE.png?20210517124550','https://risibank.fr/cache/medias/0/28/2861/286177/full.jpeg',NULL,'Scout désigne une classe de Dresseurs apparue dès la première génération.\n\nSon apparence est celle d\'un enfant avec un chapeau de paille, un filet à papillon et un panier à insectes. Son alter-égo adulte est l\'Entomomaniac.\n\nLes Pokémon d\'un Scout sont la plupart du temps de bas niveau et de type Insecte (Chenipan, Chenipotte, etc.).'),(4,'Ondine','https://www.pokepedia.fr/images/thumb/3/39/Ondine-LGPE.png/250px-Ondine-LGPE.png','https://www.pokepedia.fr/images/e/e6/Sprite_Ondine_RFVF.png',NULL,'Ondine est la Championne d\'Arène de l\'Arène d\'Azuria dans la région de Kanto, spécialisée dans les Pokémon Eau.\n\nElle donne le Badge Cascade aux Dresseurs qui gagnent contre elle dans un combat Pokémon.'),(5,'Pierre','https://www.pokepedia.fr/images/thumb/7/73/Pierre-LGPE.png/150px-Pierre-LGPE.png','https://www.pokepedia.fr/images/e/e1/Sprite_Pierre_RFVF.png',NULL,'Pierre est le Champion de l\'Arène d\'Argenta, qui utilise principalement des Pokémon de type Roche.\n\nIl est également la source d\'inspiration pour l\'un des personnages principaux du dessin animé.'),(6,'Olga','https://ca.slack-edge.com/T6SG2QGG2-U030FUF1B7Z-8268f4864ba7-72',NULL,NULL,'Olga est un dresseur assidu');
/*!40000 ALTER TABLE `trainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainer_pokemon`
--

DROP TABLE IF EXISTS `trainer_pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainer_pokemon` (
  `trainer_id` int DEFAULT NULL,
  `pokemon_id` int DEFAULT NULL,
  KEY `trainer_pokemon_FK` (`trainer_id`),
  KEY `trainer_pokemon_FK_1` (`pokemon_id`),
  CONSTRAINT `trainer_pokemon_FK` FOREIGN KEY (`trainer_id`) REFERENCES `trainer` (`id`) ON DELETE SET NULL,
  CONSTRAINT `trainer_pokemon_FK_1` FOREIGN KEY (`pokemon_id`) REFERENCES `pokemon` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainer_pokemon`
--

LOCK TABLES `trainer_pokemon` WRITE;
/*!40000 ALTER TABLE `trainer_pokemon` DISABLE KEYS */;
INSERT INTO `trainer_pokemon` VALUES (1,1);
/*!40000 ALTER TABLE `trainer_pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` varchar(250) NOT NULL,
  `card` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Acier','https://www.pokepedia.fr/images/thumb/2/27/Miniature_Type_Acier_EV.png/80px-Miniature_Type_Acier_EV.png',NULL),(2,'Combat','https://www.pokepedia.fr/images/thumb/9/96/Miniature_Type_Combat_EV.png/80px-Miniature_Type_Combat_EV.png',NULL),(3,'Dragon','https://www.pokepedia.fr/images/thumb/3/3d/Miniature_Type_Dragon_EV.png/80px-Miniature_Type_Dragon_EV.png',NULL),(4,'Eau','https://www.pokepedia.fr/images/thumb/3/3d/Miniature_Type_Eau_EV.png/80px-Miniature_Type_Eau_EV.png',NULL),(5,'Électrik','https://www.pokepedia.fr/images/thumb/6/6d/Miniature_Type_%C3%89lectrik_EV.png/80px-Miniature_Type_%C3%89lectrik_EV.png',NULL),(6,'Fée','https://www.pokepedia.fr/images/thumb/5/58/Miniature_Type_F%C3%A9e_EV.png/80px-Miniature_Type_F%C3%A9e_EV.png',NULL),(7,'Feu','https://www.pokepedia.fr/images/thumb/c/c7/Miniature_Type_Feu_EV.png/80px-Miniature_Type_Feu_EV.png','https://www.hiclipart.com/free-transparent-background-png-clipart-qbmjh'),(8,'Glace','https://www.pokepedia.fr/images/thumb/e/e7/Miniature_Type_Glace_EV.png/80px-Miniature_Type_Glace_EV.png',NULL),(9,'Insecte','https://www.pokepedia.fr/images/thumb/a/a9/Miniature_Type_Insecte_EV.png/80px-Miniature_Type_Insecte_EV.png',NULL),(10,'Normal','https://www.pokepedia.fr/images/thumb/b/bf/Miniature_Type_Normal_EV.png/80px-Miniature_Type_Normal_EV.png',NULL),(11,'Plante','https://www.pokepedia.fr/images/thumb/d/d9/Miniature_Type_Plante_EV.png/80px-Miniature_Type_Plante_EV.png',NULL),(12,'Poison','https://www.pokepedia.fr/images/thumb/1/1c/Miniature_Type_Poison_EV.png/80px-Miniature_Type_Poison_EV.png',NULL),(13,'Psy','https://www.pokepedia.fr/images/thumb/8/81/Miniature_Type_Psy_EV.png/80px-Miniature_Type_Psy_EV.png',NULL),(14,'Roche','https://www.pokepedia.fr/images/thumb/f/fe/Miniature_Type_Roche_EV.png/80px-Miniature_Type_Roche_EV.png',NULL),(15,'Sol','https://www.pokepedia.fr/images/thumb/4/40/Miniature_Type_Sol_EV.png/80px-Miniature_Type_Sol_EV.png',NULL),(16,'Spectre','https://www.pokepedia.fr/images/thumb/4/43/Miniature_Type_Spectre_EV.png/80px-Miniature_Type_Spectre_EV.png',NULL),(17,'Ténèbres','https://www.pokepedia.fr/images/thumb/b/bc/Miniature_Type_T%C3%A9n%C3%A8bres_EV.png/80px-Miniature_Type_T%C3%A9n%C3%A8bres_EV.png',NULL),(18,'Vol','https://www.pokepedia.fr/images/thumb/9/99/Miniature_Type_Vol_EV.png/80px-Miniature_Type_Vol_EV.png',NULL);
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-02 14:30:30
