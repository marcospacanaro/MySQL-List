create database db_ecommerce2;
use db_ecommerce2;

create table tb_categoria(
	id int (3) AUTO_INCREMENT primary key not null,
	nome varchar (100),
    quant_Produtos int (3)
 );

create table tb_produto(
	id int (3) AUTO_INCREMENT primary key not null,
    nome varchar(60),
    valor float(5.2),
    num_Pagina int(2),
    categoria_id int(3),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (nome, quant_Produtos) values ("Eletrônicos", 99);
insert into tb_categoria (nome, quant_Produtos) values ("Aparelho celular", 12);
insert into tb_categoria (nome, quant_Produtos) values ("Objeto", 50);
insert into tb_categoria (nome, quant_Produtos) values ("Eletrodomésticos", 500);
insert into tb_categoria (nome, quant_Produtos) values ("Afins", 120);

select * from tb_categoria;

insert into tb_produto (nome, valor, num_Pagina, categoria_id) values ("Garrafa", 499.99, 2, 3);
insert into tb_produto (nome, valor, num_Pagina, categoria_id) values ("Celular", 800.99, 1, 2);
insert into tb_produto (nome, valor, num_Pagina, categoria_id) values ("Remédio", 199.99, 1, 5);
insert into tb_produto (nome, valor, num_Pagina, categoria_id) values ("Computador", 1499.99, 2, 1);
insert into tb_produto (nome, valor, num_Pagina, categoria_id) values ("Monitor", 399.99, 3, 1);
insert into tb_produto (nome, valor, num_Pagina, categoria_id) values ("Monitor HD", 599.99, 3, 1);
insert into tb_produto (nome, valor, num_Pagina, categoria_id) values ("Caneca", 99.99, 2, 3);
insert into tb_produto (nome, valor, num_Pagina, categoria_id) values ("Livro", 99.99, 2, 3);
insert into tb_produto (nome, valor, num_Pagina, categoria_id) values ("Porta-Copo", 99.99, 2, 3);
insert into tb_produto (nome, valor, num_Pagina, categoria_id) values ("Porta-Treco", 99.99, 2, 3);
insert into tb_produto (nome, valor, num_Pagina, categoria_id) values ("Sal de Frutas", 299.99, 5);
insert into tb_produto (nome, valor, num_Pagina, categoria_id) values ("Guitarra", 1000.99, 3, 3);
insert into tb_produto (nome, valor, num_Pagina, categoria_id) values ("Violão", 900.99, 3, 3);
insert into tb_produto (nome, valor, num_Pagina, categoria_id) values ("Amplificador", 1000.99, 3, 1);
insert into tb_produto (nome, valor, num_Pagina, categoria_id) values ("Fone de ouvido", 499.99, 3, 3);

select * from tb_produto;

select * from tb_produto where valor > 2000;
select * from tb_produto where valor between 1000 and 2000;
select * from tb_produto where nome like '%c%';
select p.nome, c.nome from tb_produto p inner join tb_categoria c on p.categoria_id = c.id;
select p.nome, c.nome from tb_produto p inner join tb_categoria c on p.categoria_id = c.id where c.nome = 'Objeto'; 








