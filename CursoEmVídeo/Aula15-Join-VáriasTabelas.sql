use cadastro;

CREATE TABLE ft_assiste (
    id INT AUTO_INCREMENT,
    data DATE,
    idpessoa INT,
    idcurso INT,
    PRIMARY KEY (id),
    FOREIGN KEY (idpessoa)
        REFERENCES pessoas (id),
    FOREIGN KEY (idcurso)
        REFERENCES cursos (idcurso)
)  DEFAULT CHAR SET=UTF8;

select*from ft_assiste;

insert into ft_assiste values
(default,'2019-04-17','10','3'),
(default,'2019-02-20','15','9'),
(default,'2019-01-04','1','18');

/*INNER JOIN*/
select p.nome,c.nome, a.data from pessoas p /*apelidei pessoas de p*/
join ft_assiste a on p.id=a.idpessoa
join cursos c on a.idcurso=c.idcurso
order by p.nome;

select*from ft_assiste;