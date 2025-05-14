-- Criação do banco de dados
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- Criação da tabela de categorias
CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT
);

-- Criação da tabela de pizzas
CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    tamanho VARCHAR(20),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

-- Inserção de 5 categorias
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Tradicional', 'Sabores clássicos e mais pedidos da casa'),
('Doce', 'Pizzas com coberturas doces'),
('Vegetariana', 'Sem ingredientes de origem animal'),
('Premium', 'Sabores especiais e ingredientes selecionados'),
('Promoção', 'Sabores em oferta especial');

-- Inserção de 8 pizzas
INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, id_categoria) VALUES
('Calabresa', 'Calabresa fatiada com cebola e azeitonas', 45.00, 'Grande', 1),
('Quatro Queijos', 'Mussarela, parmesão, provolone e gorgonzola', 55.00, 'Grande', 4),
('Chocolate com Morango', 'Cobertura de chocolate e morangos frescos', 60.00, 'Média', 2),
('Frango com Catupiry', 'Frango desfiado com catupiry', 48.00, 'Grande', 1),
('Margherita', 'Molho, mussarela, tomate e manjericão', 40.00, 'Média', 3),
('Romeu e Julieta', 'Queijo com goiabada derretida', 42.00, 'Média', 2),
('Portuguesa', 'Presunto, ovos, ervilha, cebola e azeitona', 50.00, 'Grande', 1),
('Muçarela', 'Clássica pizza de queijo muçarela', 38.00, 'Pequena', 5);

-- SELECT pizzas com valor maior que R$ 45,00
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- SELECT pizzas com valor entre R$ 50,00 e R$ 100,00
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- SELECT pizzas com nome contendo a letra "M"
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

-- SELECT com INNER JOIN (pizzas + categorias)
SELECT 
    p.id_pizza,
    p.nome AS nome_pizza,
    p.preco,
    c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.id_categoria = c.id_categoria;

-- SELECT com INNER JOIN apenas para pizzas doces
SELECT 
    p.id_pizza,
    p.nome AS nome_pizza,
    p.preco,
    c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Doce';
