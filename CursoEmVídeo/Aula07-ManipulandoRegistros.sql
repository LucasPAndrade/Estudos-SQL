insert into cursos values
('1','HTML4','Curso de HTML 5','40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP','40','20','2010'),
('5','Jarva','J','10','29','2000'),
('6','MySQL','Lógica de Programação','20','15','2016'),
('7','Word','Lógica de Programação','20','15','2016'),
('8','sapateado','Lógica de Programação','20','15','2018'),
('9','Cozinha Árabe','Lógica de Programação','20','15','2018'),
('10','Youtuber','Lógica de Programação','20','15','2018');

select*from cursos;

update cursos
set nome = 'HTML5'
where idcurso='1';

update cursos
set nome='PHP',ano='2015'
where idcurso='4';

update cursos
set nome='Java',ano='2015',carga='40'
where idcurso='5';

/*Atualizando mais de uma linha*/
update cursos
set ano= '2050', carga= '800'
where ano='2018';

update cursos
set ano= '2050', carga= '0'
where ano='2050'
limit 1; /*limitando alterações em apenas uma linha*/

/*Deletando registros*/
delete from cursos where idcurso = '8';

select*from cursos;

delete from cursos where ano = '2050' limit 2;

/*Deletando todos os registros*/
truncate cursos;