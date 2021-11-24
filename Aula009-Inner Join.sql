/*
INNER JOIN OU SIMPLESMENTE JOIN É UMA INTERSEÇÃO DE DOIS CONJUNTOS (OU DUAS TABELAS) OU JUNÇÃO  
*/
SELECT COUNT(BusinessEntityID)
  FROM Person.Person

SELECT COUNT(DISTINCT BusinessEntityID)
  FROM Person.Person

SELECT TOP 1 *
FROM Person.Person

SELECT TOP 5 * FROM Person.Person
SELECT TOP 5 * FROM Person.EmailAddress

--fiz a interseção de três tabelas através da coluna BusinessEntityID
SELECT PP.BusinessEntityID,
       Title,
       FirstName,
       MiddleName,
       LastName,
       EmailAddress,
       PhoneNumber
 FROM Person.Person AS PP --APELIDO DA TABELA PERSON.PERSON
INNER JOIN Person.EmailAddress AS PEA
   ON PP.BusinessEntityID = PEA.BusinessEntityID
      JOIN Person.PersonPhone AS PPP
   ON PEA.BusinessEntityID = PPP.BusinessEntityID
