use cadastro;

/*Exercício 01*/
select nome from pessoas where sexo='f';

/*Exercício 02*/
select * from pessoas where nascimento >= '2000-01-01' and nascimento <= '2015-12-31';

/*Exercício 03*/
select nome from pessoas where profissao='programador' and sexo='m';

/*Exercício 04*/
select * from pessoas where nacionalidade='Brasil' and sexo='f' and nome like 'j%';

/*Exercício 05*/
select nome,nacionalidade from pessoas where sexo='m' and nacionalidade <>'brasil' and nome like '%silva%' and peso<100;

/*Exercício 06*/
select max(altura) from pessoas where sexo='m' and nacionalidade='brasil';

/*Exercício 07*/
select avg(peso) from pessoas;

/*Exercício 08*/
select min(peso) from pessoas where sexo='f' and nacionalidade <> 'brasil' and nascimento>='1990-01-01' and nascimento<='2000-12-31';

/*Exercício 09*/
select count(*) from pessoas where sexo='f' and altura>'1.9';