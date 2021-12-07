/*
CONTA A QUANTIDADE DE REGISTRO NA COLUNA FIRSTNAME
CONTA A QUANTIDADE DE REGISTROS DISTINTOS NA COLUNA FIRSTNAME
DEPOIS FAZ UMA SUBTRAÇÃO DAS DUAS CONTAGENS
*/
SELECT (COUNT(FirstName)-COUNT(DISTINCT FirstName))
FROM Person.Person
/*
RETORNA O MENOR E O MAIOR NOME DA COLUNA FIRSTNAME
*/
SELECT TOP 1
       FirstName,
       LEN(FirstName) AS [QUANTIDADE DE LETRAS]
  FROM PERSON.Person
  ORDER BY LEN(FirstName), FirstName;
  
SELECT TOP 1
       FirstName,
       LEN(FirstName) AS [QUANTIDADE DE LETRAS]
  FROM PERSON.Person
  ORDER BY LEN(FirstName) DESC;    

--RETORNA A LISTA DE FIRSTNAME ONDE O FIRSTNAME COMEÇA COM AEIOU
SELECT TOP 50
       FirstName
  FROM Person.Person
WHERE FirstName LIKE '[aeiou]%'
--retorna a lista de firstname onde o firstname termina com aeiou
SELECT TOP 50
       FirstName
  FROM Person.Person
WHERE FirstName LIKE '%[aeiou]'
--RETORNA A LISTA DE FIRSTNAME ONDE O FIRSTNAME COMEÇA E TERMINA COM AEIOU
SELECT TOP 50
       FirstName
  FROM Person.Person
 WHERE FirstName LIKE '[aeiou]%'
  AND FirstName LIKE '%[aeiou]'
--RETORNA A LISTA DE FIRSTNAME ONDE FIRSTNAME NÃO COMEÇA COM AEIOU, PARA INVERTE BASTA LEVAR O % PARA FRENTE
SELECT TOP 50
       FirstName
  FROM Person.Person
 WHERE FirstName LIKE '[^aeiou]%'
/*
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT LIKE '[aeiou]%' AND CITY NOT LIKE '%[aeiou]';

SELECT NAME FROM STUDENTS WHERE MARKS > 75 ORDER BY RIGHT(NAME, 3), ID ASC;

*/

SELECT RIGHT(FirstName, 5) AS 'First Name'  
FROM Person.Person  
WHERE BusinessEntityID < 5  
ORDER BY FirstName 

--VERIFICAR NA TABELA SE SÃO TRINAGULOS APRESENTAR OS SEUS TIPO
SELECT CASE             
            WHEN A + B > C AND B + C > A AND A + C > B THEN
                CASE 
                    WHEN A = B AND B = C THEN 'Equilateral'
                    WHEN A = B OR B = C OR A = C THEN 'Isosceles'
                    ELSE 'Scalene'
                END
            ELSE 'Not A Triangle'
        END
FROM TRIANGLES;

--
SELECT concat(NAME, 
              CASE 
              WHEN occupation = "Doctor" THEN "(D)" 
              WHEN occupation = "Professor" THEN "(P)" 
              WHEN occupation = "Singer" THEN "(S)" 
              WHEN occupation = "Actor" THEN "(A)" END)
 FROM OCCUPATIONS 
ORDER BY NAME;

SELECT "There are a total of", COUNT(OCCUPATION), concat(LOWER(OCCUPATION),"s.") 
  FROM OCCUPATIONS
 GROUP BY OCCUPATION
 ORDER BY COUNT(OCCUPATION) ASC, OCCUPATION ASC;