CREATE DATABASE db_ecommerce;
USE db_ecommerce;
CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10, 2),
    estoque INT,
    marca VARCHAR(50)
);
INSERT INTO tb_produtos (nome, categoria, preco, estoque, marca) VALUES
('Livro "A Arte de Escrever Código Limpo"', 'Livros', 79.99, 30, 'CodeCraft'),
('Camiseta Básica', 'Vestuário', 29.99, 100, 'Fashion'),
('Notebook Pro', 'Eletrônicos', 5499.99, 30, 'Dell'),
('Tênis', 'Calçados', 349.99, 80, 'Vans'),
('Fone de Ouvido Bluetooth', 'Eletrônicos', 389.99, 120, 'JBL'),
('Livro "Harry Potter e a Ordem da Fênix"', 'Livros', 79.99, 20, 'Rocco'),
('Cafeteira Elétrica', 'Eletrodomésticos', 79.99, 40, 'HomePlus'),
('Mochila Executiva', 'Acessórios', 570.99, 90, 'Mark Ryden');
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;
UPDATE tb_produtos SET preco = 49.99 WHERE nome = 'Camiseta Básica';
