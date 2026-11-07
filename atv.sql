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


SELECT COUNT(ra_aluno) AS alunos_cadastrados FROM Matricula
SELECT COUNT(*) AS alunos_cadastrados, COUNT(nota) AS nota_lancada, COUNT(*) - COuNT(nota) AS  nota_faltante FROM  MATRICULA
SELECT MIN(nota), MAX(nota), ROUND(AVG(nota),2) FROM Matricula;
SELECT ROUND(AVG(CAST(nota AS FLOAT)), 2) FROM Matricula;
SELECT SUM(nota) FROM Matricula WHERE id_turma = 10;
SELECT SUM(nota) FROM Matricula WHERE id_turma = 10;
SELECT situacao, COUNT(*) AS quantidade_pagamentos FROM Pagamento GROUP BY situacao;
SELECT situacao, COUNT(*) AS total FROM Pagamento WHERE situacao = 'PAGO' GROUP BY situacao;
SELECT situacao, MIN(valor), max(valor)  FROM Pagamento GROUP BY situacao;
SELECT id_turma , COUNT(ra_aluno ) AS qantidade_naturma FROM Matricula GROUP BY id_turma;
SELECT ROUND(AVG(nota),2), id_turma FROM Matricula GROUP BY id_turma;
SELECT id_turma, ROUND(AVG(nota),2), COUNT(*) AS notas_lançadas FROM Matricula GROUP BY id_turma HAVING ROUND(AVG(nota),2) >= 7;
SELECT top (3) id_turma , COUNT(ra_aluno ) FROM  Matricula GROUP BY id_turma;

INSERT INTO Aluno (ra, nome, idade, email) VALUES (2999, 'Aluno Laboratorio', 22, 'laboratorio2999@exemplo.edu.br');

SELECT * FROM Aluno WHERE ra = 2999;

UPDATE Aluno SET nome = UPPER(nome) WHERE ra = 2999;

UPDATE Aluno SET idade = 23, cidade = 'Joinville', uf = 'SC' WHERE ra = 2999;

INSERT INTO Matricula (ra_aluno, id_turma, nota) VALUES (2999, 80, NULL);

UPDATE Matricula SET nota = 8.75 WHERE ra_aluno = 2999 AND id_turma = 80;

SELECT * FROM Matricula WHERE ra_aluno = 2999 AND id_turma = 80;

DELETE FROM Aluno WHERE ra = 2999;

SELECT * FROM Aluno WHERE ra = 2999;