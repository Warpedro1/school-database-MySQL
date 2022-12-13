SELECT * FROM Secretario WHERE (Secretario.area_atuacao  = 'MARKETING');

SELECT * FROM Alunos INNER JOIN Ajuda ON CPF_cliente = fk_Alunos_CPF_cliente1;

SELECT * FROM Alunos LEFT OUTER JOIN Ajuda 
ON fk_Alunos_CPF_cliente1 = CPF_cliente;

SELECT * FROM Sala_de_aula sda  RIGHT OUTER JOIN precisa
ON  fk_Sala_de_aula_id_sala = id_sala;

SELECT nome_livro, nome
FROM Livros INNER JOIN Possue INNER JOIN Turma_Professores_Disciplina
ON id_livro = fk_Livros_id_livro AND CPF_empregado = fk_Turma_Professores_Disciplina_CPF_empregado
GROUP BY nome_livro ;

SELECT nome_livro, nome
FROM Livros INNER JOIN Possue INNER JOIN Turma_Professores_Disciplina
ON id_livro = fk_Livros_id_livro AND CPF_empregado = fk_Turma_Professores_Disciplina_CPF_empregado
GROUP BY nome
HAVING COUNT(nome_livro=1);

SELECT nome, nota_aluno, assunto_avaliacao
FROM Alunos INNER JOIN avalia INNER JOIN Avaliacao
ON CPF_cliente = fk_Alunos_CPF_cliente AND fk_Avaliacao_id_avaliacao = id_avaliacao 
ORDER BY nota_aluno;

SELECT CPF_empregado, nome 
FROM Turma_Professores_Disciplina INNER JOIN Precisa 
ON fk_Turma_Professores_Disciplina_CPF_empregado = CPF_empregado 
WHERE ROUND(salario,0)>500; 

SELECT nome_livro, nome
FROM Livros INNER JOIN Possue INNER JOIN Turma_Professores_Disciplina
ON id_livro = fk_Livros_id_livro AND CPF_empregado = fk_Turma_Professores_Disciplina_CPF_empregado
WHERE LENGTH(nome_livro)>10
GROUP BY nome_livro;

SELECT nome, nome_disiciplina 
FROM Turma_Professores_Disciplina tpd INNER JOIN Coordena c 
ON CPF_empregado = fk_Turma_Professores_Disciplina_CPF_empregado
UNION
SELECT nome, cargo 
FROM Coordenadores c2 INNER JOIN Coordena c 
ON CPF_empregado = fk_Coordenadores_CPF_empregado;






