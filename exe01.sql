USE db_rh;
SHOW TABLES;
CREATE TABLE tb_colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(10, 2),
    data_admissao DATE,
    departamento VARCHAR(50)
);
INSERT INTO colaboradores (nome, cargo, salario, data_admissao, departamento) VALUES
('Ana Silva', 'Engenheira de Software', 5500.00, '2022-01-15', 'TI'),
('Marina Oliveira', 'Desenvolvedora', 3000.00, '2021-05-20', 'TI'),
('Carlos Santo', 'Assistente Administrativo', 1800.00, '2023-03-10', 'RH'),
('Julia Lima', 'Gerente de Projetos', 4500.00, '2020-11-01', 'TI'),
('Pedro Souza', 'Estagiário', 1200.00, '2023-07-01', 'RH');
SELECT * FROM colaboradores WHERE salario > 2000;
SELECT * FROM colaboradores WHERE salario < 2000;
UPDATE colaboradores SET salario = 3750.00 WHERE nome = 'Marina Oliveira';




