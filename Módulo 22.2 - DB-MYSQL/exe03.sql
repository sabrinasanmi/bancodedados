CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;
CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    setor VARCHAR(50)
);
CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao VARCHAR(200),
    preco DECIMAL(6, 2),
    estoque INT,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
INSERT INTO tb_categorias (nome, setor) VALUES
('Medicamentos', 'Farmácia'),
('Cosméticos', 'Beleza'),
('Higiene', 'Cuidados Pessoais'),
('Vitaminas', 'Suplementos'),
('Primeiros Socorros', 'Emergência');
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria_id) VALUES
('Paracetamol', 'Analgésico e antitérmico', 15.90, 100, 1),
('Protetor Solar', 'FPS 50 com cor', 59.90, 50, 2),
('Escova de Dentes', 'Cerdas macias', 8.50, 200, 3),
('Vitamina C', '1000mg, 60 comprimidos', 45.90, 80, 4),
('Gaze Estéril', '7,5cm x 7,5cm para curativos.', 5.99, 60, 5),
('Shampoo', 'Para cabelos normais', 22.90, 75, 3),
('Omeprazol', 'Antiácido, 30 cápsulas', 29.90, 60, 1),
('Multivitamínico', '60 cápsulas', 89.90, 40, 4);
SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';
SELECT p.*, c.nome AS categoria, c.setor
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;
SELECT p.*, c.nome AS categoria, c.setor
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Cosméticos';

