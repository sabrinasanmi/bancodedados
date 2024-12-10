CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;
CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    habilidade_especial VARCHAR(100)
);
CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    nivel INT,
    poder_ataque INT,
    poder_defesa INT,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);
INSERT INTO tb_classes (nome, habilidade_especial) VALUES
('Aventureira', 'Agilidade extrema'),
('Feiticeira', 'Magia arcana'),
('Arqueira', 'Precisão letal'),
('Espiã', 'Infiltração'),
('Elementalista', 'Controle dos elementos');
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES
('Lara Croft', 45, 2300, 1900, 1),
('Hermione', 55, 2800, 1600, 2),
('Katniss Everdeen', 40, 2100, 1700, 3),
('Black Widow', 48, 2400, 2000, 4),
('Yennefer', 58, 2900, 1400, 5),
('Mulan', 42, 2200, 1800, 1),
('Elsa', 50, 2600, 2100, 5),
('Wonder Woman', 60, 3000, 2500, 1);
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';
SELECT p.*, c.nome AS classe, c.habilidade_especial
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id;
SELECT p.*, c.nome AS classe, c.habilidade_especial
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.nome = 'Aventureira';





