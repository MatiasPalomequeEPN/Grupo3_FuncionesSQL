use master
go

use pubs 
go

--Función Cast 
select title, CAST(price AS INT) AS PrecioCasteado from titles 
where price is not null

--Función Dateadd
select fname, lname, DATEADD(year, 2, hire_date) as FechaAgregada from employee

--Función Datediff
select stor_id, DATEDIFF(year, ord_date, getdate()) as AñosOrdenado from sales 


--Función Day 
select fname, lname, day(hire_Date) as ContratadosDia31
from employee
where DAY(hire_date) = 13

--Función Month 
select ord_num, Month(ord_date) as OrdenesSept
from sales
where Month(ord_date) = 9

--Función Year
select fname as Nombre, lname as Apellido, Year(hire_date) as FechaContratación from employee
where Year(hire_date)>1990
order by hire_date

--Función Round
select title, Round(price*ytd_sales,1) as VentasTotales from titles
where price is not null

--Función Concat
select Concat(fname,' ',lname, ' - ', job_desc) as NombreYCargo from employee e join jobs j
on e.job_id = j.job_id

--Función Lower
select pub_id, Lower(pub_name) as NombreMinusculas from publishers
order by pub_name

--Función Ltrim
select Ltrim(stor_name) as SinEspacioIzq from stores

--Función Replace
select Replace(au_fname, 'a', '1') as NombreReemplazado, Replace(au_lname, 'e','O_O') as ApellidoReemplazado from authors