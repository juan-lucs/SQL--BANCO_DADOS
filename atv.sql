SELECT ra, nome, idade, cidade, uf FROM Aluno ORDER BY nome
SELECT TOP (5) ra, nome, idade FROM Aluno WHERE idade IS NOT NULL ORDER BY idade DESC;
SELECT * FROM Aluno WHERE uf = 'SC' AND idade >= 20 AND idade <= 24 ORDER BY idade;
SELECT ra_aluno, id_turma, nota FROM Matricula WHERE nota IS NULL;
SELECT TOP (5) ra_aluno, nota FROM Matricula WHERE nota IS NOT NULL ORDER BY nota DESC;
SELECT * FROM dbo.Pagamento WHERE situacao = 'PENDENTE' ORDER BY data_vencimento;
