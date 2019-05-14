use cadastro;
desc pessoas;
/*Fazendo exemplo de 1 curso para muitos alunos.*/
alter table pessoas add column cursopreferido int;
alter table pessoas add foreign key(cursopreferido) references cursos(idcurso);

select * from pessoas;
select * from cursos;
update pessoas set cursopreferido='6' where id='1';

/*INTEGRIDADE REFERENCIAL*/
delete from cursos where idcurso='6'; /*Não vai dar certo deletar esse curso pois esse curso id 6 está sendo usado como FK em outra entidade*/

/*INNER JOIN*/
select pessoas.nome, cursos.nome, cursos.ano
from pessoas join cursos
on cursos.idcurso=pessoas.cursopreferido
order by pessoas.nome;

/* ---- Usando apelidos*/
select p.nome, c.nome, c.ano
from pessoas as p join cursos as c
on c.idcurso=p.cursopreferido
order by p.nome;

/*OUTER JOIN*/
select p.nome, c.nome, c.ano
from pessoas as p left outer join cursos as c
on c.idcurso=p.cursopreferido
order by p.nome;

select p.nome, c.nome, c.ano
from pessoas as p right outer join cursos as c
on c.idcurso=p.cursopreferido
order by p.nome;