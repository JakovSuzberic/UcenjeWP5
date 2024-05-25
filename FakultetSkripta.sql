
CREATE TABLE IspitniRok(

sifra int primary key,
predmet varchar(50),
vrstaIspita varchar(20),
datum DATETIME NOT NULL,
pristupio bit 

);

CREATE TABLE Pristupnici(

ispitniRok int,
student varchar(50),
brojBodova int,
ocjena char(1)

);
