--a--
Select NomeE
From Especie

--b--
Select distinct Classe
from  Tratador natural inner join Especie natural inner join Animal natural inner join Alojado natural inner join Trata
where NomeT like 'Manuel'

--c--
Select distinct NomeT
from  Tratador natural inner join Especie natural inner join Animal natural inner join Alojado natural inner join Trata
where Classe like 'Reptil'

--d--
select IdComp
from Compartimento
EXCEPT
select idcomp
from  Especie natural inner join compartimento natural inner join Alojado natural inner join Animal
where classe like 'Ave'

--e--
select IdComp
from Especie natural inner join compartimento natural inner join Alojado natural inner join Animal 
where Classe like 'Mamifero'
Intersect
select IdComp
from Especie natural inner join compartimento natural inner join Alojado natural inner join Animal 
where Classe like 'Reptil'

--f--
select NomeT
from Tratador
EXCEPT
select distinct NomeT
from compartimento natural inner join Tratador natural inner join Trata  
where Tipo like 'Gaiola' or Tipo like 'Pantano'

--g--
select count(classe) as Numero_de_animais_mamiferos
from Especie
where classe like 'Mamifero'

--h--
select IdComp ,count(NomeA) as Numero_de_animais
from Alojado
group by IdComp

--i--
select NomeT , count(NomeA) as Mamiferos
from Especie natural inner join Tratador natural inner join Trata natural inner join Animal natural inner join Alojado
where Classe like 'Mamifero'
Group by NomeT

--j--
select NomeE
from (select NomeE , count(idComp)as numCompartiemntos , (select count(tipo) from compartimento) as total
	from (select  distinct NomeE, Idcomp 
			from Especie natural inner join Alojado natural inner join Animal natural inner join Compartimento) as N
	group by NomeE) as E
where numCompartiemntos=total
	

--k--
select tratador.nomeT
from (select * , (select max(numero_que_trata) from (select nomeT ,count(classe) as numero_que_trata, NCCChefe
				from tratador natural inner join trata natural inner join compartimento natural inner join alojado natural inner join especie natural inner join Animal
				where classe ilike 'mamifero' and nccchefe is not null
				group by NCCchefe,nomeT
				)as trat) as maximo
		from(
			select nomeT ,count(classe) as numero_que_trata, NCCChefe
			from tratador natural inner join trata natural inner join compartimento natural inner join alojado natural inner join especie natural inner join Animal
			where classe ilike 'mamifero' and nccchefe is not null
			group by NCCchefe,nomeT
		) as tratadores) as finaltab , tratador
where numero_que_trata = maximo and finaltab.nccchefe = tratador.ncc

--l--
select idcomp
from (	select * , (select max(count_femeas)
				from(
						select IdComp, count(Genero) as Count_femeas
						from Compartimento natural inner join Alojado natural inner join Animal
						where Genero like 'feminino'
						group by IdComp
				) as maximo) as maximo
	from (
		select IdComp, count(Genero) as Count_femeas
		from Compartimento natural inner join Alojado natural inner join Animal
		where Genero like 'feminino'
		group by IdComp
	) as tab1
	) as finaltab
where maximo=count_femeas


--m--
delete from especie where classe ilike 'reptil'

--n--
























