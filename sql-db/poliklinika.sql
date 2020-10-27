DROP DATABASE IF EXISTS poliklinika;

CREATE DATABASE poliklinika CHARACTER SET utf8 COLLATE utf8_general_ci;

USE poliklinika;

CREATE TABLE pacientai (
    id int unsigned auto_increment primary key,
    vardas varchar(100) NOT NULL,
    pavarde varchar(100) NOT NULL
);

insert into pacientai (vardas, pavarde) values ('Bronius', 'Steponavicius'), ('Kazys', 'Binkis'),
('Ponas', 'Bynas'), ('Vadimas', 'Tiek to'), ('Juozapas', 'Banys'),
('Andrius', 'Klemavicius');


CREATE TABLE gydytojai (
    id int unsigned auto_increment primary key,
    vardas varchar(100) NOT NULL,
    pavarde varchar(100) NOT NULL
);

insert into gydytojai (vardas, pavarde) values ('Ai', 'Skauda'), ('Didele', 'Adata'),
('Juozas', 'Mesininkas'), ('Vladas', 'Ukolas'), ('Marius', 'Baltašvarkis'),
('Audronius', 'Receptas');

CREATE TABLE vizitai (
    id int unsigned auto_increment primary key,
    paciento_id int unsigned,
    gydytojo_id int unsigned,
    vizito_data DATETIME NOT NULL,
    FOREIGN KEY (paciento_id) REFERENCES pacientai(id),
    FOREIGN KEY (gydytojo_id) REFERENCES gydytojai(id)
);

insert into vizitai (paciento_id, gydytojo_id, vizito_data) values 
(4, 3, '2010-04-30 14:53:27'),
(1, 2, '2010-05-30 14:53:27'),
(2, 5, '2010-04-25 14:53:27'),
(3, 4, '2010-01-30 14:53:27'),
(5, 6, '2010-08-30 14:53:27'),
(6, 1, '2010-08-27 14:53:27'),
(3, 5, '2010-09-05 14:53:27'),
(6, 5, '2010-10-01 14:53:27'),
(5, 1, '2010-03-02 14:53:27'),
(3, 2, '2010-03-15 14:53:27'),
(2, 2, '2010-04-10 14:53:27');