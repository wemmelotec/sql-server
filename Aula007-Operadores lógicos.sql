/*
ALL (SUBQUERY)
AND
OR
SOME | ANY (SUBQUERY)
BETWEEN
EXISTS (SUBQUERY)
IN (passo uma lista, eu quero o que passei na lista)| NOT IN (eu não quero o que passei na lista)
LIKE | NOT LIKE
*/

SELECT *
  FROM Person.Person
 WHERE BusinessEntityID BETWEEN 600 AND 800
   --AND FirstName <> 'Aaron'
   --AND (MiddleName='Devdojo' OR MiddleName='G')
 --ORDER BY FirstName

SELECT *
FROM Person.Person
WHERE BusinessEntityID IN(1,2,5,489,650)

SELECT *
FROM Person.Person
WHERE FirstName IN('Gigi', 'Aron', 'Devdojo')

SELECT *
FROM Person.Person
WHERE FirstName NOT IN('Gigi', 'Aaron', 'Devdojo')
ORDER BY FirstName

SELECT *
FROM Person.Person
--WHERE FirstName LIKE 'G%'
--WHERE FirstName LIKE 'G___'
--WHERE FirstName LIKE 'G__A'
--WHERE FirstName LIKE '___A'
WHERE FirstName LIKE '[ABCD]__A'
ORDER BY FirstName

SELECT *
FROM Person.Person
--WHERE FirstName LIKE 'G%'
--WHERE FirstName LIKE 'G___'
--WHERE FirstName LIKE 'G__A'
--WHERE FirstName LIKE '___A'
WHERE FirstName LIKE '[^ABCD]__A' --TRARÁ TUDO QUE NÃO ESTIVER NESTE INTERVALO DA PRIMEIRA LETRA E COM O A NO FINAL
ORDER BY FirstName

SELECT *
FROM Person.Person
--WHERE FirstName LIKE 'G%'
--WHERE FirstName LIKE 'G___'
--WHERE FirstName LIKE 'G__A'
--WHERE FirstName LIKE '___A'
WHERE FirstName NOT LIKE '[ABCD]__A'
ORDER BY FirstName