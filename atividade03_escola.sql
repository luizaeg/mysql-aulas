-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS escola;
USE escola;

-- Criação da tabela de estudantes
CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    turma VARCHAR(10),
    nota_final DECIMAL(4,2),
    data_matricula DATE
);

-- Inserção de 8 registros
INSERT INTO estudantes (nome, idade, turma, nota_final, data_matricula) VALUES
('Lucas Silva', 17, '3A', 8.5, '2024-01-10'),
('Juliana Souza', 16, '2B', 6.8, '2024-02-05'),
('Marcos Paulo', 15, '1C', 7.2, '2024-03-01'),
('Beatriz Lima', 16, '2A', 9.0, '2024-01-22'),
('Carlos Mendes', 17, '3B', 5.5, '2024-02-15'),
('Ana Clara', 14, '1A', 6.0, '2024-03-03'),
('Fernanda Rocha', 15, '1B', 7.8, '2024-01-18'),
('Rafael Torres', 17, '3C', 8.0, '2024-03-10');

-- SELECT nota maior que 7.0
SELECT * FROM estudantes WHERE nota_final > 7.0;

-- SELECT nota menor que 7.0
SELECT * FROM estudantes WHERE nota_final < 7.0;

-- Atualização de um registro
UPDATE estudantes SET nota_final = 7.5 WHERE nome = 'Juliana Souza';
