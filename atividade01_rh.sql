-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS empresa_rh;
USE empresa_rh;

-- Criação da tabela de colaboradores
CREATE TABLE colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    departamento VARCHAR(50),
    salario DECIMAL(10, 2),
    data_admissao DATE
);

-- Inserção de 5 registros
INSERT INTO colaboradores (nome, cargo, departamento, salario, data_admissao) VALUES
('Ana Silva', 'Analista', 'Financeiro', 3500.00, '2022-03-10'),
('Carlos Souza', 'Assistente', 'RH', 1800.00, '2021-07-22'),
('Mariana Costa', 'Coordenador', 'TI', 4800.00, '2020-01-15'),
('João Oliveira', 'Estagiário', 'Marketing', 1200.00, '2023-08-01'),
('Fernanda Lima', 'Analista', 'RH', 2200.00, '2022-11-12');

-- SELECT salário maior que 2000
SELECT * FROM colaboradores WHERE salario > 2000;

-- SELECT salário menor que 2000
SELECT * FROM colaboradores WHERE salario < 2000;

-- Atualização de um registro
UPDATE colaboradores SET salario = 1900.00 WHERE nome = 'Carlos Souza';
