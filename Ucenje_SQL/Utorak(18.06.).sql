


select * from grupe;

select * from smjerovi where sifra = 1;


select a.naziv as smjer, b.naziv as grupa
from Smjerovi a inner join grupe b
on a.sifra = b.smjer;


select a.naziv as smjer, b.naziv as grupa
from Smjerovi a left join grupe b
on a.sifra = b.smjer;


select
a.naziv as smjer, 
b.naziv as grupa,
d.ime, d.prezime
from Smjerovi a inner join grupe b 
on a.sifra = b.smjer
inner join clanovi c on b.sifra = c.grupa
inner join polaznici d on c.polaznik = d.sifra
where d.ime like 'P%'
order by 4;


--broj clanova po grupi

select 
a.naziv as grupe,
COUNT(b.polaznik) as polaznika
from grupe a inner join clanovi b 
on a.sifra = b.grupa 
group by a.naziv
having count (b.polaznik) > 5;


use [D:\DOKUMENTI\IVORA\SKRIPTA\SVASTARA.MDF];

--zelim viditi sve nazive mjesta u osjecko baranjskoj zupaniji

select a.naziv, b.naziv as opcina, c.naziv as zupanija
from Mjesta a inner join opcine b
on a.opcina = b.sifra
inner join Zupanije c 
on b.zupanija = c.sifra
where c.naziv like '%baranj%'
order by 1;


--koja opcina u osjecko baranjskoj zupaniji ima najveci broj mjesta

select b.naziv as opcina, count(a.sifra) as mjesta
from Mjesta a inner join opcine b
on a.opcina = b.sifra
inner join Zupanije c on b.zupanija = c.sifra
where c.naziv like '%zada%'
group by b.naziv
order by 2 desc;


--uprava tvrtke svastara d.o.o je odlucila 2108
--5 direktora svojih dobavljaca odvesti
-- na krstarenje. koga ce povesti?

select top 5 a.naziv, 
sum(c.kolicina * c.cijena) as ukupno,
min(c.kolicina * c.cijena) as minimalno,
max(c.kolicina * c.cijena) as maximalno
from Dobavljaci a inner join primke b 
on a.sifra = b.dobavljac
inner join ArtikliNaPrimci c on b.sifra = c.primka
where b.datum between '2017-01-01' and '2017-12-31'
group by a.naziv
having min(c.kolicina * c.cijena) > 0
order by 3 desc, 2 desc;


--izlistajte imena i prezimena kupaca koji dolaze iz
--mjesta u kojem vi zivite

select distinct b.ime, b.prezime
from Mjesta a inner join kupci b
on a.sifra = b.mjesto
where a.naziv in ('Zadar', 'Osijek')
order by 2;


--idete u svatove i planirate kupiti poklon
-- u rasponu 1000-1100 eura, koliko artikala mozete kupiti?

select * from Artikli where cijena >= 1000 and cijena <= 1100
order by 6 desc;


select count(*) from Artikli;

select count(*) from ArtikliNaPrimci;

select distinct artikl from ArtikliNaPrimci;

select * from artikli where
sifra not in (select distinct artikl from ArtikliNaPrimci);


delete from Artikli where sifra not in (select distinct artikl from ArtikliNaPrimci);



--unesite sebe kao kupca s mjestom u kojem zivite

select * from Mjesta where naziv like '%Zadar%';

insert into kupci(ime,prezime,mjesto,jmbg)
values('Jakov','Suzberic','71951','23041999');


--ispisite nazive mjesta u rh koji imaju koji imaju iste nazive s
--pripadajucim brojem ponavljanja

select naziv, count(*)
from mjesta
group by naziv
having count(*) > 1
order by 2 desc;





