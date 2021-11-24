/*
Right Join, retorna toda a tabela da direita mais a interseção com a esquerda
*/

SELECT *
FROM Sales.SalesPerson

SELECT COUNT(BusinessEntityID)
FROM HumanResources.Employee

SELECT SSP.BusinessEntityID AS [SSP.BusinessEntityID],
        PP.BusinessEntityID AS [PP.BusinessEntityID],
        TerritoryID,
        SalesQuota,
        Bonus,
        SalesLastYear,
        FirstName,
        MiddleName,
        LastName
FROM Sales.SalesPerson AS SSP --17 TABELA DA DIREITA
RIGHT JOIN Person.Person AS PP --TABELA DA ESQUERDA
ON SSP.BusinessEntityID = PP.BusinessEntityID