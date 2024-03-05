CREATE DATABASE db_ecommerce;

USE db_ecommerce;

-- Criação de tabela produtos

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao VARCHAR(250),
    preco DECIMAL(10, 2),
    categoria VARCHAR(50),
	disponivel BOOLEAN
);

-- Inserção de dados na tabela de produtos
INSERT INTO tb_produtos (nome, descricao, preco, categoria, disponivel) 
VALUES 
('Smartphone', 'Iphone 15', 12000.00, 'Eletrônicos', true),
('Notebook', 'Notebook Gamer com processador i9 e 16GB RAM e RTX 2060', 1800.00, 'Informática', true),
('Televisor', 'Televisor 4K de 60 polegadas', 800.00, 'Eletrônicos', true),
('Fone de Ouvido', 'AirPods sem fio com cancelamento de ruído', 300.00, 'Acessórios', true),
('Câmera DSLR', 'Câmera profissional com lente Profissional', 1800.00, 'Fotografia', false),
('Tablet', 'Tablet com 128GB de armazenamento', 600.00, 'Eletrônicos', true),
('Geladeira', 'Geladeira frost-free com capacidade de 500 litros', 2200.00, 'Eletrodomésticos', true),
('Bicicleta', 'Bicicleta aro 29', 700.00, 'Esportes', true);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 9000.00, disponivel = false WHERE id = 1;

