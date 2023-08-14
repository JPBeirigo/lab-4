create table tb_categoria(
	id serial,
	nome varchar(100) not null,
	fg_ativo int,
	constraint pk_categoria primary key(id)
);
	
create table tb_produto(
	id serial,
	categoria_id int not null,
	nome varchar(100) not null,
	quantidade int,
	valor_unitario float,
	fg_ativo int,
	constraint pk_produto primary key(id),
	constraint fk_categoria foreign key(categoria_id)
		references tb_categoria(id)
);

select * from tb_categoria order by id
select * from tb_produto order by id

insert into tb_categoria(id,nome,fg_ativo)
	values(1,'Alimentos',1)
	
insert into tb_categoria(id,nome,fg_ativo)
	values(2,'Automotivo',1)
	
insert into tb_categoria(id,nome,fg_ativo)
	values(3,'Bebidas',1)
	
insert into tb_categoria(id,nome,fg_ativo)
	values(4,'Beleza',1)

insert into tb_categoria(id,nome,fg_ativo)
	values(5,'Brinquedos',1)
	
insert into tb_categoria(id,nome,fg_ativo)
	values(6,'Celulares',1)
	
insert into tb_categoria(id,nome,fg_ativo)
	values(7,'Esporte',1)
	
insert into tb_categoria(id,nome,fg_ativo)
	values(8,'Informática',1)
	
insert into tb_categoria(id,nome,fg_ativo)
	values(9,'Papelaria',1)
	
insert into tb_produto(id,categoria_id,nome,quantidade,valor_unitario,fg_ativo)
	values(1,1,'Bolo de chocolate',4,3.50,1)
	
insert into tb_produto(id,categoria_id,nome,quantidade,valor_unitario,fg_ativo)
	values(2,3,'Coca Cola lata',7,4.50,1)

insert into tb_produto(id,categoria_id,nome,quantidade,valor_unitario,fg_ativo)
	values(3,7,'Bola de futebol',3,12.25,1)

insert into tb_produto(id,categoria_id,nome,quantidade,valor_unitario,fg_ativo)
	values(4,5,'Pistola dágua',9,3.50,1)
	
insert into tb_produto(id,categoria_id,nome,quantidade,valor_unitario,fg_ativo)
	values(5,2,'Bicicleta',5,450.99,1)
	
insert into tb_produto(id,categoria_id,nome,quantidade,valor_unitario,fg_ativo)
	values(6,6,'Moto G8',2,1400,1)
	
insert into tb_produto(id,categoria_id,nome,quantidade,valor_unitario,fg_ativo)
	values(7,3,'Fanta lata',4,3.50,1)
	
insert into tb_produto(id,categoria_id,nome,quantidade,valor_unitario,fg_ativo)
	values(8,1,'Paçoca',8,0.50,1)
	
insert into tb_produto(id,categoria_id,nome,quantidade,valor_unitario,fg_ativo)
	values(9,3,'Água',7,2.50,1)
	
insert into tb_produto(id,categoria_id,nome,quantidade,valor_unitario,fg_ativo)
	values(10,9,'Caneta',14,2.50,1)
	
update tb_categoria
	set nome = 'Livraria'
		where id = 9;
		
update tb_categoria
	set nome = 'Bicicletaria'
		where id = 2;
		
update tb_categoria
	set fg_ativo = 0
		where id = 4;
		
update tb_categoria
	set fg_ativo = 0	
		where id = 8;
		
select * from tb_categoria order by nome
select * from tb_produto order by nome

select * from tb_produto where valor_unitario>10.00
select * from tb_produto where categoria_id=8

select p.nome, p.quantidade, p.valor_unitario, c.nome 
	from tb_produto as p
	inner join tb_categoria as c
		on(p.categoria_id = c.id) order by c.nome
		
select p.nome,p.quantidade,p.valor_unitario, (quantidade*valor_unitario) as "total",c.nome
	from tb_produto as p
	inner join tb_categoria as c
		on(p.categoria_id = c.id) order by c.nome
		
		/* USA-SE (X*X) PARA MULTIPLICAÇÃO ENTRE COLUNAS */