use cadastro;
select * from cursos
where nome like 'p%';

select * from cursos
where nome like '%a';

select * from cursos
where nome like '%a%';

select * from cursos
where nome not like '%a%';

select * from cursos
where nome like 'ph%p';

select * from cursos
where nome like 'ph%p%';

select * from cursos
where nome like 'ph%p_'; /*underline (_) obriga a ter um caractere. % pode ser nenhum caractere.*/

select * from cursos
where nome like 'p_p%';

select * from cursos
where nome like 'p__t%';

select distinct nacionalidade from pessoas order by nacionalidade; /*distinct elimina duplicatas*/
select distinct carga from cursos;

/*FUNÇÕES DE AGREGAÇÃO*/

select count(*) from cursos; /*Contando quantos cursos existem*/
select count(*) from cursos where carga > 40; /*Contando quantos cursos existem com carga maior que 40*/
select max(Carga) from cursos;
select max(carga) from cursos where ano='2015';
select max(totaulas) from cursos where ano='2016';
select nome, min(totaulas) from cursos where ano='2016';
select sum(totaulas) from cursos where ano='2016';
select avg(totaulas) from cursos where ano='2016';