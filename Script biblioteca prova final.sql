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



