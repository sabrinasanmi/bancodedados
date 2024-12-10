CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    serie VARCHAR(20),
    nota DECIMAL(3, 1),
    turma VARCHAR(10)
);
INSERT INTO tb_estudantes (nome, idade, serie, nota, turma) VALUES
('João Silva', 14, '9º ano', 8.5, '9A'),
('Marina Santos', 13, '8º ano', 9.8, '8B'),
('Pedro Oliveira', 15, '1º ano EM', 6.5, '1A'),
('Ana Lima', 13, '7º ano', 9.0, '7C'),
('Lucas Ferreira', 14, '9º ano', 7.2, '9B'),
('Carla Rodrigues', 13, '8º ano', 8.7, '8A'),
('Gabriel Costa', 15, '1º ano EM', 6.8, '1B'),
('Beatriz Almeida', 12, '7º ano', 9.5, '7A');
SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;
UPDATE tb_estudantes SET nota = 7.0 WHERE nome = 'Gabriel Costa';


