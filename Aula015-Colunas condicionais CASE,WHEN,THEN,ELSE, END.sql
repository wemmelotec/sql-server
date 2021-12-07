SELECT BusinessEntityID,
       PersonType,
       NameStyle,
       Title,
       CASE Title
            WHEN 'Ms.' THEN 'Senhora'
            WHEN 'Mr.' THEN 'Senhor'
            ELSE ''
       END AS Titulo, 
       FirstName,
       MiddleName,
       LastName,
       FirstName+' '+MiddleName+' '+LastName AS [Nome Completo],
       ModifiedDate      
FROM Person.Person

SELECT PP.BusinessEntityID,
       LoginID,
       OrganizationLevel,
       JobTitle,
       BirthDate,
       MaritalStatus,
       Gender,
       PersonType,
       NameStyle,
       Title,
       FirstName,
       MiddleName,
       LastName,
       Rate,
       CASE                       --AQUI PODERIA TER UMA CONTA (RATE*2), POR EXEMPLO
          WHEN RATE < 12.000 THEN 'SALÁRIO MÍNIMO'
          WHEN RATE BETWEEN 12.000 AND 20.000 THEN 'EMPRESARIO'
          WHEN RATE > 20.000 THEN 'MILIONÁRIO'
          ELSE 'COITADO'
        END AS [COMPARACAO RATE],
       PEA.EmailAddress,
       PPP.PhoneNumber,
       PPP.PhoneNumberTypeID,
       FirstName+' '+MiddleName+' '+LastName AS [Nome Completo]
             
 FROM Person.Person AS PP
 JOIN Person.EmailAddress AS PEA 
   ON PP.BusinessEntityID = PEA.BusinessEntityID
 JOIN Person.PersonPhone AS PPP
   ON PP.BusinessEntityID = PPP.BusinessEntityID
 LEFT JOIN HumanResources.Employee AS HRE 
   ON HRE.BusinessEntityID = PP.BusinessEntityID
 LEFT JOIN HumanResources.EmployeePayHistory AS HREPH
   ON HREPH.BusinessEntityID = PP.BusinessEntityID