desc pessoas; /* desc é mesma coisa que describe */

/*Adiciona campo profissao na ultima posição, último campo*/
alter table pessoas
add column profissao varchar(10);

/*Apaga campo profissao*/
alter table pessoas
drop column profissao;

/*Adiciona campo após um campo específico*/
alter table pessoas
add column profissao varchar(10) after nome; 

/*Adiciona campo codigo como primeiro campo*/
alter table pessoas
add column codigo int first;

/*Parâmetro de modificação: posso alterar tipo do campo e outras características, mas não o nome (não com com o comando modify)*/
alter table pessoas
modify column profissao varchar(20); /*modifiquei a quantidade de caracteres do campo e tornei não nulo. Como o SQL vai adicionar novo campo tudo como nulo, eu complemento o comando dizendo que os valores serão vazios ('')*/
/*  modify column profissao varchar(20) not null default '';  DEFAULT '' NÃO FUNCIONANDO*/

/*Parâmetro CHANGE para alterar nome do campo, mas quando altera o nome o campo perde as características definidas anteriormente.*/
alter table pessoas
change column profissao prof varchar(20);

/* Alterando nome da tabela*/
alter table pessoas rename to people;

select * from people;

/*Criando nova tabela cursos se não existir nenhuma tabela chamada cursos*/
create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2016'
) default charset=utf8;

alter table cursos add column idcurso int first;
alter table cursos add primary key (idcurso);

desc cursos;

create table if not exists teste(id int); /*Criando tabela de teste com um campo*/
drop table if exists teste; /*Apagando tabela testes sem usar parâmetro modify*/