create database Biblioteca;
use Biblioteca;

create table Livros (
id int primary key auto_increment unique,
titulo varchar(75) not null,
autor_id int not null,
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
data_falescimento Date null);

create table Usuarios (
id int primary key auto_increment,
nome varchar(100) not null,
email varchar(75) not null,
telefone Bigint not null,
data_cadastro Date not null,
cpf BIGINT not null unique);

create table Emprestimos (
id int primary key auto_increment unique,
id_usuario int not null,
id_livro int not null,
data_emprestimo Date not null,
data_devolucao_prevista Date not null,
data_devolucao_real Date null,
situacao varchar(50) not null,
taxa_atraso decimal(9,2) not null);

create table Reservas (
id int primary key auto_increment unique,
id_usuario int not null,
id_livro int not null,
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
(11,'Matemática',7,2019,'didático','números e cálculos',20,'fisico'),
(12,'programação em C',8,2025,'didático','códigos em C',5,'digital'),
(13,'programação em java',8,2025,'didático','códigos em java',2,'digital'),
(14,'programação em python',8,2025,'didático','códigos em python',1,'digital'),
(15,'fisica nuclear',9,1978,'didático','cálculos e explosões',7,'fisico'),
(16,'fisica quântica',10,1954,'didático','cálculos quânticos',0,'fisico'),
(17,'português',11,1999,'didático','gramática',6,'fisico'),
(18,'volta ao mundo',12,1675,'aventura','explorando o oceano',15,'fisico'),
(19,'viagem ao centro da terra',13,1987,'aventura','viajando dentro da terra',4,'digital'),
(20,'O Código Da Vinci',14,2003,'Suspense','artes e pinturas',13,'fisico'),
(21,'Harry Potter e a Pedra Filosofal',15,1997,'Fantasia','magia e aventura',2,'digital'),
(22,'O Nome do Vento',16,2007,'Fantasia','aviação',1,'fisico'),
(23,'It: A Coisa',17,1986,'Terror','palhaço demoniaco',7,'fisico'),
(24,'Drácula',18,1897,'Terror','história de um vampiro',11,'digital'),
(25,'Frankenstein',19,1818,'Terror', 'monstro misturado',0,'fisico'),
(26,'As Crônicas de Nárnia',20,1950,'Fantasia','terra mágica',9,'digital'),
(27,'O Hobbit',20,1937,'Fantasia','aventura na terra média',18,'fisico'),
(28,'Ensaio Sobre a Cegueira',21,1995,'Romance','história de amor',1,'digital'),
(29,'A Menina que Roubava Livros',22,2005,'Drama','busca por conhecimento',3,'fisico'),
(30,'O Alquimista',22,1988, 'Ficção Filosófica','substancias quimicas',0,'fisico'),
(31,'A Culpa é das Estrelas',23,2012,'Romance','amor proibido',6,'digital'),
(32,'O Diário de Anne Frank',24,1947,'Biografia','vida de anne frank',2,'fisico'),
(33,'O Lobo da Estepe',25,1927,'Romance Existencial','vida complicada',1,'fisico'),
(34,'A Metamorfose',26, 1915,'Ficção Surrealista','estado de mudança',3,'fisico'),
(35,'O Processo',26,1925,'Ficção Jurídica','história de transformação',8,'digital'),
(36,'Neuromancer',27,1984,'Cyberpunk','matador de mentes',5,'digital'),
(37,'Fahrenheit 451',28,1953,'Distopia','temperatura do termostato',0,'fisico'),
(38,'O Apanhador no Campo de Centeio',29,1951,'Romance','coletor de trigo',1,'digital'),
(39,'A Ilha do Tesouro',30,1883,'Aventura','busca por riquezas',3,'fisico'),
(40,'Vinte Mil Léguas Submarinas',31,1870,'Ficção Científica','explorando o fundo do mar',10,'fisico');

insert into Autores (id,nome,nacionalidade,data_nascimento,data_falescimento)
values
(1,'Machado de Assis', 'Brasileiro', '1839-06-21', '1908-09-29'),
(2,'George Orwell', 'Britânico', '1903-06-25', '1950-01-21'),
(3,'J.R.R. Tolkien', 'Britânico', '1892-01-03', '1973-09-02'),
(4,'Gabriel García Márquez', 'Colombiano', '1927-03-06', '2014-04-17'),
(5,'Jane Austen', 'Britânica', '1775-12-16', '1817-07-18'),
(6,'Antoine de Saint-Exupéry', 'Francês', '1900-06-29', '1944-07-31'),
(7,'Dan Brown', 'Americano', '1964-06-22', NULL),
(8,'J.K. Rowling', 'Britânica', '1965-07-31', NULL),
(9,'Patrick Rothfuss', 'Americano', '1973-06-06', NULL),
(10,'Stephen King', 'Americano', '1947-09-21', NULL),
(11,'Bram Stoker', 'Irlandês', '1847-11-08', '1912-04-20'),
(12,'Mary Shelley', 'Britânica', '1797-08-30', '1851-02-01'),
(13,'C.S. Lewis', 'Britânico', '1898-11-29', '1963-11-22'),
(14,'José Saramago', 'Português', '1922-11-16', '2010-06-18'),
(15,'Markus Zusak', 'Australiano', '1975-06-23', NULL),
(16,'Paulo Coelho', 'Brasileiro', '1947-08-24', NULL),
(17,'John Green', 'Americano', '1977-08-24', NULL),
(18,'Anne Frank', 'Alemã', '1929-06-12', '1945-03-01'),
(19,'Hermann Hesse', 'Alemão', '1877-07-02', '1962-08-09'),
(20,'Franz Kafka', 'Austríaco', '1883-07-03', '1924-06-03'),
(21,'William Gibson', 'Americano', '1948-03-17', NULL),
(22,'Ray Bradbury', 'Americano', '1920-08-22', '2012-06-05'),
(23,'J.D. Salinger', 'Americano', '1919-01-01', '2010-01-27'),
(24,'Victor Hugo', 'Francês', '1802-02-26', '1885-05-22'),
(25,'Liev Tolstói', 'Russo', '1828-09-09', '1910-11-20'),
(26,'Fiódor Dostoiévski', 'Russo', '1821-11-11', '1881-02-09'),
(27,'Emily Brontë', 'Britânica', '1818-07-30', '1848-12-19'),
(28,'Charlotte Brontë', 'Britânica', '1816-04-21', '1855-03-31'),
(29,'Robert Louis Stevenson', 'Escocês', '1850-11-13', '1894-12-03'),
(30,'Júlio Verne', 'Francês', '1828-02-08', '1905-03-24'),
(31,'Robert Louis Stevenson', 'Britânico', '1850-11-13', '1894-12-03'),
(32,'Ernest Hemingway', 'Americano', '1899-07-21', '1961-07-02'),
(33,'Ken Follett', 'Britânico', '1949-06-05', NULL),
(34,'George R.R. Martin', 'Americano', '1948-09-20', NULL),
(35,'Carlos Ruiz Zafón', 'Espanhol', '1964-09-25', '2020-06-19'),
(36,'H.G. Wells', 'Britânico', '1866-09-21', '1946-08-13'),
(37,'Clarice Lispector', 'Brasileira', '1920-12-10', '1977-12-09'),
(38,'Graciliano Ramos', 'Brasileiro', '1892-10-27', '1953-03-20'),
(39,'Monteiro Lobato', 'Brasileiro', '1882-04-18', '1948-07-04'),
(40,'Lima Barreto', 'Brasileiro', '1881-05-13', '1922-11-01');

insert into Usuarios (id,nome,email,telefone,data_cadastro,cpf)
values
(1,'Davi Castilho','davi.lc@sempreceub.com','61981012907','2023-07-31','02661358110'),
(2,'Marcelo Castilho','mfcastilho@gmail.com','61996121829','2021-01-24','11891930869'),
(3,'Andreia Castilho','andreianlourenco@gmail.com','61993105383','2022-06-07','85174157953'),
(4,'Ana Souza', 'ana.souza@email.com', '11982001001', '2021-03-15', '87251938001'),
(5,'Bruno Lima', 'bruno.lima@email.com', '21988551002', '2022-04-20', '68123754092'),
(6,'Camila Torres', 'camila.torres@email.com', '31993321003', '2023-05-10', '42987623145'),
(7,'Diego Rocha', 'diego.rocha@email.com', '41991001004', '2022-01-05', '50923784901'),
(8,'Eduarda Silva', 'eduarda.silva@email.com', '11994001005', '2022-08-22', '31749586210'),
(9,'Felipe Mendes', 'felipe.mendes@email.com', '21995551006', '2021-11-17', '09823756345'),
(10,'Gabriela Costa', 'gabriela.costa@email.com', '31991111007', '2023-06-08', '37628495001'),
(11,'Henrique Dias', 'henrique.dias@email.com', '21992341008', '2022-03-12', '61238475098'),
(12,'Isabela Martins', 'isabela.martins@email.com', '11993441009', '2022-09-30', '45872913452'),
(13,'João Pedro', 'joao.pedro@email.com', '11997771010', '2021-02-25', '12903495820'),
(14,'Karla Nunes', 'karla.nunes@email.com', '21991121011', '2021-12-05', '24832984750'),
(15,'Lucas Barros', 'lucas.barros@email.com', '31991231012', '2023-03-14', '30842917381'),
(16,'Mariana Freitas', 'mariana.freitas@email.com', '21992221013', '2022-07-07', '67391428012'),
(17,'Nathan Vieira', 'nathan.vieira@email.com', '41992041014', '2024-04-01', '18902745890'),
(18,'Olívia Ramos', 'olivia.ramos@email.com', '31998881015', '2021-09-19', '52647129081'),
(19,'Paulo Henrique', 'paulo.henrique@email.com', '11996121016', '2023-01-10', '93182756439'),
(20,'Queila Andrade', 'queila.andrade@email.com', '21990231017', '2022-04-23', '23840596123'),
(21,'Ricardo Teixeira', 'ricardo.teixeira@email.com', '31990911018', '2021-11-15', '34592017456'),
(22,'Sabrina Lopes', 'sabrina.lopes@email.com', '11998331019', '2021-06-11', '89560134728'),
(23,'Tiago Gomes', 'tiago.gomes@email.com', '41990121020', '2023-07-13', '17629584009'),
(24,'Ursula Prado', 'ursula.prado@email.com', '21994581021', '2021-02-18', '42098371265'),
(25,'Victor Hugo', 'victor.hugo@email.com', '11995811022', '2022-03-03', '50928374615'),
(26,'Wesley Fernandes', 'wesley.fernandes@email.com', '31992221023', '2021-05-09', '73019582034'),
(27,'Xuxa Menezes', 'xuxa.menezes@email.com', '21991721024', '2023-12-01', '80129473852'),
(28,'Yasmin Duarte', 'yasmin.duarte@email.com', '11998001025', '2022-11-11', '34958732167'),
(29,'Zeca Brandão', 'zeca.brandao@email.com', '41993211026', '2023-09-20', '98321057291'),
(30,'Alana Ribeiro', 'alana.ribeiro@email.com', '21991811027', '2022-01-06', '41278309176'),
(31,'Bernardo Souza', 'bernardo.souza@email.com', '31991121028', '2023-04-22', '98013472865'),
(32,'Carla Figueiredo', 'carla.figueiredo@email.com', '11997331029', '2021-07-01', '60298473109'),
(33,'Daniel Oliveira', 'daniel.oliveira@email.com', '21998771030', '2022-05-04', '50439281730'),
(34,'Ellen Carvalho', 'ellen.carvalho@email.com', '31998761031', '2023-08-30', '73520198462'),
(35,'Fernando Bastos', 'fernando.bastos@email.com', '21991671032', '2021-04-14', '89502473918'),
(36,'Giovana Martins', 'giovana.martins@email.com', '11992831033', '2022-12-08', '12984623018'),
(37,'Heitor Pires', 'heitor.pires@email.com', '31991031034', '2024-01-29', '21984753082'),
(38,'Ingrid Sousa', 'ingrid.sousa@email.com', '21999931035', '2022-06-25', '49752098463'),
(39,'José Augusto', 'jose.augusto@email.com', '41998121036', '2021-10-18', '38029587142'),
(40,'Larissa Lima', 'larissa.lima@email.com', '11998141037', '2023-10-10', '60418592038');

insert into Emprestimos (id,id_usuario,id_livro,data_emprestimo,data_devolucao_prevista,data_devolucao_real,situacao,taxa_atraso)
values
(1, 12, 5, '2023-01-10', '2023-01-20', '2023-01-19', 'devolvido', 0.00),
(2, 3, 17, '2023-02-15', '2023-02-25', '2023-03-01', 'atrasado', 5.00),
(3, 28, 9, '2024-01-05', '2024-01-12', NULL, 'em andamento', 0.00),
(4, 10, 1, '2023-07-01', '2023-07-10', '2023-07-15', 'atrasado', 7.50),
(5, 21, 30, '2022-10-12', '2022-10-22', '2022-10-20', 'devolvido', 0.00),
(6, 7, 15, '2023-05-03', '2023-05-10', '2023-05-11', 'atrasado', 2.00),
(7, 31, 8, '2024-03-17', '2024-03-27', NULL, 'em andamento', 0.00),
(8, 4, 3, '2023-06-20', '2023-07-01', '2023-07-01', 'devolvido', 0.00),
(9, 35, 2, '2022-09-09', '2022-09-19', '2022-09-22', 'atrasado', 3.50),
(10, 16, 14, '2023-12-10', '2023-12-20', '2023-12-19', 'devolvido', 0.00),
(11, 9, 12, '2022-03-15', '2022-03-25', '2022-03-25', 'devolvido', 0.00),
(12, 6, 6, '2024-02-28', '2024-03-10', NULL, 'em andamento', 0.00),
(13, 17, 25, '2023-08-05', '2023-08-15', '2023-08-18', 'atrasado', 4.00),
(14, 40, 10, '2023-12-01', '2023-12-10', '2023-12-09', 'devolvido', 0.00),
(15, 18, 7, '2023-10-25', '2023-11-05', NULL, 'em andamento', 0.00),
(16, 33, 11, '2023-02-20', '2023-03-02', '2023-03-07', 'atrasado', 5.00),
(17, 11, 18, '2024-01-22', '2024-02-01', NULL, 'em andamento', 0.00),
(18, 14, 13, '2022-06-18', '2022-06-28', '2022-06-28', 'devolvido', 0.00),
(19, 2, 21, '2023-11-10', '2023-11-20', '2023-11-21', 'atrasado', 1.50),
(20, 30, 22, '2024-03-10', '2024-03-20', NULL, 'em andamento', 0.00),
(21, 25, 16, '2022-04-12', '2022-04-22', '2022-04-30', 'atrasado', 6.00),
(22, 1, 27, '2023-09-01', '2023-09-10', '2023-09-10', 'devolvido', 0.00),
(23, 13, 28, '2022-01-15', '2022-01-25', '2022-01-25', 'devolvido', 0.00),
(24, 19, 24, '2023-04-04', '2023-04-14', '2023-04-20', 'atrasado', 3.00),
(25, 15, 20, '2023-03-15', '2023-03-25', '2023-03-22', 'devolvido', 0.00),
(26, 5, 32, '2022-08-22', '2022-09-01', '2022-09-02', 'atrasado', 1.00),
(27, 27, 36, '2024-01-15', '2024-01-25', NULL, 'em andamento', 0.00),
(28, 23, 38, '2023-08-10', '2023-08-20', '2023-08-25', 'atrasado', 2.50),
(29, 8, 23, '2023-10-01', '2023-10-11', '2023-10-10', 'devolvido', 0.00),
(30, 34, 4, '2024-05-15', '2024-05-25', '2024-05-26', 'atrasado', 1.00),
(31, 22, 33, '2022-02-18', '2022-02-28', '2022-03-05', 'atrasado', 3.50),
(32, 26, 34, '2023-06-01', '2023-06-11', '2023-06-10', 'devolvido', 0.00),
(33, 29, 19, '2024-04-01', '2024-04-10', NULL, 'em andamento', 0.00),
(34, 38, 26, '2023-11-22', '2023-12-02', NULL, 'em andamento', 0.00),
(35, 20, 29, '2022-07-30', '2022-08-08', '2022-08-09', 'atrasado', 1.00),
(36, 24, 31, '2023-09-09', '2023-09-19', '2023-09-20', 'atrasado', 1.50),
(37, 32, 35, '2023-05-22', '2023-06-01', '2023-06-03', 'atrasado', 2.00),
(38, 36, 40, '2024-02-05', '2024-02-15', NULL, 'em andamento', 0.00),
(39, 39, 37, '2022-11-18', '2022-11-28', '2022-11-28', 'devolvido', 0.00),
(40, 37, 39, '2024-08-28', '2024-09-07', '2024-09-15', 'atrasado', 4.00);

insert into Reservas (id,id_usuario,id_livro,data_reserva,status_reserva,lista_espera)
values
(1, 15, 7, '2023-07-25', 'concluída', 'não'),
(2, 4, 12, '2023-05-12', 'ativa', 'sim'),
(3, 30, 25, '2024-01-10', 'ativa', 'não'),
(4, 21, 8, '2023-02-07', 'cancelada', 'não'),
(5, 9, 13, '2022-10-05', 'concluída', 'não'),
(6, 18, 3, '2024-03-18', 'ativa', 'sim'),
(7, 2, 27, '2023-11-22', 'concluída', 'não'),
(8, 35, 6, '2022-09-10', 'ativa', 'sim'),
(9, 14, 19, '2023-01-25', 'concluída', 'não'),
(10, 26, 2, '2023-06-30', 'ativa', 'não'),
(11, 12, 30, '2024-04-01', 'ativa', 'não'),
(12, 1, 5, '2023-08-14', 'cancelada', 'não'),
(13, 38, 11, '2022-08-09', 'concluída', 'não'),
(14, 23, 17, '2023-12-10', 'ativa', 'sim'),
(15, 6, 9, '2023-09-04', 'ativa', 'não'),
(16, 34, 4, '2024-02-20', 'ativa', 'não'),
(17, 5, 33, '2023-03-03', 'cancelada', 'não'),
(18, 28, 21, '2022-12-18', 'concluída', 'não'),
(19, 11, 14, '2023-08-27', 'ativa', 'sim'),
(20, 32, 29, '2022-11-01', 'concluída', 'não'),
(21, 19, 18, '2023-10-16', 'ativa', 'não'),
(22, 3, 1, '2024-01-30', 'ativa', 'sim'),
(23, 36, 34, '2023-06-01', 'concluída', 'não'),
(24, 27, 22, '2023-12-12', 'cancelada', 'não'),
(25, 17, 40, '2024-05-05', 'ativa', 'sim'),
(26, 22, 15, '2022-04-14', 'concluída', 'não'),
(27, 39, 10, '2023-02-21', 'ativa', 'não'),
(28, 13, 38, '2023-05-25', 'concluída', 'não'),
(29, 20, 36, '2023-09-29', 'ativa', 'sim'),
(30, 25, 35, '2022-07-07', 'cancelada', 'não'),
(31, 8, 16, '2023-03-28', 'concluída', 'não'),
(32, 7, 26, '2023-08-14', 'ativa', 'sim'),
(33, 37, 23, '2024-04-15', 'ativa', 'não'),
(34, 10, 20, '2023-09-03', 'cancelada', 'não'),
(35, 31, 24, '2024-06-10', 'concluída', 'não'),
(36, 40, 31, '2023-10-31', 'ativa', 'sim'),
(37, 24, 39, '2022-02-19', 'concluída', 'não'),
(38, 33, 32, '2023-01-06', 'ativa', 'não'),
(39, 16, 28, '2023-07-19', 'ativa', 'sim'),
(40, 29, 37, '2024-01-22', 'concluída', 'não');




