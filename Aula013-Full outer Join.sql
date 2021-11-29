/*
O Full Outer Join é a união de duas tabelas
*/

SELECT SSP.BusinessEntityID AS [SSP.BusinessEntityID],
       PP.BusinessEntityID AS [PP.BusinessEntityID],
       FirstName,
       MiddleName,
       LastName,
       TerritoryID,
       Bonus,
       SalesLastYear
FROM Sales.SalesPerson AS SSP
FULL OUTER JOIN Person.Person AS PP
ON SSP.BusinessEntityID = PP.BusinessEntityID