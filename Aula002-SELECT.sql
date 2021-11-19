/*
order by (ordenação) ascedente(automático) ou descedente
AS alias (apelido)
DISTINCT (remove os duplicados)
order by reconhece o apelido
where não reconhece apelido
*/
SELECT TOP 1000
       BusinessEntityID AS [ID PESSOA],
       PersonType       AS [TIPO PESSOA],
       Title            AS [TITULO],
       FirstName        AS [PRIMEIRO NOME],
       MiddleName,
       LastName
  FROM Person.Person
 WHERE Title = 'Mr.'
 ORDER BY [PRIMEIRO NOME] DESC, --ordenação descedente
          LastName ASC  --ordenação ascedente

SELECT 
        DISTINCT
        TOP 1000
       --BusinessEntityID AS [ID PESSOA],
       --PersonType       AS [TIPO PESSOA],
       --Title            AS [TITULO],
       FirstName,  --      AS [PRIMEIRO NOME],
       MiddleName,
       LastName
  FROM Person.Person
 WHERE Title = 'Mr.'
   AND MiddleName = 'M.'
 ORDER BY FirstName, MiddleName