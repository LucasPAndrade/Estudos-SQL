use cadastro;

/*EXERCÍCIO 01*/
select profissao,count(*) from pessoas group by profissao;

/*EXERCÍCIO 02*/
select sexo,count(*) from pessoas where nascimento >='2005-01-1' group by sexo;

/*EXERCÍCIO 03*/
select nacionalidade,count(*) from pessoas where nacionalidade<>'brasil' group by nacionalidade having count(nacionalidade) > 3;
select nacionalidade,count(*) from pessoas where nacionalidade<>'brasil' group by nacionalidade; /*lista completa, sem linha de corte de 3 pessoas por país*/

/*EXERCÍCIO 04*/
select altura,count(*) from pessoas where peso >100 group by altura having altura > (select avg(altura) from pessoas);