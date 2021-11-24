/*
    SCHEMA pode ser visto como uma maneira de organizar suas tabelas
    Conhecer os chemas salva vidas
*/

SELECT *
  FROM INFORMATION_SCHEMA.TABLES
  ORDER BY TABLE_SCHEMA

SELECT TOP 5 *
  FROM INFORMATION_SCHEMA.COLUMNS

SELECT * 
  FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'Person'
   AND TABLE_NAME = 'Person'


select * FROM   INFORMATION_SCHEMA.Columns where table_name = 'person'