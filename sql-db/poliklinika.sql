DROP DATABASE IF EXISTS poliklinika;

CREATE DATABASE poliklinika CHARACTER SET utf8 COLLATE utf8_general_ci;

USE poliklinika;

SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE pacientai (
    id int unsigned auto_increment primary key,
    vardas varchar(100) UNIQUE NOT NULL,
    pavarde varchar(100) UNIQUE NOT NULL
);

insert into pacientai (vardas, pavarde) values ('Bronius', 'Steponavicius'), ('Kazys', 'Binkis'),
('Ponas', 'Bynas'), ('Vadimas', 'Tiek to'), ('Juozapas', 'Banys'),
('Andrius', 'Klemavicius'), ('Adele', 'Zvaigzde');


CREATE TABLE gydytojai (
    id int unsigned auto_increment primary key,
    vardas varchar(100) NOT NULL,
    pavarde varchar(100) NOT NULL,
    slaptazodis varchar(100)
);

insert into gydytojai (vardas, pavarde) values ('Ai', 'Skauda'), ('Didele', 'Adata'),
('Juozas', 'Mesininkas'), ('Vladas', 'Ukolas'), ('Marius', 'Baltašvarkis'),
('Audronius', 'Receptas');

update gydytojai set slaptazodis=MD5('123456');

CREATE TABLE vizitai (
    id int unsigned auto_increment primary key,
    paciento_id int unsigned,
    gydytojo_id int unsigned,
    vizito_data DATETIME NOT NULL,
    busena int unsigned NOT NULL,
    FOREIGN KEY (paciento_id) REFERENCES pacientai(id),
    FOREIGN KEY (gydytojo_id) REFERENCES gydytojai(id)
);

insert into vizitai (paciento_id, gydytojo_id, vizito_data, busena) values 
(4, 1, '2020-10-28 07:00', 0),
(2, 1, '2020-10-28 08:00', 0),
(NULL, 1, '2020-10-28 09:00', 0),
(NULL, 1, '2020-10-28 10:00', 0),
(5, 1, '2020-10-28 11:00', 0),
(7, 1, '2020-10-28 12:00', 0),
(3, 1, '2020-10-28 13:00', 0),
(NULL, 1, '2020-10-28 14:00', 0),
(NULL, 1, '2020-10-28 15:00', 0),
(NULL, 1, '2020-10-28 16:00', 0),
(NULL, 1, '2020-10-28 17:00', 0),
(NULL, 1, '2020-10-28 18:00', 0),
(NULL, 1, '2020-10-28 19:00', 0),
(NULL, 1, '2020-10-28 20:00', 0),
(NULL, 1, '2020-10-28 21:00', 0),
(NULL, 2, '2020-10-28 07:00', 0),
(NULL, 2, '2020-10-28 08:00', 0),
(NULL, 2, '2020-10-28 09:00', 0),
(4, 2, '2020-10-28 10:00', 0),
(NULL, 2, '2020-10-28 11:00', 0),
(NULL, 2, '2020-10-28 12:00', 0),
(NULL, 2, '2020-10-28 13:00', 0),
(NULL, 2, '2020-10-28 14:00', 0),
(NULL, 2, '2020-10-28 15:00', 0),
(NULL, 2, '2020-10-28 16:00', 0),
(NULL, 2, '2020-10-28 17:00', 0),
(NULL, 2, '2020-10-28 18:00', 0),
(NULL, 2, '2020-10-28 19:00', 0),
(7, 2, '2020-10-28 20:00', 0),
(NULL, 2, '2020-10-28 21:00', 0),
(NULL, 3, '2020-10-28 07:00', 0),
(NULL, 3, '2020-10-28 08:00', 0),
(NULL, 3, '2020-10-28 09:00', 0),
(5, 3, '2020-10-28 10:00', 0),
(NULL, 3, '2020-10-28 11:00', 0),
(NULL, 3, '2020-10-28 12:00', 0),
(NULL, 3, '2020-10-28 13:00', 0),
(NULL, 3, '2020-10-28 14:00', 0),
(6, 3, '2020-10-28 15:00', 0),
(NULL, 3, '2020-10-28 16:00', 0),
(NULL, 3, '2020-10-28 17:00', 0),
(NULL, 3, '2020-10-28 18:00', 0),
(NULL, 3, '2020-10-28 19:00', 0),
(2, 3, '2020-10-28 20:00', 0),
(NULL, 3, '2020-10-28 21:00', 0),
(NULL, 4, '2020-10-28 07:00', 0),
(NULL, 4, '2020-10-28 08:00', 0),
(1, 4, '2020-10-28 09:00', 0),
(NULL, 4, '2020-10-28 10:00', 0),
(NULL, 4, '2020-10-28 11:00', 0),
(NULL, 4, '2020-10-28 12:00', 0),
(NULL, 4, '2020-10-28 13:00', 0),
(NULL, 4, '2020-10-28 14:00', 0),
(NULL, 4, '2020-10-28 15:00', 0),
(5, 4, '2020-10-28 16:00', 0),
(NULL, 4, '2020-10-28 17:00', 0),
(NULL, 4, '2020-10-28 18:00', 0),
(NULL, 4, '2020-10-28 19:00', 0),
(NULL, 4, '2020-10-28 20:00', 0),
(NULL, 4, '2020-10-28 21:00', 0),
(NULL, 5, '2020-10-28 07:00', 0),
(NULL, 5, '2020-10-28 08:00', 0),
(NULL, 5, '2020-10-28 09:00', 0),
(7, 5, '2020-10-28 10:00', 0),
(NULL, 5, '2020-10-28 11:00', 0),
(NULL, 5, '2020-10-28 12:00', 0),
(3, 5, '2020-10-28 13:00', 0),
(NULL, 5, '2020-10-28 14:00', 0),
(NULL, 5, '2020-10-28 15:00', 0),
(NULL, 5, '2020-10-28 16:00', 0),
(NULL, 5, '2020-10-28 17:00', 0),
(NULL, 5, '2020-10-28 18:00', 0),
(NULL, 5, '2020-10-28 19:00', 0),
(NULL, 5, '2020-10-28 20:00', 0),
(NULL, 5, '2020-10-28 21:00', 0),
(NULL, 6, '2020-10-28 07:00', 0),
(NULL, 6, '2020-10-28 08:00', 0),
(NULL, 6, '2020-10-28 09:00', 0),
(2, 6, '2020-10-28 10:00', 0),
(NULL, 6, '2020-10-28 11:00', 0),
(NULL, 6, '2020-10-28 12:00', 0),
(4, 6, '2020-10-28 13:00', 0),
(NULL, 6, '2020-10-28 14:00', 0),
(NULL, 6, '2020-10-28 15:00', 0),
(NULL, 6, '2020-10-28 16:00', 0),
(7, 6, '2020-10-28 17:00', 0),
(NULL, 6, '2020-10-28 18:00', 0),
(NULL, 6, '2020-10-28 19:00', 0),
(NULL, 6, '2020-10-28 20:00', 0),
(NULL, 6, '2020-10-28 21:00', 0);

SET FOREIGN_KEY_CHECKS = 1;