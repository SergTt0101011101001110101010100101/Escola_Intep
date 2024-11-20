CREATE DATABASE Escola;

USE Escola;

CREATE TABLE intep (
Id_Aluno INT PRIMARY KEY,
Nome VARCHAR (30),
Idade INT,
Data_Nascimento DATE
);

INSERT INTO intep (Id_Aluno, Nome, Idade, Data_Nascimento) VALUES
(1,'Gabriel gatricos',12,'2011-12-19'),
(2,'João Pinto',16,'2008-04-01'),
(3,'Nardo Matos',44,'1980-04-07');

SET SQL_SAFE_UPDATES = 0;

UPDATE intep
SET Idade = 12, Data_Nascimento = '2011-12-19'
WHERE Nome = 'Gabriel gatricos';

DELETE FROM intep
WHERE idade > 35;

CREATE TABLE SUM (
PedidosId INT,
Empresa VARCHAR (20),
Quantidade INT
);

INSERT INTO SUM (PedidosId, Empresa, Quantidade) VALUES
(1,'A',20),
(2,'B',50),
(3,'B',50);

INSERT INTO SUM (PedidosId, Empresa, Quantidade) VALUES
(4,'B',NULL),
(5,'C',NULL);

INSERT INTO SUM (PedidosId, Empresa, Quantidade) VALUES
(6,'C',60),
(7,'A',80);

SELECT * FROM SUM;

SELECT SUM(Quantidade) AS Sum_Total FROM SUM;

SELECT intep, SUM(Quantidade) AS Sum_total
FROM SUM          --------------------
GROUP BY intep;

SELECT 
FROM 
WHERE Idade < 18;

SELECT count(*) AS Total_intep
FROM intep
WHERE idade > 20;

SELECT AVG(Quantidade) AS Media_QUantidade
FROM SUM;

SELECT intep, AVG(Quantidade) AS Media_intep
FROM SUM
GROUP BY intep;

SELECT MIN(Data_Nascimento) FROM intep;
SELECT MAX(Data_Nascimento) FROM intep;