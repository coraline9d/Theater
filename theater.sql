CREATE DATABASE IF NOT EXISTS theater CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

USE theater;

CREATE TABLE users (
 id CHAR(36) PRIMARY KEY NOT NULL,
 email VARCHAR(50) NOT NULL,
 password VARCHAR(60) NOT NULL
) ENGINE = INNODB;

CREATE TABLE complexes (
 id CHAR(36) PRIMARY KEY NOT NULL,
 name VARCHAR(50) NOT NULL,
 address VARCHAR(50) NOT NULL
) ENGINE = INNODB;

CREATE TABLE admins (
 id CHAR(36) PRIMARY KEY NOT NULL,
 email VARCHAR(50) NOT NULL,
 password VARCHAR(60) NOT NULL 
) ENGINE = INNODB;

CREATE TABLE movie (
 id CHAR(36) PRIMARY KEY NOT NULL,
 title VARCHAR(50) NOT NULL,
 synopsis TEXT NOT NULL
) ENGINE = INNODB;

CREATE TABLE rate (
 id CHAR(36) PRIMARY KEY NOT NULL,
 category VARCHAR(50) NOT NULL,
 price FLOAT NOT NULL
) ENGINE = INNODB;

CREATE TABLE movie_theater (
 id CHAR(36) PRIMARY KEY NOT NULL,
 number_of_the_movie_room INT NOT NULL,
 number_of_seat INT NOT NULL,
 id_movie CHAR(36) NOT NULL,
 FOREIGN KEY (id_movie) REFERENCES movie (id)
) ENGINE = INNODB;

CREATE TABLE reservation (
 id CHAR(36) PRIMARY KEY NOT NULL,
 number_of_seat INT NOT NULL,
 name VARCHAR(50) NOT NULL,
 email VARCHAR(50) NOT NULL
) ENGINE = INNODB;

CREATE TABLE admins_complexes (
 id_admins CHAR(36) NOT NULL,
 FOREIGN KEY (id_admins) REFERENCES admins (id),
 id_complexes CHAR(36) NOT NULL,
 FOREIGN KEY (id_complexes) REFERENCES complexes (id)
) ENGINE = INNODB;

CREATE TABLE session (
 id CHAR(36) PRIMARY KEY NOT NULL,
 day DATE NOT NULL,
 schedule TIME NOT NULL,
 id_users CHAR(36) NOT NULL,
 FOREIGN KEY (id_users) REFERENCES users (id),
 id_complexes CHAR(36) NOT NULL,
 FOREIGN KEY (id_complexes) REFERENCES complexes (id),
 id_rate CHAR(36) NOT NULL,
 FOREIGN KEY (id_rate) REFERENCES rate (id),
 id_reservation CHAR(36) NOT NULL,
 FOREIGN KEY (id_reservation) REFERENCES reservation (id)
) ENGINE = INNODB;

CREATE TABLE session_movie_theater (
 id_session CHAR(36) NOT NULL,
 FOREIGN KEY (id_session) REFERENCES session (id),
 id_movie_theater CHAR(36) NOT NULL,
 FOREIGN KEY (id_movie_theater) REFERENCES movie_theater (id)
) ENGINE = INNODB;

-- Inserting data into rate table
INSERT INTO rate (id, category, price) VALUES (UUID(), 'Plein Tarif', 9.20);
INSERT INTO rate (id, category, price) VALUES (UUID(), 'Étudiant', 7.60);
INSERT INTO rate (id, category, price) VALUES (UUID(), 'Moins de 14 ans', 5.90);

-- Inserting data into users table
INSERT INTO users (id, email, password) VALUES (UUID(), 'gissard0@harvard.edu','$2y$10$42E.edBFNa5DnF1Jo4PFAekXP/awVNYDwE5.h219m2I7Ud8QrJjkq');
INSERT INTO users (id, email, password) VALUES (UUID(), 'ncrumb1@wisc.edu','$2y$10$30Lu8NBepzLRwBAbYDX20edv1zuXMgeDrDLcEXxLIqaNDbu.Tf8Iu'); 
INSERT INTO users (id, email, password) VALUES (UUID(), 'cromanin2@nature.com','$2y$10$bY.iyLaTtuMQTZOxkL9tEuLX8UCiUssQpSZXYLafEXUwqXgoWYzyO');
INSERT INTO users (id, email, password) VALUES (UUID(), 'fcumberpatch3@themeforest.net','$2y$10$dqkdCUuDxsdoMFOA3VoPKO6J8ekGeUFMo3r3/49mA0rO3jDGFWIsW');

-- Inserting data into complexes table
INSERT INTO complexes (id, name, address) VALUES (UUID(), 'Thoughtbridge','24593 Tomscot Road');
INSERT INTO complexes (id, name, address) VALUES (UUID(), 'Pixope', '801 Scofield Way');
INSERT INTO complexes (id, name, address) VALUES (UUID(), 'Dazzlesphere','27792 Maywood Road');
INSERT INTO complexes (id, name, address) VALUES (UUID(), 'Quire', '68252 Esker Plaza');

-- Inserting data into admins table
INSERT INTO admins (id, email, password) VALUES (UUID(), 'choyer0@facebook.com', '$2y$10$Uh38.Z6VwzcoATDQvLBrBevYrEXX3aRz/Ta9vAaS/lnMyPj0Et3ri');
INSERT INTO admins (id, email, password) VALUES (UUID(), 'spenhall1@netlog.com', '$2y$10$cCXnEYzk4O1K/iK896fCO.lsxS18.Qc2GlYsZK1W68mvpjQXOLp/u');
INSERT INTO admins (id, email, password) VALUES (UUID(), 'fscruton2@about.com', '$2y$10$WldmBh0chrIbs7yMItwNneW82jogNd0ULCTKN3k.W5c.nR8JjSKBW');
INSERT INTO admins (id, email, password) VALUES (UUID(), 'kpapierz3@blogs.com', '$2y$10$I/FTiBhGwgAtGKLN2wz7sOIOX.lgVi3w3wS.lLNmIZPVE/tvszR1K');

-- Inserting data into movie table
INSERT INTO movie (id, title, synopsis) VALUES (UUID(), 'Good Lawyer''s Wife, A (Baramnan gajok)', 'Cysto & recto w grf/pros');
INSERT INTO movie (id, title, synopsis) VALUES (UUID(), 'Tadpole', 'Bact smear-eye');
INSERT INTO movie (id, title, synopsis) VALUES (UUID(), 'Pericles on 31st Street', 'Parathyroid biopsy');
INSERT INTO movie (id, title, synopsis) VALUES (UUID(), 'Great Race, The', 'Wound catheter irrigat');
INSERT INTO movie (id, title, synopsis) VALUES (UUID(), 'Kedma', 'Close reduc-femur epiphy');

-- Inserting data into movie_theater table using INSERT ... SELECT
INSERT INTO movie_theater (id, number_of_the_movie_room, number_of_seat, id_movie)
SELECT UUID(), 8, 100, id FROM movie WHERE title = 'Good Lawyer''s Wife, A (Baramnan gajok)';
INSERT INTO movie_theater (id, number_of_the_movie_room, number_of_seat, id_movie)
SELECT UUID(), 7, 200, id FROM movie WHERE title = 'Tadpole';
INSERT INTO movie_theater (id, number_of_the_movie_room, number_of_seat, id_movie)
SELECT UUID(), 9, 230,id FROM movie WHERE title = 'Pericles on 31st Street';
INSERT INTO movie_theater (id,number_of_the_movie_room,number_of_seat,id_movie)
SELECT UUID(),5 ,140,id FROM movie WHERE title = 'Great Race The';
INSERT INTO movie_theater(id,number_of_the_movie_room,number_of_seat,id_movie)
SELECT UUID(),3 ,250,id FROM movie WHERE title = 'Kedma';

-- Inserting data into reservation table
INSERT INTO reservation (id,number_of_seat,name,email) VALUES(UUID(),1,'Josiah Torn','jtorn0@youtu.be');
INSERT INTO reservation(id,number_of_seat,name,email)VALUES(UUID(),2,'Adrian Leishman','aleishman1@hud.gov');
INSERT INTO reservation(id,number_of_seat,name,email)VALUES(UUID(),3,'Lyle Beak','lbeak2@comcast.net');
INSERT INTO reservation(id,number_of_seat,name,email)VALUES(UUID(),4,'Kiley Cubbin','kcubbin3@blog.com');
INSERT INTO reservation(id,number_of_seat,name,email)VALUES(UUID(),5,'Thorndike Hollidge','thollidge4@a8.net');

-- Inserting data into session table using INSERT ... SELECT
INSERT INTO session(id, day, schedule, id_users, id_complexes, id_rate, id_reservation)
SELECT UUID(), '2023-02-27', '9:15:00', users.id, complexes.id, rate.id, reservation.id
FROM users, complexes, rate, reservation
WHERE users.email = 'gissard0@harvard.edu' AND complexes.name = 'Thoughtbridge' AND rate.category = 'Plein Tarif' AND reservation.name = 'Josiah Torn';

INSERT INTO session(id, day, schedule, id_users, id_complexes, id_rate, id_reservation)
SELECT UUID(), '2023-02-23', '9:20:00', users.id, complexes.id, rate.id, reservation.id
FROM users, complexes, rate,reservation
WHERE users.email = 'ncrumb1@wisc.edu' AND complexes.name = 'Pixope' AND rate.category = 'Étudiant' AND reservation.name = 'Adrian Leishman';

INSERT INTO session(id, day,schedule,id_users,id_complexes,id_rate,id_reservation)
SELECT UUID(),'2023-02-24','9:25:00',users.id ,complexes.id ,rate.id ,reservation.id 
FROM users ,complexes ,rate ,reservation 
WHERE users.email = 'cromanin2@nature.com' AND complexes.name = 'Dazzlesphere' AND rate.category = 'Moins de 14 ans' AND reservation.name = 'Lyle Beak';

-- Inserting data into admins_complexes table using INSERT ... SELECT
INSERT INTO admins_complexes (id_admins, id_complexes)
SELECT admins.id, complexes.id FROM admins, complexes
WHERE admins.email = 'choyer0@facebook.com' AND complexes.name = 'Thoughtbridge';

INSERT INTO admins_complexes (id_admins, id_complexes)
SELECT admins.id, complexes.id FROM admins, complexes
WHERE admins.email = 'spenhall1@netlog.com' AND complexes.name = 'Pixope';

-- Inserting data into session_movie_theater table using INSERT ... SELECT
INSERT INTO session_movie_theater (id_session, id_movie_theater)
SELECT session.id, movie_theater.id FROM session, movie_theater
WHERE session.day = '2023-02-27' AND movie_theater.number_of_the_movie_room = 8;

INSERT INTO session_movie_theater (id_session, id_movie_theater)
SELECT session.id, movie_theater.id FROM session, movie_theater
WHERE session.day = '2023-02-23' AND movie_theater.number_of_the_movie_room = 7;

-- Granting privileges
GRANT ALL PRIVILEGES ON theater.* TO 'choyer'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON theater.* TO 'spenhall'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON theater.* TO 'fscruton'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON theater.* TO 'kpapierz'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON theater.session TO 'gissard'@'localhost';
GRANT ALL PRIVILEGES ON theater.session TO 'ncrumb'@'localhost';
GRANT ALL PRIVILEGES ON theater.session TO 'cromanin'@'localhost';
GRANT ALL PRIVILEGES ON theater.session TO 'fcumberpatch'@'localhost';
FLUSH PRIVILEGES;
