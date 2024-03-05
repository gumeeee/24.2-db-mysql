CREATE DATABASE db_registros_academico;

USE db_registros_academico;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    turma VARCHAR(10),
    nota DECIMAL(4, 2),
    endereco VARCHAR(200)
);

INSERT INTO tb_estudantes (nome, idade, turma, nota, endereco) 
VALUES 
('Maria Silva', 17, '9A', 8.5, 'Av. dos Estudantes, 123'),
('João Oliveira', 16, '9B', 6.8, 'Av. Principal, 456'),
('Pedro Santos', 18, '9A', 7.2, 'Rua dos Estudantes, 789'),
('Ana Souza', 17, '9C', 9.0, 'Rua dos Estudantes, 321'),
('Carla Mendes', 16, '9B', 5.5, 'Av. Central, 567'),
('Marcos Ferreira', 17, '9A', 8.8, 'Rua da Escola, 101'),
('Juliana Lima', 16, '9C', 6.3, 'Rua dos Alunos, 654'),
('Fernando Costa', 18, '9B', 7.5, 'Av. dos Estudantes, 987');

-- SELECT que retorna todos os estudantes com nota maior do que 7.0
SELECT * FROM tb_estudantes WHERE nota > 7.0;

-- SELECT que retorna todos os estudantes com nota menor do que 7.0
SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 8.0 WHERE id = 2;
