use master
go

use pubs 
go

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