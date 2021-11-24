/*
Left Join, retorna toda a tabela da esquerda mais a interseção com a direita
*/

SELECT TOP 1 *
FROM HumanResources.Employee

SELECT COUNT(BusinessEntityID)
FROM HumanResources.Employee

/*
ESSE BLOCO ABAIXO PRIMEIRO RETORNA A INTERSEÇÃO E DEPOIS RETORNA A TABELA DA ESQUERDA, ISSO ACONTECE A PARTIR DA LINHA 290
*/
SELECT PP.BusinessEntityID AS [PP.BusinessEntityID],
       HRE.BusinessEntityID AS [HRE.BusinessEntityID],
       Title,
       FirstName,
       MiddleName,
       LastName,
       LoginID,
       JobTitle
 FROM Person.Person AS PP --19.972
 LEFT JOIN HumanResources.Employee AS HRE --290
 ON PP.BusinessEntityID = HRE.BusinessEntityID --essa linha é responsável pelo elo entre as duas tabelas
 ORDER BY PP.BusinessEntityID