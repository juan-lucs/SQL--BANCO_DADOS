SELECT ra, nome, idade, cidade, uf FROM Aluno ORDER BY nome
SELECT TOP (5) ra, nome, idade FROM Aluno WHERE idade IS NOT NULL ORDER BY idade DESC;
SELECT * FROM Aluno WHERE uf = 'SC' AND idade >= 20 AND idade <= 24 ORDER BY idade;
SELECT ra_aluno, id_turma, nota FROM Matricula WHERE nota IS NULL;
SELECT TOP (5) ra_aluno, nota FROM Matricula WHERE nota IS NOT NULL ORDER BY nota DESC;
SELECT * FROM dbo.Pagamento WHERE situacao = 'PENDENTE' ORDER BY data_vencimento;
SELECT * FROM Turma WHERE turno = 'NOITE' ORDER BY carga_horaria DESC

SELECT ra, nome, UPPER(nome) FROM Aluno;
SELECT ra, nome, LOWER(email) FROM Aluno;
SELECT nome, UPPER(cidade), LOWER(uf) FROM Aluno;
SELECT TOP (5) nome, LEN(nome) FROM Aluno ORDER BY LEN(nome);
SELECT LEFT(nome, 3), nome FROM Aluno;
SELECT email, LEFT(email, 6) FROM Aluno;
SELECT LEFT(nome, 1) AS LETRA_INICIAL, COUNT(*) AS total_Alunos  FROM Aluno GROUP BY LEFT(nome, 1) ORDER BY total_Alunos DESC;

SELECT TOP (10) ra, nome, data_nascimento, YEAR(data_nascimento) AS ano, MONTH(data_nascimento) AS mês, DAY(data_nascimento) AS dia FROM Aluno;
SELECT YEAR(data_cadastro) AS Ano_cadastro, COUNT(*) AS cadastrados_neste_ano FROM Aluno GROUP BY YEAR(data_cadastro) ORDER BY YEAR(data_cadastro) DESC;
SELECT MONTH(data_cadastro) AS Mes_cadastro_geral, COUNT(*) AS cadastrados_neste_mes FROM Aluno GROUP BY MONTH(data_cadastro) ORDER By MONTH(data_cadastro)
SELECT nome, data_nascimento FROM Aluno WHERE MONTH(data_nascimento) = 3;
SELECT nome, data_nascimento FROM Aluno WHERE MONTH(data_nascimento) = 3;
SELECT TOP (5) * FROM Aluno ORDER BY YEAR(data_nascimento);
SELECT YEAR(data_nascimento) AS ano_nascimento,COUNT(*) AS nascidos FROM Aluno GROUP BY YEAR(data_nascimento);
SELECT YEAR(data_nascimento) AS ANO_NASCIMENTO, COUNT(*) AS nascidos FROM Aluno GROUP BY YEAR(data_nascimento) HAVING COUNT(*) >= 2;
