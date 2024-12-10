CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;
CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(100)
);
CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    ingredientes VARCHAR(200),
    tamanho ENUM('Pequena', 'Média', 'Grande'),
    preco DECIMAL(6, 2),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
INSERT INTO tb_categorias (nome, descricao) VALUES
('Salgada', 'Pizzas com ingredientes salgados'),
('Doce', 'Pizzas com ingredientes doces'),
('Veganas', 'Pizzas com massa especial, sem ingredientes de origem animal'),
('Especial', 'Pizzas com ingredientes premium'),
('Esfihas', 'Massa aberta recheada com diversos ingredientes');
INSERT INTO tb_pizzas (nome, ingredientes, tamanho, preco, categoria_id) VALUES
('Margherita', 'Molho, mussarela, tomate e manjericão', 'Média', 48.90, 1),
('Pepperoni', 'Molho, mussarela e pepperoni', 'Grande', 59.90, 1),
('Quatro Queijos', 'Molho, mussarela, parmesão, gorgonzola e catupiry', 'Média', 48.90, 1),
('Chocolate com Morango', 'Chocolate, morango e leite condensado', 'Média', 49.90, 2),
('Mediterrânea', 'Molho, queijo vegano, azeitonas pretas, pimentão, cebola roxa e tomate seco', 'Grande', 68.90, 3),
('Rustica', 'Molho, cogumelos frescos, alho assado, azeite de oliva, manjericão fresco e tomate cereja', 'Grande', 68.90, 3),
('Trufada', 'Molho, mussarela de búfala, presunto cru e azeite trufado', 'Grande', 79.90, 4),
('Banana com Canela', 'Banana, canela e leite condensado', 'Média', 37.90, 2),
('Queijo', 'Queijo minas fresco e uma pitada de salsa picada.', 'Pequena', 4.0, 5);
SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';
SELECT p.*, c.nome AS categoria, c.descricao
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;
SELECT p.*, c.nome AS categoria, c.descricao
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Doce';



