select 2;
select 'Text for select';
select 2+2;
select 3>4; 
select NOW();

 SELECT * FROM autori;

select nume from autori;
select nume, carti_scrise from autori;
select id, nume, sex, carti_scrise from autori;

select *, id, nume, sex, carti_scrise from autori;
select *, * from autori;

select 'Popescu vasile', 4;
select 'Popescu vasile', 4+8;

select *, 4+5 from autori;

select nume, 3/5 from autori;

select nume, carti_scrise, 3%5 from autori;

select nume, carti_scrise > 5 from autori;

select nume, carti_scrise > 5 as "peste_5" from autori;

select nume, carti_scrise > 5 "peste_5" from autori;

select nume as "Nume", carti_scrise as "Carti_scrise" from autori;

select * from autori as a;

select * from autori as "Autori";

select a.nume, a.sex from autori as a;

select * from adresa where id >4;

select * from adresa;

select * from adresa where autori_id=4;

select * from adresa where autori_id=4 and casa_bloc='C';

select * from adresa where casa_bloc='B';

select distinct nume from autori;
























