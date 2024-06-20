

select * from artikli;
select * from ArtikliNaPrimci;
select * from Dobavljaci;
select * from Mjesta;
select * from Proizvodi;
select * from Usluge;


-- idete u svatove i  zelite kupiti poklon u vrijednostiod 100 do 150 eura koliko artikala je na izboru?

select * from Artikli where cijena >= 100 and cijena <= 150;

-- taj artikl mora bitikućanski aparat ?

select * from Artikli where cijena >= 100 and cijena <= 150; 


select Artikli.dugiNaziv  as Naziv, Artikli.barkod as BARKOD from Artikli; 


select * from Artikli where dugiNaziv like '%rukavica%';

select * from Artikli where dugiNaziv like '%auto%';

select * from Artikli where dugiNaziv like 'auto%';



