-- DROP TABLE IF EXISTS trainer_pokemon;
-- DROP TABLE IF EXISTS pokemon;
-- DROP TABLE IF EXISTS trainer;
-- DROP TABLE IF EXISTS trainer_type;

CREATE TABLE pokedex.`type` (
	id INT auto_increment NOT NULL,
	name varchar(100) NOT NULL,
	CONSTRAINT type_PK PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;




CREATE TABLE pokedex.trainer (
	id INT auto_increment NOT NULL,
	name varchar(100) NOT NULL,
	photo varchar(500) NULL,
	sprite varchar(500) NULL,
	rival INT NULL,
	trivia varchar(5000) NULL,
	CONSTRAINT trainer_PK PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE pokedex.pokemon (
	id INT auto_increment NOT NULL,
	id_pokedex INT NOT NULL,
	name varchar(100) NOT NULL,
	photo varchar(500) NULL,
	sprite varchar(500) NULL,
	trivia varchar(5000) NULL,
	main_type INT NULL,
	secondary_type INT NULL,
	CONSTRAINT pokemon_PK PRIMARY KEY (id),
	CONSTRAINT pokemon_FK FOREIGN KEY (main_type) REFERENCES pokedex.`type`(id),
	CONSTRAINT pokemon_FK_1 FOREIGN KEY (secondary_type) REFERENCES pokedex.`type`(id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE pokedex.trainer_pokemon (
	trainer_id INT NULL,
	pokemon_id INT NULL,
	CONSTRAINT trainer_pokemon_FK FOREIGN KEY (trainer_id) REFERENCES pokedex.trainer(id),
	CONSTRAINT trainer_pokemon_FK_1 FOREIGN KEY (pokemon_id) REFERENCES pokedex.pokemon(id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO pokedex.`type` (name) VALUES
	 ('Acier'),
	 ('Combat'),
	 ('Dragon'),
	 ('Eau'),
	 ('Électrik'),
	 ('Fée'),
	 ('Feu'),
	 ('Glace'),
	 ('Insecte'),
	 ('Normal'),
	 ('Plante'),
	 ('Poison'),
	 ('Psy'),
	 ('Roche'),
	 ('Sol'),
	 ('Spectre'),
	 ('Ténèbres'),
	 ('Vol');

INSERT INTO pokedex.trainer (name,photo,sprite,rival,trivia) VALUES
	 ('Sacha','https://www.pokepedia.fr/images/thumb/a/ae/Sacha-Anim%C3%A9_LV.png/175px-Sacha-Anim%C3%A9_LV.png','https://forums.p-insurgence.com/uploads/default/original/3X/9/8/98b4473d564e96176be7296d1263692e099b3f37.png',NULL,'Sacha Ketchum est le personnage principal de Pokémon, la série, et de divers mangas basés sur l''anime. C''est un Dresseur Pokémon originaire de Bourg Palette qui rêve de devenir Maître Pokémon. ');

INSERT INTO pokedex.pokemon (id_pokedex,name,photo,sprite,trivia,main_type,secondary_type) VALUES
	 (1,'Bulbizarre','https://www.pokepedia.fr/images/thumb/e/ef/Bulbizarre-RFVF.png/250px-Bulbizarre-RFVF.png','https://www.pokepedia.fr/images/3/33/Miniature_001_DEPS.png','Bulbizarre est un petit quadrupède vert avec une tête large. Il porte un bulbe sur son dos. Ce dernier lui sert également d''organe de stockage, puisqu''on rapporte notamment qu''en période de sécheresse, il peut survivre plusieurs jours sans manger grâce à l''énergie qui y est accumulée. Il a des taches foncées sur le corps faisant penser à un batracien. Son bulbe grandit en permanence en absorbant les rayons du soleil, et lorsque le poids du bulbe sera trop grand et empêchera Bulbizarre de se dresser sur ses deux pattes arrière, cela signifiera que son évolution en Herbizarre est proche.

Bulbizarre utilise couramment la capacité Vampigraine qui est l''expulsion d''une graine parasitant l''ennemi par l''orifice de son bulbe ; et le Fouet Lianes qui est l''utilisation de tiges comme membres articulés pour frapper l''adversaire. Ces tiges sont d''ailleurs fréquemment utilisées pour manipuler des objets ou se porter lui-même en hauteur. Leur force est incroyable, il peut soulever des masses équivalentes à la sienne, voire plus grosses. ',NULL,NULL);







