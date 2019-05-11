CREATE TABLE flight
(id SERIAL PRIMARY KEY,
origen VARCHAR NOT NULL,
destino VARCHAR NOT NULL,
duracion INTEGER NOT NULL);

INSERT INTO flight (origen, destino, duracion) VALUES('Paris', 'London', 415);
INSERT INTO flight (origen, destino, duracion) VALUES('Los Angeles', 'Bogota', 760);
INSERT INTO flight (origen, destino, duracion) VALUES('Buenos Aires', 'Mexico DF', 700);
INSERT INTO flight (origen, destino, duracion) VALUES('New York', 'Instanbul', 435);
INSERT INTO flight (origen, destino, duracion) VALUES('Moscow', 'Lima', 245);
INSERT INTO flight (origen, destino, duracion) VALUES('Santa Marta', 'New York', 455);

CREATE TABLE pasajeros
(id SERIAL PRIMARY KEY,
nombre VARCHAR NOT NULL,
id_vuelos INTEGER REFERENCES flight);

INSERT INTO pasajeros (nombre, id_vuelos) VALUES ('Juan', 1);
INSERT INTO pasajeros (nombre, id_vuelos) VALUES ('Claudia', 1);
INSERT INTO pasajeros (nombre, id_vuelos) VALUES ('Samuel', 2);
INSERT INTO pasajeros (nombre, id_vuelos) VALUES ('Maria', 3);
INSERT INTO pasajeros (nombre, id_vuelos) VALUES ('Carmen', 4);
INSERT INTO pasajeros (nombre, id_vuelos) VALUES ('James', 5);
INSERT INTO pasajeros (nombre, id_vuelos) VALUES ('Dora', 6);
update vuelos set origen= 'New-York' where id = 1;


///////////////////////CONSULTAS//////////////////////////////////

--SELECT  * from flight;
--select origen, destino from flight;
--select * from vuelos where duracion>500;
--select * from vuelos where origen='Paris' or duracion>500;
--select sum(duracion) from flight;
--select min(duracion) from flight;
--select max(duracion) from flight;
--select * from vuelos where origen like '%a%';
--select * from flight;
--SELECT * FROM flight limit 2;
--select * from flight order by duracion desc;
--select * from flight order by duracion asc limit 2;
--select * from flight group by destino, id;
--select origen, count(*) from vuelos group by origen;
--select destino, count(*) from vuelos group by destino;
--select destino, count(*) as cantidad from vuelos group by destino having count(*)>1;
--select origen, destino, nombre from vuelos join pasajeros on pasajeros.id_vuelos=vuelos.id;
--select origen, destino, nombre from vuelos left join pasajeros on pasajeros.id_vuelos=vuelos.id;
