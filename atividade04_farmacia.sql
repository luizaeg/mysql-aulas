-- Criação do banco de dados
CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

-- Criação da tabela de categorias
CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT
);

-- Criação da tabela de produtos
CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

-- Inserção de 5 categorias
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Medicamentos', 'Remédios e tratamentos diversos'),
('Higiene', 'Produtos de higiene pessoal'),
('Cosméticos', 'Produtos de beleza e cuidados com a pele'),
('Infantil', 'Produtos para bebês e crianças'),
('Vitaminas', 'Suplementos e vitaminas');

-- Inserção de 8 produtos
INSERT INTO tb_produtos (nome, descricao, preco, estoque, id_categoria) VALUES
('Paracetamol 500mg', 'Analgésico e antitérmico', 12.00, 100, 1),
('Sabonete Líquido', 'Sabonete líquido hidratante', 18.50, 50, 2),
('Protetor Solar FPS 50', 'Proteção contra raios UV', 65.00, 30, 3),
('Shampoo Infantil', 'Shampoo suave para crianças', 22.00, 40, 4),
('Vitamina C 1g', 'Reforço imunológico', 35.00, 80, 5),
('Pomada para Assaduras', 'Uso infantil', 15.00, 60, 4),
('Base Líquida', 'Maquiagem para pele', 58.00, 25, 3),
('Dipirona 1g', 'Analgésico de ação rápida', 9.00, 120, 1);

-- SELECT produtos com valor maior que R$ 50,00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- SELECT produtos com valor entre R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- SELECT produtos que contenham a letra "C" no nome
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

-- SELECT com INNER JOIN (produtos + categorias)
SELECT 
    p.id_produto,
    p.nome AS nome_produto,
    p.preco,
    c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c
ON p.id_categoria = c.id_categoria;

-- SELECT com INNER JOIN apenas para produtos da categoria "Cosméticos"
SELECT 
    p.id_produto,
    p.nome AS nome_produto,
    p.preco,
    c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c
ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Cosméticos';
