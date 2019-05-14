select*from cursos
order by nome desc; /*desc = descendente, asc=ascendente ou não põe nada*/

select nome,ano,carga from cursos order by ano desc;
select*from cursos where ano='2016' order by nome;
select nome,totaulas,idcurso from cursos where ano='2016' order by nome;
select nome,totaulas,idcurso from cursos where ano<='2016' order by ano,nome;
select nome,totaulas,idcurso from cursos where ano!='2016' order by ano,nome; /* != é diferente */
select ano, nome,totaulas,idcurso from cursos where ano between 2014 and 2016 order by ano,nome;
select ano, nome,totaulas,idcurso from cursos where ano in (2014,2017) order by ano,nome;
select ano,nome,totaulas,carga,idcurso from cursos where carga>35 and totaulas<30;
select ano,nome,totaulas,carga,idcurso from cursos where carga>35 or totaulas<30;