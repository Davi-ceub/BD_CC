create database Exercicio;
use Exercicio;

CREATE TABLE Organizadores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    contato_email VARCHAR(255) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    cargo VARCHAR(100)
);

CREATE TABLE Eventos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_evento VARCHAR(255) NOT NULL,
    descricao TEXT,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    local VARCHAR(255) NOT NULL,
    organizador_id INT,
    tipo_evento VARCHAR(100),
    FOREIGN KEY (organizador_id) REFERENCES Organizadores(id)
);

CREATE TABLE Participantes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    data_inscricao DATE NOT NULL
);

CREATE TABLE Inscricoes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_evento INT,
    id_participante INT,
    data_inscricao DATE NOT NULL,
    status_pagamento VARCHAR(50),
    FOREIGN KEY (id_evento) REFERENCES Eventos(id),
    FOREIGN KEY (id_participante) REFERENCES Participantes(id)
);

INSERT INTO Organizadores (nome, contato_email, telefone, cargo)
VALUES 
('João Silva', 'joao@evento.com', '9999-9999', 'Coordenador'),
('Maria Souza', 'maria@evento.com', '8888-8888', 'Palestrante'),
('Pedro Almeida', 'pedro@evento.com', '7777-7777', 'Organizador'),
('Ana Costa', 'ana@evento.com', '6666-6666', 'Palestrante');

INSERT INTO Eventos (nome_evento, descricao, data_inicio, data_fim, local, organizador_id, tipo_evento)
VALUES 
('Workshop de Inovação', 'Workshop sobre novas tecnologias', '2025-06-01', '2025-06-03', 'Centro de Convenções', 1, 'Workshop'),
('Palestra sobre Empreendedorismo', 'Palestra com grandes nomes do mercado', '2025-06-10', '2025-06-10', 'Auditório Principal', 2, 'Palestra'),
('Conferência de TI', 'Conferência internacional sobre tecnologia da informação', '2025-07-01', '2025-07-03', 'Palácio de Convenções', 3, 'Conferência'),
('Seminário de Sustentabilidade', 'Seminário sobre práticas ambientais sustentáveis', '2025-08-10', '2025-08-11', 'Hotel Eco', 4, 'Seminário');

INSERT INTO Participantes (nome, email, telefone, data_inscricao)
VALUES 
('Carlos Oliveira', 'carlos@dominio.com', '9876-5432', '2025-04-15'),
('Fernanda Costa', 'fernanda@dominio.com', '9867-1234', '2025-04-16'),
('Lucas Silva', 'lucas@dominio.com', '9356-7890', '2025-04-17'),
('Juliana Pereira', 'juliana@dominio.com', '9456-4567', '2025-04-18'),
('Eduardo Rocha', 'eduardo@dominio.com', '9267-2345', '2025-04-19');

INSERT INTO Inscricoes (id_evento, id_participante, data_inscricao, status_pagamento)
VALUES 
(1, 1, '2025-04-15', 'Pago'),
(1, 2, '2025-04-16', 'Pendente'),
(2, 3, '2025-04-17', 'Pago'),
(2, 4, '2025-04-18', 'Pendente'),
(3, 5, '2025-04-19', 'Pago');

-- 1)   Crie uma consulta SQL que exiba o nome do participante, o nome do evento e uma coluna chamada status_descricao que deve exibir:
-- 'Pago' se o status_pagamento for 'pago'
 -- 'Pendente' se o status_pagamento for 'pendente'
-- 'Cancelado' se o status_pagamento for 'cancelado'
 -- 'Desconhecido' para quaisquer outros valores
 
select nome,nome_evento,status_pagamento, 
   case
      when status_pagamento = 'pago'
      then 'PG'
      when status_pagamento = 'pendente'
      then 'PD'
      when status_pagamento = 'cancelado'
      then 'C'
      else 'D'
      End as status_descricao
  from Inscricoes as i inner join Eventos as e on i.id_evento = e.id inner join Participantes as p on i.id_participante = p.id;
  
  -- 2) Escreva uma consulta que exiba o nome do evento, as datas de início e fim e uma nova coluna chamada classificacao_evento, com base na duração do evento:
 -- 'Evento de 1 dia' se data_inicio for igual a data_fim
-- 'Evento de Curta Duração' se a diferença for de até 3 dias
-- 'Evento de Longa Duração' se for mais que 3 dias
-- Use DATEDIFF() junto com CASE.

select nome_evento,data_inicio,data_fim,
  case
    when data_inicio = data_fim
    then 'Evento de 1 dia'
    when DATEDIFF(data_fim,data_inicio) <= 3
    then 'Evento de Curta Duração'
    when DATEDIFF(data_fim,data_inicio) > 3 
    then 'Evento de Longa Duração'
    End as classificação_evento
from Eventos;

-- 3)   Liste todos os participantes com uma coluna extra chamada tipo_participante, que deve conter:
-- 'Veterano' se a data de inscrição for anterior a 2024
-- 'Novo' se a inscrição for em 2024 ou posterior
-- Use YEAR() e CASE
select * ,
case 
   when YEAR(data_inscricao) < 2024
   then 'Veterano'
   when YEAR(data_inscricao) >= 2024
   then 'Novo'
   End as tipo_participante
   from Participantes;
   
   -- 4)
  -- Crie uma consulta que retorne o nome dos organizadores, seus cargos e uma nova coluna chamada funcao, com:
 -- 'Gestor Principal' se o cargo for igual a 'Diretor'
-- 'Coordenação' se o cargo for 'Coordenador' ou 'Supervisor'
-- 'Apoio' para todos os outros cargos

select nome,cargo,
case 
when cargo = 'Diretor'
then 'Gestor Principal'
when cargo = 'Coordenador' or 'Supervisor'
then 'Coordenação'
Else 'Apoio'
End as funcao
from Organizadores;

-- 5)  Crie uma consulta que exiba o nome dos participantes e uma coluna chamada prioridade_contato, que deve mostrar:
-- 'WhatsApp' se o telefone estiver preenchido (telefone IS NOT NULL)
-- 'E-mail' se o telefone for NULL e o e-mail estiver preenchido
-- 'Sem contato disponível' se ambos forem NULL
select nome,
 case 
 when telefone is not null
 then 'WhatsApp'
 when email is not null and telefone is null
 then 'E-mail'
 else 'Sem contato disponiel'
 END as prioridade_contato
 from Participantes;
 
 -- 6) 	Liste todos os eventos com nome, tipo e uma nova coluna chamada classificacao_tipo, que mostre:
-- 'Competição' se o tipo de evento for 'Campeonato', 'Corrida' ou 'Torneio'
-- 'Formativo' se for 'Oficina', 'Curso' ou 'Palestra'
-- 'Outro' para qualquer outro tipo
-- Use CASE com múltiplos valores por WHEN.
select nome_evento,tipo_evento,
case 
when tipo_evento = 'Campeonato' or 'Corrida' or 'Torneio'
then 'Competição'
when tipo_evento = 'Palestra' or 'Oficina' or  'Curso' 
then 'Formativo'
else 'Outro'
end as 'classificação_tipo'
from Eventos;

-- 7) Liste os eventos que têm participantes com pagamento pendente e exiba apenas aqueles com mais de 1 pendência registrada.
  select id_participante,nome_evento,count(status_pagamento) from Inscricoes as i inner join Eventos as e on i.id_evento = e.id group by id_participante,nome_evento having count(status_pagamento) > 1;

-- 8) Exiba os organizadores e a quantidade de eventos organizados por cada um, mostrando apenas aqueles que organizaram mais de 1 evento.
select nome,count(organizador_id) from Organizadores as o inner join Eventos as e on o.id = e.organizador_id group by nome,organizador_id having count(organizador_id) > 1;

-- 9) Mostre os nomes dos participantes e a quantidade de eventos em que estão inscritos, limitando o resultado apenas aos que têm mais de uma inscrição.
 select nome,count(id_participante) from Participantes as p inner join Inscricoes as i on p.id = i.id_participante group by nome,id_participante having count(id_participante) > 1;
 
 -- 10) Liste os eventos que têm mais da metade dos inscritos com pagamento pendente. Para cada evento, exiba a quantidade de pendências e o total de inscrições.

