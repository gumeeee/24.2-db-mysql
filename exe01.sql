CREATE DATABASE db_rh;

USE db_rh;

-- Criação da tabela de colaboradores
CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cargo VARCHAR(50),
    salario DECIMAL(10, 2),
    departamento VARCHAR(50),
    data_admissao date
);

-- Inserção de dados na tabela de colaboradores
INSERT INTO tb_colaboradores (nome, cargo, salario, departamento, data_admissao) 
VALUES 
('Guilherme Moura', 'Desenvolvedor Fullstack', 4500.00, 'TI', "2021-01-15"),
('Raquel', 'Assistente Administrativo', 1800.00, 'Administração', "2022-07-18"),
('Luiz Almeida', 'Desenvolvedor Front End', 3000.00, 'TI', "2020-07-10"),
('Ana da Silva', 'Gerente de Vendas', 3500.00, 'Vendas', "2020-03-12"),
('Carlos Costa', 'Analista Financeiro', 2200.00, 'Financeiro', "2021-11-28");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 2500.00, cargo = 'Analista de RH Pleno' WHERE id = 2;

