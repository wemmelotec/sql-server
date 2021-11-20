/*
Where sempre tem que vir antes do order by, nunca pode vir após.
Offset ignora as linhas indicadas
*/
SELECT 
       --DISTINCT
       --TOP 1000
       BusinessEntityID, --AS [ID PESSOA],
       PersonType,       --AS [TIPO PESSOA],
       Title,            --AS [TITULO],
       FirstName,        --AS [PRIMEIRO NOME],
       MiddleName,
       LastName,
       ModifiedDate
  FROM Person.Person
-- WHERE MiddleName = 'N'
--   AND MiddleName = 'M.'
 ORDER BY BusinessEntityID
 OFFSET 50 ROWS --ignora as 50 primeiras linhas
 FETCH NEXT 10 ROWS ONLY --e buscou ou trouxe apenas as 10 proximas, após os 50