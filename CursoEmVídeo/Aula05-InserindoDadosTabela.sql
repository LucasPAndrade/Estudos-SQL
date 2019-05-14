insert into pessoas
(id, nome, nascimento, sexo, peso, altura,nacionalidade)
values
(default,'João','1984-01-20','M','78.5','1.83',default);

insert into pessoas
(nome, nascimento, sexo, peso, altura)
values
('João','1984-01-20','M','78.5','1.83');

/*
3º método de inserir dados, dessa vez não vou informar campos pq já estou inserindo os dados na ordem que os campos estão.
*/
insert into pessoas values
(default,'João','1984-01-20','M','78.5','1.83',default);

/*
4º métodos, inserindo vários dados de uma só vez.
*/
insert into pessoas values
(default,'João','1984-01-20','M','78.5','2',default),
(default,'João','1980-01-20','M','78.5','1.83',default),
(default,'João','1986-01-20','f','70','1.80','Japão'),
(default,'João','2010-01-20','M','78.5','1.83','EUA'),
(default,'João','1984-12-30','M','78.5','1.83',default);

select*from pessoas;