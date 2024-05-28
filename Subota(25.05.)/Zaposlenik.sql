
CREATE TABLE sudjeluje(

zaposlenik INT,
projekt INT,
datumPristupanja DATETIME

);

CREATE TABLE zaposlenik(

sifra int,
nadredeni int,
ime varchar(45),
prezime varchar(45),
datumrodenja datetime,
placa decimal(18,2),
odjel int

);


CREATE TABLE odjel(

sifra int,
naziv varchar(45)

);



CREATE TABLE projekt(

sifra int,
naziv varchar(45),
datumpocetka datetime,
datumkraja datetime

);

