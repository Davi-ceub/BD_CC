create database Biblioteca;
use Biblioteca;

create table Livros (
id int primary key auto_increment unique,
titulo varchar(75) not null,
autor_id int not null references Autores(id),
ano_publicacao Date not null,
genero varchar(50) not null,
descricao varchar(200) not null,
disponibilidade int not null,
Tipo varchar(7) not null); 

create table Autores (
id int primary key auto_increment unique,
nome varchar(100) not null,
nacionalidade varchar(50) not null,
data_nascimento Date not null,
data_publicacao Date not null);

create table Usuarios (
id int primary key auto_increment,
nome varchar(100) not null,
email varchar(75) not null,
telefone int not null,
data_cadastro Date not null,
cpf BIGINT not null unique);

create table Emprestimos (
id int primary key auto_increment unique,
id_usuario int not null references Usuarios(id),
id_livro int not null references Livros(id),
data_emprestimo Date not null,
data_devolucao_prevista Date not null,
data_devolucao_real Date not null,
situacao varchar(50) not null,
taxa_atraso decimal(9,2) not null);

create table Reservas (
id int primary key auto_increment unique,
id_usuario int not null references Usuarios(id),
id_livro int not null references Livros(id),
data_reserva Date not null,
status_reserva varchar(50) not null,
lista_espera varchar(5) not null);


alter table Livros add constraint fk_Autores foreign key (autor_id)
references Autores (id);

alter table Emprestimos add constraint fk_Usuarios foreign key (id_usuario)
references Usuarios (id);

alter table Emprestimos add constraint fk_Livros foreign key (id_livro)
references Livros (id);

alter table Reservas add constraint fk_Usuarios1 foreign key (id_usuario)
references Usuarios (id);

alter table Reservas add constraint fk_Livros1 foreign key (id_livro)
references Livros (id);

insert into Livros (id,titulo,autor_id,ano_publicação,genero,descricao,disponibilidade,Tipo)
values 
(1,'O nome da Rosa', 1 , 1980, 'romance', 'investiga vários temas',2,'fisico'),
(2,'O pêndulo de Foucault',1,1988,'romance','história real',1,'fisico'),
(3,'O estrangeiro',2,1942,'romance','Colono Francês',0,'fisico'),
(4,'A peste',2,1947,'romance','epidemia na Argélia',5,'digital'),
(5,'Admiravel mundo novo',3,1932,'romance','sociedade distópica',10,'digital'),
(6,'1984',4,1949,'romance','regime totalitario',7,'fisico'),
(7,'A revolução dos bichos',4,1945,'fábula','critica ao stalinismo',1,'fisico'),
(8,'Os irmãos Karamázov',5,1880,'romance','conflito entre irmãos',0,'digital'),
(9,'Crime e castigo',5,1866,'romance','jovem estudante comete crime',24,'fisico'),
(10,'O pequeno principe',6,1943,'literatura infantil','menino faz amizade com piloto',3,'digital'),
(11
(12
(13
(14
(15
(16
(17
(18
(19
(20
(21
(22
(23
(24
(25
(26
(27
(28
(29
(30
(31
(32
(33
(34
(35
(36
(37
(38
(39
(40


