/*
COUNT
MIN
MAX
SUM
AVG
*/
--ME TRAZ TODAS AS LINHAS
SELECT COUNT(*) FROM Person.Person
--CONEHCER AS COLUNAS
SELECT TOP 5 * FROM Person.Person
--CONTAGEM DE TODOS OS NOMES DA COLUNA FIRSTNAME, E SE TIVER REPITIDOS ELE CONTA TAMBÉM
SELECT COUNT(*) AS CONTADOR,
        FirstName
  FROM Person.Person
 GROUP BY FirstName
--CONTAGEM DE QUANTOS NOMES DISTINTOS EU TENHO NA COLUNA FIRSTNAME
SELECT COUNT(DISTINCT FirstName)
  FROM Person.Person

SELECT MIN(BusinessEntityID) AS Minimo
  FROM Person.Person

SELECT MAX(BusinessEntityID) AS Maximo
  FROM Person.Person

SELECT SUM(BusinessEntityID) AS SOMA 
  FROM Person.Person

SELECT SSP.BusinessEntityID,
       FirstName,
       MiddleName,
       LastName,
       TerritoryID,
       SalesQuota,
       Bonus,
       CommissionPct,
       SalesYTD,
       SalesLastYear,
       PP.ModifiedDate
 FROM Sales.SalesPerson AS SSP
 JOIN Person.Person AS PP
   ON SSP.BusinessEntityID = PP.BusinessEntityID

SELECT COUNT(*) AS CONTADOR,
       FirstName
  FROM Person.Person
 GROUP BY FirstName
 HAVING COUNT(*) > 20