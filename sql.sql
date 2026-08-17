create database inventario_ctw;

use inventario_ctw;

create table insumos(
	id int auto_increment primary key,
    codigo varchar(150),
    descricao varchar (150),
    quantidade int,
    categoria varchar(150)
);

insert into insumos (codigo, descricao, quantidade, categoria)
values (null, 'Paquímetro 150mm - Escala 0,02mm', 7, 'Instrumento de Medição'),
(null, 'Paquímetro 150mm - Escala 0,05mm', 5, 'Instrumento de Medição'),
(null, 'Micrômetro Centesimal 25-50mm', 2, 'Instrumento de Medição'),
(null, 'Micrômetro Milesiamal 0-25mm', 2, 'Instrumento de Medição'),
('3869503050', 'Trena Fita 50m', 1, 'Instrumento de Medição'),
('L510CME', 'Trena Fita 5m', 1, 'Instrumento de Medição'),
(null, 'Régua Graduada 50cm', 2, 'Instrumento de Medição'),
(null, 'Nível 0,02 mm/M', 1, 'Instrumento de Medição'),
('M4x0,7x25mm', 'Parafuso Sextavado', 50, 'Elemento de Fixação'),
('M6x1,0x35mm', 'Parafuso Sextavado', 15, 'Elemento de Fixação'),
('M8x1,35x40mm', 'Parafuso Sextavado', 50, 'Elemento de Fixação'),
('M10x1,5x70mm', 'Parafuso Sextavado', 13, 'Elemento de Fixação'),
('M10x1,5x40mm', 'Parafuso Sextavado', 4, 'Elemento de Fixação'),
('M14x2,0x30mm', 'Parafuso Sextavado', 4, 'Elemento de Fixação'),
('M16x2,0x80mm', 'Parafuso Sextavado', 8, 'Elemento de Fixação'),
('M5x0,8x30mm', 'Parafuso Cilíndrico', 18, 'Elemento de Fixação'),
('M6x1,0x60mm', 'Parafuso Cilíndrico', 2, 'Elemento de Fixação'),
('M8x1,25x50mm', 'Parafuso Cilíndrico', 6, 'Elemento de Fixação'),
('M10x1,5x30mm', 'Parafuso Cilíndrico', 50, 'Elemento de Fixação'),
('M10x1,5x50mm', 'Parafuso Cilíndrico', 50, 'Elemento de Fixação'),
('M4x0,7x25mm', 'Parafuso Sem-Cabeça', 10, 'Elemento de Fixação'),
('M5x0,8x30mm', 'Parafuso Sem-Cabeça', 10, 'Elemento de Fixação'),
('M6x1,0x30mm', 'Parafuso Sem-Cabeça', 10, 'Elemento de Fixação'),
('M8x1,5x50mm', 'Parafuso Sem-Cabeça', 10, 'Elemento de Fixação'),
('M4x0,7x30mm', 'Parafuso Escareado', 20, 'Elemento de Fixação'),
('M5x0,8x30mm', 'Parafuso Escareado', 20, 'Elemento de Fixação'),
('M6x1,0x16mm', 'Parafuso Escareado', 20, 'Elemento de Fixação'),
('M8x1,25x20mm', 'Parafuso Escareado', 20, 'Elemento de Fixação'),
('M5x0,8x20mm', 'Parafuso Fenda', 20, 'Elemento de Fixação'),
('M6x1,0x20mm', 'Parafuso Fenda', 17, 'Elemento de Fixação'),
('M6x1,0x40mm', 'Parafuso Fenda', 16, 'Elemento de Fixação'),
('M8x1,25x30mm', 'Parafuso Fenda', 14, 'Elemento de Fixação'),
('M8x1,25x50mm', 'Parafuso Fenda', 13, 'Elemento de Fixação'),
('Ø4,0x10mm', 'Rebite POP', 20, 'Elemento de Fixação'),
('Ø3,2x16mm', 'Rebite POP', 35, 'Elemento de Fixação'),
('Ø2,4x25mm', 'Rebite POP', 13, 'Elemento de Fixação'),
('Ø2,4x7,4mm', 'Rebite POP', 12, 'Elemento de Fixação'),
('10-15mm', 'Jogo de Chave Allen', 5, 'Chaves'),
('Ø4,0x10mm', 'Chave Torx T', 4, 'Chaves'),
('14"-18"', 'Chave Grifo', 2, 'Chaves'),
('2-10', 'Jogo de Chave Allen T', 4, 'Chaves'),
('5-7', 'Jogo de Chave de Fenda', 4, 'Chaves'),
('5-8', 'Jogo de Chave de Fenda Cruzada', 5, 'Chaves'),
('3-10', 'Jogo de Chave Torx', 12, 'Chaves'),
('7-13', 'Jogo de Chave Canhão', 3, 'Chaves'),
('1/4"-1"1/4', 'Jogo de Chave Combinada', 13, 'Chaves'),
('6-46', 'Jogo de Chave Combinada', 15, 'Chaves'),
(null, 'Gravador Pneumático', 1, 'Instrumento de Medição'),
(null, 'Cinta', 2, 'Ferramentas Manuai'),
('4-32', 'Jogo de Soquetes', 52, 'Ferramentas Manuai'),
('1,9-18x150mm', 'Saca Pinos', 12, 'Ferramentas Manuai'),
('163BFX-T7', 'Lima Meia Cana', 1, 'Ferramenta de Desbaste'),
(null, 'Lima Triangular', 3, 'Ferramenta de Desbaste'),
(null, 'Lima Chata Paralela', 1, 'Ferramenta de Desbaste'),
(null, 'Lima Quadrada', 1, 'Ferramenta de Desbaste'),
(null, 'Lima Redonda', 1, 'Ferramenta de Desbaste'),
('09707A', 'Saca Parafuso N°5', 1, 'Ferramentas Manuai'),
(null, 'Batente de Bronze', 5, 'Ferramentas Manuai'),
('44745/040', 'Alavanca', 3, 'Ferramentas Manuai'),
(null, 'Chave Biela', 2, 'Ferramentas Manuai'),
(null, 'Martelo Nylon', 1, 'Ferramentas Manuai'),
(null, 'Martelo Anti-Retrocesso', 1, 'Ferramentas Manuai'),
(null, 'Martelo de Borda', 1, 'Ferramentas Manuai'),
(null, 'Martelo Pena', 1, 'Ferramentas Manuai'),
('352-15', 'Talhadeira', 2, 'Ferramentas Manuai'),
(null, 'Talhadeira', 1, 'Ferramentas Manuai'),
('TMFT36', 'Maleta SKF', 1, 'Ferramentas Manuai'),
(null, 'Riscador', 1, 'Ferramentas Manuai'),
(null, 'Tensionador', 1, 'Ferramentas Manuai'),
('N°8220-10', 'Extrator de Rolamentos', 1, 'Ferramentas Manuai'),
(null, 'Sargento', 2, 'Ferramentas Manuai'),
('1082740', 'Macho Rosca M8', 2, 'Ferramentas Manuai'),
('1002940', 'Macho Rosca M10', 2, 'Ferramentas Manuai'),
('1730314', 'Macho Rosca M12', 1, 'Ferramentas Manuai'),
('50001880', 'Macho Rosca M8', 1, 'Ferramentas Manuai'),
('49440316', 'Macho Rosca M12', 1, 'Ferramentas Manuai'),
('49400296', 'Macho Rosca M12', 2, 'Ferramentas Manuai'),
('49440315', 'Macho Rosca M12', 1, 'Ferramentas Manuai'),
('01002340', 'Macho Rosca M6', 3, 'Ferramentas Manuai'),
('65999929', 'Macho Rosca M6', 1, 'Ferramentas Manuai'),
('1002340', 'Macho Rosca M5', 2, 'Ferramentas Manuai'),
('M5x0,8x4mm', 'Porca', 8, 'Elemento de Fixação'),
('M6x1,0x5mm', 'Porca', 7, 'Elemento de Fixação'),
('M8x1,25x6mm', 'Porca', 11, 'Elemento de Fixação'),
('M12x1,75x10mm', 'Porca', 20, 'Elemento de Fixação'),
('M14x2,0x11mm', 'Porca', 20, 'Elemento de Fixação'),
('M16x2,0x13mm', 'Porca', 13, 'Elemento de Fixação'),
('5/16"', 'Porca com Arruela', 2, 'Elemento de Fixação'),
('M10x1,5x8mm', 'Porca com Arruela', 3, 'Elemento de Fixação'),
('Ø3xØ6,2', 'Arruela Pressão', 20, 'Elemento de Fixação'),
('Ø4xØ7,6', 'Arruela Pressão', 14, 'Elemento de Fixação'),
('Ø5xØ9,2mm', 'Arruela Pressão', 25, 'Elemento de Fixação'),
('Ø6xØ11,8', 'Arruela Pressão', 15, 'Elemento de Fixação'),
('Ø8xØ14,8mm', 'Arruela Pressão', 20, 'Elemento de Fixação'),
('Ø10xØ18,1', 'Arruela Pressão', 15, 'Elemento de Fixação'),
('Ø12xØ21,1mm', 'Arruela Pressão', 4, 'Elemento de Fixação'),
('Ø14xØ24,1mm', 'Arruela Pressão', 30, 'Elemento de Fixação'),
('Ø16xØ27,4', 'Arruela Pressão', 10, 'Elemento de Fixação'),
('Ø5,3xØ10mm', 'Arruela Lisa', 4, 'Elemento de Fixação'),
('Ø8xØ16mm', 'Arruela Lisa', 4, 'Elemento de Fixação'),
('Ø10,5xØ20mm', 'Arruela Lisa', 5, 'Elemento de Fixação'),
('Ø11xØ23mm', 'Arruela Lisa', 15, 'Elemento de Fixação'),
(null, 'Laser Schaffller', 1, 'Instrumento de Medição'),
(null, 'Conjunto de Calibrador de Polia', 4, 'Instrumento de Medição'),
(null, 'Desandador/Vira Macho', 5, 'Ferramentas Manuai'),
(null, 'Cossinete', 7, 'Ferramentas Manuai'),
(null, 'Alicate Externo', 7, 'Ferramentas Manuai'),
(null, 'Alicate Interno', 1, 'Ferramentas Manuai'),
(null, 'Alicate de Corte', 1, 'Ferramentas Manuai'),
(null, 'Espatula', 3, 'Ferramentas Manuai'),
(null, 'Alicate de Pressão', 1, 'Ferramentas Manuai'),
(null, 'Alicate Torquês', 1, 'Ferramentas Manuai'),
(null, 'Alicate Bomba da Água', 1, 'Ferramentas Manuai'),
(null, 'Estetoscópio', 1, 'Instrumento de Medição'),
(null, 'Veda Rosca', 1, 'Elemento de Fixação'),
('3/8"', 'Suporte de Cossinete', 1, 'Ferramentas Manuai'),
('2xM4 e M12', 'Suporte de Cossinete', 3, 'Ferramentas Manuai'),
('M5x0,8', 'Suporte de Cossinete', 1, 'Ferramentas Manuai'),
('M18', 'Bucha Recartilhada S/Rasgo', 6, 'Elemento de Fixação'),
('3/4"', 'Bucha Recartilhada C/1 Rasgo', 4, 'Elemento de Fixação'),
('3/4"', 'Bucha Recartilhada C/2 Rasgo', 1, 'Elemento de Fixação'),
('6201Z', 'Rolamento C&U', 10, 'Rolamentos'),
('6204Z', 'Rolamento C&U', 1, 'Rolamentos'),
('6008Z', 'Rolamento Korea', 2, 'Rolamentos'),
('6208Z', 'Rolamento NSK', 2, 'Rolamentos'),
('6206Z', 'Rolamento NSK', 2, 'Rolamentos'),
('6205Z', 'Rolamento NSK', 1, 'Rolamentos'),
('6204Z', 'Rolamento NSK', 1, 'Rolamentos'),
('6201Z', 'Rolamento NSK', 3, 'Rolamentos'),
('3/4"', 'Selo Mecânico Inpacon', 3, 'Elemento de Fixação'),
('30557', 'Anel de Vedação SulBrasil', 4, 'Elemento de Fixação');

select * from insumos;

select descricao, quantidade
from insumos;

select *
from insumos
where categoria = 'instrumento de medição';

select *
from insumos
where quantidade > 10;

select *
from insumos
where quantidade <= 5;

select *
from insumos
where categoria = 'elemento de fixação';

select *
from insumos
where descricao like '%parafuso%';

select *
from insumos
where codigo is not null;

select *
from insumos
where codigo is null;

select *
from insumos
order by quantidade desc;

select *
from insumos
order by descricao asc;

select count(*) as total_itens
from insumos;

select sum(quantidade) as quantidade_total
from insumos;

select max(quantidade) as maior_quantidade
from insumos;

select min(quantidade) as menor_quantidade
from insumos;

select categoria, count(*) as total
from insumos
group by categoria;

select categoria, sum(quantidade) as quantidade_total
from insumos
group by categoria;

select *
from insumos
order by quantidade desc
limit 10;

select *
from insumos
where descricao like '%chave%';