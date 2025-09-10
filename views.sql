-- View de livros disponíveis (não emprestados)
CREATE OR REPLACE VIEW livros_disponiveis AS
SELECT l.id, l.titulo, a.nome AS autor
FROM livro l
JOIN autor a ON l.id_autor = a.id
WHERE l.id NOT IN (
    SELECT id_livro FROM emprestimo WHERE data_devolucao IS NULL
);

-- View de histórico de empréstimos
CREATE OR REPLACE VIEW historico_emprestimos AS
SELECT e.id, l.titulo, u.nome AS usuario, e.data_emprestimo, e.data_devolucao
FROM emprestimo e
JOIN livro l ON e.id_livro = l.id
JOIN usuario u ON e.id_usuario = u.id;
