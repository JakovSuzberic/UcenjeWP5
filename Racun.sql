
CREATE TABLE Racun(

sifra int ,
redniBroj varchar(20),
datum datetime not null,
kupac varchar(25),
placeno bit

);


CREATE TABLE StavkeRacuna(

racun int,
artikl varchar(50),
cijena float,
kolicina float,
popust int

);
