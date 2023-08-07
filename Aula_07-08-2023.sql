/* APAGAR UMA TABELA */
drop table tb_autor;

/* CRIAÇÃO DA TABELA tb_autor */
create table tb_autor(

	id serial,
	/* serial = Diz para o banco gerar automaticamente valores para essa coluna */
	nome varchar(80) not null,
	email varchar(100),
	constraint pk_autor_id primary key(id)
);

/* INSERIR DADOS NA TABELA */
insert into tb_autor (nome, email)
	values ('Ana Maria', 'ana@email.com');
	
insert into tb_autor (nome, email)
	values ('João Pedro Ferreira Beirigo', 'joao.beirigo@sou.unaerp.edu.br')
	
/* INSERIR MÚLTIPLOS DADOS NA TABELA */
insert into tb_autor (nome, email)
	values ('Pablo Diego', 'pablo@email.com'),
		   ('Jose Francisco', 'jose@email.com'),
		   ('Neponuceno Maria', 'maria@email.com')
		   
/* TESTE DE INTEGRIDADE */
insert into tb_autor (email)
	values ('email@email.com');

/* RECUPERAR DADOS DA TABELA */
select * from tb_autor;
select * from tb_autor order by nome;
select * from tb_autor order by nome asc;
select * from tb_autor order by nome desc;
select * from tb_autor order by id desc;
select * from tb_autor order by id asc;

select * from tb_autor where id=3;
select * from tb_autor where id<4;
select * from tb_autor where id>=3;
select * from tb_autor where email = 'ana@email.com';

select * from tb_autor
	where nome like 'Jose%';

select * from tb_autor
	where nome like '%Maria';

select * from tb_autor
	where nome like '%Maria%';
	
select * from tb_autor
	where nome like '%maria%';
	
	/* para não diferenciar maiusculo de minusculo colocar i antes do like*/
select * from tb_autor
	where nome ilike '%Maria%';
	
/* ATUALIZAR DADOS DA TABELA */
update tb_autor
	set email = 'ana.maria@email.com'
	where id = 1;
	
update tb_autor
	set nome = 'Ana Maria',
		email = 'ana.maria@email.com'
	where id = 1;
	
/* APAGAR LINHAS DA TABELA */
delete from tb_autor where id=2;

insert into tb_autor (nome,email)
	values ('Joao Pedro', 'joao@email.com')
	
