/*
sql
tsql
*/
SELECT BusinessEntityID,
       PersonType,
       Title,
       FirstName,
       MiddleName,
       LastName,
       ModifiedDate
  FROM Person.Person 
 WHERE FirstName = 'Ken'
   AND MiddleName = 'l'