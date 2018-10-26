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
select NomeT
from Tratador
where NCC = (select NCCChefe
			from (select NomeT, NCCChefe
			from Tratador natural inner join Trata natural inner join Alojado natural inner join Animal natural inner join Especie
			where Classe like 'Mamifero'
	  		group by NomeT, NCCchefe
	 		having NCCChefe is not null) as N)

--l-- falta selecionar os que têm maior num de femeas
select IdComp, count(Genero) as Count_femeas
	from Compartimento natural inner join Alojado natural inner join Animal
	where Genero like 'feminino'
	group by IdComp
	order by Count_femeas desc


--ESTE N FUNCIONA PARA A L
select IdComp, count(Genero) as B
from Compartimento natural inner join Animal natural inner join Alojado
where B =(
		select max(Count_femeas)
		from (select count(Genero) as Count_femeas
			from Compartimento natural inner join Alojado natural inner join Animal
			where Genero like 'feminino'
			group by IdComp
			order by Count_femeas desc) as N)

























