-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

-- Criação da tabela de produtos
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10, 2),
    estoque INT,
    data_cadastro DATE
);

-- Inserção de 8 registros
INSERT INTO produtos (nome, categoria, preco, estoque, data_cadastro) VALUES
('Notebook Dell', 'Informática', 4500.00, 10, '2024-01-15'),
('Mouse Logitech', 'Periféricos', 120.00, 50, '2024-02-10'),
('Teclado Mecânico', 'Periféricos', 350.00, 30, '2024-02-11'),
('Monitor LG', 'Informática', 800.00, 20, '2024-01-25'),
('Smartphone Samsung', 'Eletrônicos', 3000.00, 15, '2024-03-01'),
('Cadeira Gamer', 'Móveis', 1500.00, 5, '2024-03-05'),
('Fone JBL', 'Áudio', 400.00, 25, '2024-02-20'),
('Webcam HD', 'Periféricos', 250.00, 40, '2024-02-22');

-- SELECT produtos com valor maior que 500
SELECT * FROM produtos WHERE preco > 500;

-- SELECT produtos com valor menor que 500
SELECT * FROM produtos WHERE preco < 500;

-- Atualização de um registro
UPDATE produtos SET preco = 380.00 WHERE nome = 'Teclado Mecânico';
