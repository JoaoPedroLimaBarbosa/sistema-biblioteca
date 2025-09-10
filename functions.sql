-- Função para contar quantos livros um autor possui
CREATE OR REPLACE FUNCTION contar_livros_autor(p_id_autor INT)
RETURNS INT
LANGUAGE plpgsql
AS $$
DECLARE
    qtd INT;
BEGIN
    SELECT COUNT(*) INTO qtd FROM livro WHERE id_autor = p_id_autor;
    RETURN qtd;
END;
$$;

-- Função para verificar se livro está emprestado
CREATE OR REPLACE FUNCTION livro_emprestado(p_id_livro INT)
RETURNS BOOLEAN
LANGUAGE plpgsql
AS $$
DECLARE
    emprestado BOOLEAN;
BEGIN
    SELECT EXISTS(
        SELECT 1 FROM emprestimo 
        WHERE id_livro = p_id_livro AND data_devolucao IS NULL
    ) INTO emprestado;
    RETURN emprestado;
END;
$$;

-- Exemplo de UPDATE
UPDATE usuario SET email = 'nova_ana@email.com' WHERE nome = 'Ana Silva';

-- Exemplo de ALTER
ALTER TABLE usuario ADD COLUMN telefone VARCHAR(15);
