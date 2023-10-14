# Veternary Clinic Data Analysis using SQL
---

## Insights

**1.** Write a query to extract & display the names of both the pets and their respective owners side by side .
````sql
SELECT O.OWNERID "owner-id",
	O.NAME "owner_name",
	P.NAME "pet_name"
FROM OWNERS O
INNER JOIN PETS P ON P.OWNERID = O.OWNERID ;
````

**2.**  Write a query to extract and list out those specific pets that have had medical procedures performed here .
````sql
 SELECT P.PETID "petId",
	P.NAME "pet_name",
	PH.PROCEDURETYPE
FROM PROCEDUREHISTORY PH
INNER JOIN PETS P ON P.PETID = PH.PETID;
````

**3.**  Write a query to extract and display names of medical procedures performed on pets along with their descriptions side by side .
````sql
SELECT PH.PROCEDURETYPE,
	PD.DESCRIPTION
FROM PROCEDUREHISTORY PH
INNER JOIN PROCEDUREDETAILS PD ON PH.PROCEDURETYPE = PD.PROCEDURETYPE

````
**4.**  Write a query to extract & display costs incurred by the owners of the pets from the clinic in question (Table should have owners name and procedure price printed side by side .
````sql
SELECT O.NAME "owner name",
	PD.PRICE "Price Incurred"
FROM PROCEDUREHISTORY PH
INNER JOIN PROCEDUREDETAILS PD ON PH.PROCEDURESUBCODE = PD.PROCEDURESUBCODE
INNER JOIN PETS P ON PH.PETID = P.PETID
INNER JOIN OWNERS O ON P.OWNERID = O.OWNERID
````
