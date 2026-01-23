create database Biblioteca

create table reserva (
id serial primary key,
data_reserva timestamp,
id_usuario int,
id_exemplar int,
status varchar(15),--
posicao int); --posicao da fila


insert into reserva (data_reserva, id_usuario, id_exemplar, status, posicao)
values  ('02/01/2026, 9:30 ',1 ,5 ,'liberado', 1),
		('02/01/2026, 13:03',1 ,8 ,'aguardando ',1 ),
		('06/01/2026, 10:32',4 ,2 ,'aguardando ',1 ),
		('07/01/2026, 14:01',3 ,2 , 'aguardando ',2 ),
		('07/01/2026, 16:10', , , ' ', ),
		('', , , ' ', ),
		('', , , ' ', ),
		('', , , ' ', ),
		('', , , ' ', ),
		('', , , ' ', );
