CREATE DATABASE IF NOT EXISTS theater CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

USE theater;

CREATE TABLE users (
    id_users INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    email VARCHAR(50) NOT NULL,
    users_password VARCHAR(60) NOT NULL
) ENGINE = INNODB;

CREATE TABLE complexes (
    id_complexes INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL
) ENGINE = INNODB;

CREATE TABLE admins (
    id_admins INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    email VARCHAR(50) NOT NULL,
    admins_password VARCHAR(60) NOT NULL  
) ENGINE = INNODB;

CREATE TABLE movie (
    id_movie INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    title VARCHAR(50) NOT NULL,
    synopsis TEXT NOT NULL
) ENGINE = INNODB;

CREATE TABLE rate (
    id_rate INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    category VARCHAR(50) NOT NULL,
    price FLOAT NOT NULL
) ENGINE = INNODB;

CREATE TABLE movie_theater (
    id_movie_theater INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    number_of_the_movie_room INT NOT NULL,
    number_of_seat INT NOT NULL,
    id_movie INT NOT NULL,
    FOREIGN KEY (id_movie) REFERENCES movie (id_movie)
) ENGINE = INNODB;

CREATE TABLE reservation (
    id_reservation INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    number_of_seat INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
) ENGINE = INNODB;

CREATE TABLE admins_complexes (
    id_admins INT NOT NULL,
    FOREIGN KEY (id_admins) REFERENCES admins (id_admins),
    id_complexes INT NOT NULL,
    FOREIGN KEY (id_complexes) REFERENCES complexes (id_complexes)
) ENGINE = INNODB;

CREATE TABLE session (
    id_session INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    day DATE NOT NULL,
    schedule TIME NOT NULL,
    id_users INT NOT NULL,
    FOREIGN KEY (id_users) REFERENCES users (id_users),
    id_complexes INT NOT NULL,
    FOREIGN KEY (id_complexes) REFERENCES complexes (id_complexes),
    id_rate INT NOT NULL,
    FOREIGN KEY (id_rate) REFERENCES rate (id_rate)
) ENGINE = INNODB;

CREATE TABLE session_reservation (
    id_session INT NOT NULL,
    FOREIGN KEY (id_session) REFERENCES session (id_session),
    id_reservation INT NOT NULL,
    FOREIGN KEY (id_reservation) REFERENCES reservation (id_reservation)
) ENGINE = INNODB;

CREATE TABLE session_movie_theater (
    id_session INT NOT NULL,
    FOREIGN KEY (id_session) REFERENCES session (id_session),
    id_movie_theater INT NOT NULL,
    FOREIGN KEY (id_movie_theater) REFERENCES movie_theater (id_movie_theater)
) ENGINE = INNODB;

INSERT INTO rate (category, price) VALUES ('Plein Tarif', 9.20);
INSERT INTO rate (category, price) VALUES ('Étudiant', 7.60);
INSERT INTO rate (category, price) VALUES ('Moins de 14 ans', 5.90);

INSERT INTO users (email, users_password) VALUES ('gissard0@harvard.edu','$2y$10$42E.edBFNa5DnF1Jo4PFAekXP/awVNYDwE5.h219m2I7Ud8QrJjkq');
INSERT INTO users (email, users_password) VALUES ('ncrumb1@wisc.edu','$2y$10$30Lu8NBepzLRwBAbYDX20edv1zuXMgeDrDLcEXxLIqaNDbu.Tf8Iu'); 
INSERT INTO users (email, users_password) VALUES ('cromanin2@nature.com','$2y$10$bY.iyLaTtuMQTZOxkL9tEuLX8UCiUssQpSZXYLafEXUwqXgoWYzyO');
INSERT INTO users (email, users_password) VALUES ('fcumberpatch3@themeforest.net','$2y$10$dqkdCUuDxsdoMFOA3VoPKO6J8ekGeUFMo3r3/49mA0rO3jDGFWIsW');

INSERT INTO complexes (name, address) VALUES ('Thoughtbridge','24593 Tomscot Road');
INSERT INTO complexes (name, address) VALUES ('Pixope', '801 Scofield Way');
INSERT INTO complexes (name, address) VALUES ('Dazzlesphere','27792 Maywood Road');
INSERT INTO complexes (name, address) VALUES ('Quire', '68252 Esker Plaza');

INSERT INTO admins (email, admins_password) VALUES ('choyer0@facebook.com', '$2y$10$Uh38.Z6VwzcoATDQvLBrBevYrEXX3aRz/Ta9vAaS/lnMyPj0Et3ri');
INSERT INTO admins (email, admins_password) VALUES ('spenhall1@netlog.com', '$2y$10$cCXnEYzk4O1K/iK896fCO.lsxS18.Qc2GlYsZK1W68mvpjQXOLp/u');
INSERT INTO admins (email, admins_password) VALUES ('fscruton2@about.com', '$2y$10$WldmBh0chrIbs7yMItwNneW82jogNd0ULCTKN3k.W5c.nR8JjSKBW');
INSERT INTO admins (email, admins_password) VALUES ('kpapierz3@blogs.com', '$2y$10$I/FTiBhGwgAtGKLN2wz7sOIOX.lgVi3w3wS.lLNmIZPVE/tvszR1K');

INSERT INTO movie (title, synopsis) VALUES ('Good Lawyer''s Wife, A (Baramnan gajok)', 'Cysto & recto w grf/pros');
INSERT INTO movie (title, synopsis) VALUES ('Tadpole', 'Bact smear-eye');
INSERT INTO movie (title, synopsis) VALUES ('Pericles on 31st Street', 'Parathyroid biopsy');
INSERT INTO movie (title, synopsis) VALUES ('Great Race, The', 'Wound catheter irrigat');
INSERT INTO movie (title, synopsis) VALUES ('Kedma', 'Close reduc-femur epiphy');

INSERT INTO movie_theater (number_of_the_movie_room, number_of_seat, id_movie) VALUES (8, 100,1);
INSERT INTO movie_theater (number_of_the_movie_room, number_of_seat, id_movie) VALUES (7, 200,2);
INSERT INTO movie_theater (number_of_the_movie_room, number_of_seat, id_movie) VALUES (9, 230,3);
INSERT INTO movie_theater (number_of_the_movie_room, number_of_seat, id_movie) VALUES (5, 140,4);
INSERT INTO movie_theater (number_of_the_movie_room, number_of_seat, id_movie) VALUES (3, 250,5);

INSERT INTO reservation (number_of_seat, name, email) VALUES (1, 'Josiah Torn', 'jtorn0@youtu.be');
INSERT INTO reservation (number_of_seat, name, email) VALUES (2, 'Adrian Leishman', 'aleishman1@hud.gov');
INSERT INTO reservation (number_of_seat, name, email) VALUES (3, 'Lyle Beak', 'lbeak2@comcast.net');
INSERT INTO reservation (number_of_seat, name, email) VALUES (4, 'Kiley Cubbin', 'kcubbin3@blog.com');
INSERT INTO reservation (number_of_seat, name, email) VALUES (5, 'Thorndike Hollidge', 'thollidge4@a8.net');

INSERT INTO session (day, schedule, id_users, id_complexes, id_rate) VALUES ('2023-02-27', '9:15:00',1,1,1);
INSERT INTO session (day, schedule, id_users, id_complexes, id_rate) VALUES ('2023-02-23', '9:20:00',2,2,2);
INSERT INTO session (day, schedule, id_users, id_complexes, id_rate) VALUES ('2023-02-24', '9:25:00',3,3,3);

INSERT INTO admins_complexes (id_admins, id_complexes) VALUES (1,1);
INSERT INTO admins_complexes (id_admins, id_complexes) VALUES (2,2);
INSERT INTO admins_complexes (id_admins, id_complexes) VALUES (3,3);
INSERT INTO admins_complexes (id_admins, id_complexes) VALUES (4,4);

INSERT INTO session_movie_theater (id_session, id_movie_theater) VALUES (1,1);
INSERT INTO session_movie_theater (id_session, id_movie_theater) VALUES (2,2);
INSERT INTO session_movie_theater (id_session, id_movie_theater) VALUES (3,3);

INSERT INTO session_reservation (id_session, id_reservation) VALUES (1,1);
INSERT INTO session_reservation (id_session, id_reservation) VALUES (2,2);
INSERT INTO session_reservation (id_session, id_reservation) VALUES (3,3);

GRANT ALL PRIVILEGES ON theater.* TO 'choyer'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON theater.* TO 'spenhall'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON theater.* TO 'fscruton'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON theater.* TO 'kpapierz'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON theater.session TO 'gissard'@'localhost';
GRANT ALL PRIVILEGES ON theater.session TO 'ncrumb'@'localhost';
GRANT ALL PRIVILEGES ON theater.session TO 'cromanin'@'localhost';
GRANT ALL PRIVILEGES ON theater.session TO 'fcumberpatch'@'localhost';
FLUSH PRIVILEGES;