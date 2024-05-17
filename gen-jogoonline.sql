CREATE DATABASE db_generation_online;

USE db_generation_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_personagem VARCHAR(255) NOT NULL,
    poder_ataque BIGINT NOT NULL,
    poder_defesa BIGINT NOT NULL,
    genero VARCHAR(255),
    id_classe BIGINT,
    FOREIGN KEY(id_classe) REFERENCES tb_classes(id)
);


INSERT INTO tb_classes (nome_classe, descricao)
VALUES('Guerreiro', 'Especialista em combate corpo a corpo'),
('Mago', 'Usa magia para atacar e se defender'),
('Arqueiro', 'Especialista em ataques à distância'),
('Assassino', 'Mestre em ataques furtivos'),
('Cavaleiro', 'Alta defesa e combate corpo a corpo');

INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, genero, id_classe)
VALUES('Arthas', 2500, 1800, 'Masculino', 1),
('Jaina', 3000, 1200, 'Feminino', 2),
('Legolas', 2200, 1500, 'Masculino', 3),
('Altair', 2600, 1100, 'Masculino', 4),
('Uther', 1800, 2000, 'Masculino', 5),
('Sylvanas', 2300, 1600, 'Feminino', 3),
('Illidan', 2700, 1400, 'Masculino', 4),
('Tyrande', 2400, 1300, 'Feminino', 3);


SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%C%';

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id
WHERE id_classe = 3;






