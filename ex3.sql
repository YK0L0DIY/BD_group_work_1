
--a--
INSERT INTO Especie Values ('Foca','Mamifero');
INSERT INTO Animal Values ('Kiki','feminino','Foca');
INSERT INTO Compartimento Values (23,'charco');
INSERT INTO Alojado Values ('Kiki',23);


--b---
INSERT INTO Animal Values ('Lola','feminino','Foca');
INSERT INTO Alojado Values ('Lola',23);

--c--
INSERT INTO Especie Values ('Leao Marinho','Mamifero');
INSERT INTO Animal Values ('Anibal','masculino','Leao Marinho');
INSERT INTO Alojado Values ('Anibal',23);

--d--
INSERT INTO Especie Values ('Lontra','Mamifero');
INSERT INTO Animal Values ('Amalia','feminino','Lontra');
INSERT INTO Alojado Values ('Amalia',23);

--e--
INSERT INTO Animal Values ('Eusebio','masculino','Lontra');
INSERT INTO Alojado Values ('Eusebio',23);

--f--
INSERT INTO tratador Values (123,'Manuel',750,124);
INSERT INTO Trata Values (23,123);
INSERT INTO Compartimento Values (10,'Selva');
INSERT INTO Trata Values (10,123);

--g--
INSERT INTO tratador Values (124,'Luis',850,null);
INSERT INTO Trata Values (10,124);
INSERT INTO Compartimento Values (8,'Pantano');
INSERT INTO Trata Values (8,124);

--h--
INSERT INTO Especie Values ('Tigre','Mamifero');
INSERT INTO Animal Values ('Jau','masculino','Tigre');
INSERT INTO Alojado Values ('Jau',10);

--i--
INSERT INTO Animal Values ('Princesa','feminino','Tigre');
INSERT INTO Alojado Values ('Princesa',10);

--j--
INSERT INTO Especie Values ('Tartaruga','Reptil');
INSERT INTO Animal Values ('Huga','feminino','Tartaruga');
INSERT INTO Alojado Values ('Huga',8);

--k--
INSERT INTO Animal Values ('Luna','feminino','Tartaruga');
INSERT INTO Alojado Values ('Luna',8);

--l--
INSERT INTO Especie Values ('Lagartixa','Reptil');
INSERT INTO Animal Values ('Brava','feminino','Lagartixa');
INSERT INTO Alojado Values ('Brava',8);

--m--
INSERT INTO Especie Values ('Lagarto','Reptil');
INSERT INTO Animal Values ('Raul','masculino','Lagarto');
INSERT INTO Alojado Values ('Raul',8);

--n---
INSERT INTO tratador Values (125,'Maria',850,124);
INSERT INTO Trata Values (8,125);
INSERT INTO Compartimento Values (15,'Gaiola');
INSERT INTO Trata Values (15,125);

--o--
INSERT INTO Especie Values ('Papagaio','Ave');
INSERT INTO Animal Values ('Pirata','masculino','Papagaio');
INSERT INTO Alojado Values ('Pirata',15);

--p--
INSERT INTO Animal Values ('Bela','feminino','Papagaio');
INSERT INTO Alojado Values ('Bela',15);

--q--
INSERT INTO Especie Values ('Arara','Ave');
INSERT INTO Animal Values ('Joia','feminino','Papagaio');
INSERT INTO Alojado Values ('Joia',15);
