create domain idCurto as smallint;
create domain idMedio as integer;
create domain idLong as bigint;

create domain sigla as char(3);
create domain codigo as varchar(10);
create domain nome_curto as varchar(15);
create domain nome_medio as varchar(50);
create domain nome_longo as varchar(100);
create domain documento as varchar(15);
create domain tipo as char(1);
create domain texto as text;

create domain data as date;
create domain horas as time;
create domain data_hora as timestamp;

create domain moeda as numeric(10,2);
create domain float_curto as numeric(6,2);
create domain float_medio as numeric(10,2);
create domain float_longo as numeric(15,2);

alter table bairro alter column nome type nome_medio;