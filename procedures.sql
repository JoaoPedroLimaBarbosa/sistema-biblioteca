-- Procedure para registrar empréstimo
CREATE OR REPLACE PROCEDURE registrar_emprestimo(
    p_id_livro INT,
    p_id_usuario INT,
    p_data DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO emprestimo (id_livro, id_usuario, data_emprestimo, data_devolucao)
    VALUES (p_id_livro, p_id_usuario, p_data, NULL);
END;
$$;

-- Procedure para registrar devolução
CREATE OR REPLACE PROCEDURE registrar_devolucao(
    p_id_emprestimo INT,
    p_data DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE emprestimo
    SET data_devolucao = p_data
    WHERE id = p_id_emprestimo;
END;
$$;
