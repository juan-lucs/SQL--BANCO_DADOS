
-- Deixa o banco pronto para explorar. Para comparar com o PDF, use a questao desejada.

EXEC dbo.PrepararQuestao 6;
 -- questao 1
 SELECT nome, idade FROM dbo.Aluno WHERE idade > 20 AND cidade = 'Joinville' ORDER BY nome

 --questao 2
 SELECT TOP 3 ra, nome, data_cadastro FROM Aluno WHERE cidade = 'Joinville' AND data_cadastro BETWEEN '2026-08-01' AND '2026-08-15' ORDER BY data_cadastro DESC, nome

 --questao3
SELECT ra, UPPER(nome) as maiusculo, LOWER(email) AS minusculo, LEFT(nome,3) as prefixo, LEN(nome) as tamanho FROM Aluno 

--questao4
SELECT nome, DAY(data_nascimento) as dia, MONTH(data_nascimento) as mes, YEAR(data_nascimento) as ano FROM Aluno WHERE MONTH(data_nascimento) = 9 ORDER BY DAY(data_nascimento), nome

--questao5
SELECT COUNT(id_matricula) as total_matricula, COUNT(nota) as notas_lancadas, COUNT(*) - COUNT(nota) AS notas_pendete, MIN(nota) as menor, max(nota) as maior, ROUND(avg(nota),2) as media FROM Matricula

--questao6
SELECT id_turma, COUNT(id_matricula) as total FROM Matricula GROUP BY id_turma HAVING  COUNT(id_matricula) >= 4 ORDER BY total desc 