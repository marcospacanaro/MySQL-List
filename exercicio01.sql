create database db_RH2;
use db_RH2;

create table tb_cargo (
	id int(3) AUTO_INCREMENT primary key not null,
    nome_Cargo varchar(100),
    setor varchar(100)
);

create table tb_funcionarios(
	id int (3) AUTO_INCREMENT primary key not null,
    nome varchar(60),
    matricula varchar(60),
    salario float(5.2),
    telefone int(12),
    cargo_id int(3),
    foreign key (cargo_id) references tb_cargo (id)    
);

insert into tb_cargo (nome_Cargo, setor) values ("Funcionário", "Vendas");
insert into tb_cargo (nome_Cargo, setor) values ("Supervisor", "Vendas");
insert into tb_cargo (nome_Cargo, setor) values ("Coordenador", "Comunicação");
insert into tb_cargo (nome_Cargo, setor) values ("Diretor", "Comunicação");
insert into tb_cargo (nome_Cargo, setor) values ("Diretor", "Recursos Humanos");

insert into tb_funcionarios (nome, matricula, salario, telefone, cargo_id) values ("Carlos", "196-0-195", 1500.00, 46762575, 1);
insert into tb_funcionarios (nome, matricula, salario, telefone, cargo_id) values ("Marcos", "196-0-400", 1500.00, 46762575, 2);
insert into tb_funcionarios (nome, matricula, salario, telefone, cargo_id) values ("Bruno", "196-0-203", 1500.00, 46762575, 3);
insert into tb_funcionarios (nome, matricula, salario, telefone, cargo_id) values ("Maurício", "196-0-545", 1500.00, 46762575, 4);
insert into tb_funcionarios (nome, matricula, salario, telefone, cargo_id) values ("Paula", "196-0-056", 1500.00, 46762575, 5);
insert into tb_funcionarios (nome, matricula, salario, telefone, cargo_id) values ("Ana Claudia", "196-0-111", 1500.00, 46762575, 1);
insert into tb_funcionarios (nome, matricula, salario, telefone, cargo_id) values ("Luane", "196-0-112", 1500.00, 46762575, 2);
insert into tb_funcionarios (nome, matricula, salario, telefone, cargo_id) values ("Victória", "196-0-021", 2500.00, 46762575, 3);
insert into tb_funcionarios (nome, matricula, salario, telefone, cargo_id) values ("Roberto", "196-0-568", 2500.00, 46762575, 4);
insert into tb_funcionarios (nome, matricula, salario, telefone, cargo_id) values ("Lucas", "196-0-213", 2500.00, 46762575, 5);
insert into tb_funcionarios (nome, matricula, salario, telefone, cargo_id) values ("Alexandre", "196-0-245", 1500.00, 46762575, 1);
insert into tb_funcionarios (nome, matricula, salario, telefone, cargo_id) values ("Taís", "196-0-147", 1500.00, 46762575, 2);
insert into tb_funcionarios (nome, matricula, salario, telefone, cargo_id) values ("Aline", "96-0-357", 1500.00, 46762575, 3);
insert into tb_funcionarios (nome, matricula, salario, telefone, cargo_id) values ("Gabriel", "196-0-123", 1500.00, 46762575, 4);
insert into tb_funcionarios (nome, matricula, salario, telefone, cargo_id) values ("Vicente", "196-0-456", 1500.00, 46762575, 5);

select * from tb_funcionarios;
select * from tb_cargo;
select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario between 1000 and 2000;
select * from tb_funcionarios where nome like '%c%'; 
select f.nome from tb_funcionarios f; 
select f.nome, c.nome_Cargo from tb_funcionarios f inner join tb_cargo c on f.cargo_id = c.id;
select f.nome, c.nome_Cargo from tb_funcionarios f inner join tb_cargo c on f.cargo_id = c.id where c.nome_Cargo like '%Supervisor%';
















