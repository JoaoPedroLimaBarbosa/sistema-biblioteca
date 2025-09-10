# Sistema de Biblioteca

Este repositório contém o trabalho de Banco de Dados desenvolvido na disciplina, incluindo procedures, views e functions.

## 1. Sobre Procedures, Views e Functions

- **Procedures**: blocos de código SQL que executam ações no banco de dados, como inserir, atualizar ou deletar registros, podendo receber parâmetros.  
- **Views**: consultas pré-definidas que retornam dados do banco de forma organizada, como se fossem tabelas virtuais.  
- **Functions**: funções que retornam valores ou executam operações, podendo ser usadas em consultas SQL ou para processamento interno.

## 2. Implementação no trabalho

- **Procedures**:  
  - Registram empréstimos de livros.  
  - Atualizam informações de livros e usuários.  
- **Views**:  
  - Consultas prontas para listar livros disponíveis.  
  - Consultas de empréstimos ativos por usuário.  
- **Functions**:  
  - Calculam o total de empréstimos de um usuário.  
  - Retornam informações específicas, como livros atrasados.

## 3. Instruções de execução

Para rodar o projeto no **PostgreSQL (pgAdmin)**:

1. Abra o pgAdmin e crie um banco de dados chamado `biblioteca`.  
2. Execute os scripts na seguinte ordem:
   1. `schema.sql` – cria tabelas e insere dados.  
   2. `procedures.sql` – adiciona procedures.  
   3. `views.sql` – adiciona views.  
   4. `functions.sql` – adiciona funções e updates.  
3. Confira se todas as tabelas, procedures, views e functions foram criadas corretamente.  

## 4. Diagrama de Entidade e Relacionamento (DER)

![DER do Sistema de Biblioteca](der.png)

---

## 5. Link do repositório
(https://github.com/JoaoPedroLimaBarbosa/sistema-biblioteca)
