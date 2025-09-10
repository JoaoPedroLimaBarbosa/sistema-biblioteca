-- Criando tabela de autores
CREATE TABLE autor (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Criando tabela de livros
CREATE TABLE livro (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    id_autor INT NOT NULL REFERENCES autor(id),
    ano_publicacao INT
);

-- Criando tabela de usuários
CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Criando tabela de empréstimos
CREATE TABLE emprestimo (
    id SERIAL PRIMARY KEY,
    id_livro INT NOT NULL REFERENCES livro(id),
    id_usuario INT NOT NULL REFERENCES usuario(id),
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE
);

-- Inserindo autores
INSERT INTO autor (nome) VALUES 
('Machado de Assis'),
('José de Alencar'),
('Clarice Lispector');

-- Inserindo livros
INSERT INTO livro (titulo, id_autor, ano_publicacao) VALUES
('Dom Casmurro', 1, 1899),
('Iracema', 2, 1865),
('A Hora da Estrela', 3, 1977);

-- Inserindo usuários
INSERT INTO usuario (nome, email) VALUES
('Ana Silva', 'ana@email.com'),
('Bruno Costa', 'bruno@email.com');

-- Inserindo empréstimos
INSERT INTO emprestimo (id_livro, id_usuario, data_emprestimo, data_devolucao) VALUES
(1, 1, '2025-09-01', '2025-09-10'),
(2, 2, '2025-09-05', NULL);
