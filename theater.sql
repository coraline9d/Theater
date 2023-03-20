CREATE DATABASE IF NOT EXISTS theater CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

USE theater;

CREATE TABLE users (
    id_users CHAR(36) PRIMARY KEY NOT NULL,
    email VARCHAR(50) NOT NULL,
    users_password VARCHAR(60) NOT NULL
) ENGINE = INNODB;

CREATE TABLE complexes (
    id_complexes CHAR(36) PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL
) ENGINE = INNODB;

CREATE TABLE admins (
    id_admins CHAR(36) PRIMARY KEY NOT NULL,
    email VARCHAR(50) NOT NULL,
    admins_password VARCHAR(60) NOT NULL  
) ENGINE = INNODB;

CREATE TABLE movie (
    id_movie CHAR(36) PRIMARY KEY NOT NULL,
    title VARCHAR(50) NOT NULL,
    synopsis TEXT NOT NULL
) ENGINE = INNODB;

CREATE TABLE rate (
    id_rate CHAR(36) PRIMARY KEY NOT NULL,
    category VARCHAR(50) NOT NULL,
    price FLOAT NOT NULL
) ENGINE = INNODB;

CREATE TABLE movie_theater (
    id_movie_theater CHAR(36) PRIMARY KEY NOT NULL,
    number_of_the_movie_room INT NOT NULL,
    number_of_seat INT NOT NULL,
    id_movie CHAR(36) NOT NULL,
    FOREIGN KEY (id_movie) REFERENCES movie (id_movie)
) ENGINE = INNODB;

CREATE TABLE reservation (
    id_reservation CHAR(36) PRIMARY KEY NOT NULL,
    number_of_seat INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
) ENGINE = INNODB;

CREATE TABLE admins_complexes (
    id_admins CHAR(36) NOT NULL,
    FOREIGN KEY (id_admins) REFERENCES admins (id_admins),
    id_complexes CHAR(36) NOT NULL,
    FOREIGN KEY (id_complexes) REFERENCES complexes (id_complexes)
) ENGINE = INNODB;

CREATE TABLE session (
    id_session CHAR(36) PRIMARY KEY NOT NULL,
    day DATE NOT NULL,
    schedule TIME NOT NULL,
    id_users CHAR(36) NOT NULL,
    FOREIGN KEY (id_users) REFERENCES users (id_users),
    id_complexes CHAR(36) NOT NULL,
    FOREIGN KEY (id_complexes) REFERENCES complexes (id_complexes),
    id_rate CHAR(36) NOT NULL,
    FOREIGN KEY (id_rate) REFERENCES rate (id_rate),
    id_reservation CHAR(36) NOT NULL,
    FOREIGN KEY (id_reservation) REFERENCES reservation (id_reservation)
) ENGINE = INNODB;

CREATE TABLE session_movie_theater (
    id_session CHAR(36) NOT NULL,
    FOREIGN KEY (id_session) REFERENCES session (id_session),
    id_movie_theater CHAR(36) NOT NULL,
    FOREIGN KEY (id_movie_theater) REFERENCES movie_theater (id_movie_theater)
) ENGINE = INNODB;

INSERT INTO rate (id_rate, category, price) VALUES (UUID(), 'Plein Tarif', 9.20);
INSERT INTO rate (id_rate, category, price) VALUES (UUID(), 'Étudiant', 7.60);
INSERT INTO rate (id_rate, category, price) VALUES (UUID(), 'Moins de 14 ans', 5.90);

INSERT INTO users (id_users, email, users_password) VALUES (UUID(), 'gissard0@harvard.edu','$2y$10$42E.edBFNa5DnF1Jo4PFAekXP/awVNYDwE5.h219m2I7Ud8QrJjkq');
INSERT INTO users (id_users, email, users_password) VALUES (UUID(), 'ncrumb1@wisc.edu','$2y$10$30Lu8NBepzLRwBAbYDX20edv1zuXMgeDrDLcEXxLIqaNDbu.Tf8Iu'); 
INSERT INTO users (id_users, email, users_password) VALUES (UUID(), 'cromanin2@nature.com','$2y$10$bY.iyLaTtuMQTZOxkL9tEuLX8UCiUssQpSZXYLafEXUwqXgoWYzyO');
INSERT INTO users (id_users, email, users_password) VALUES (UUID(), 'fcumberpatch3@themeforest.net','$2y$10$dqkdCUuDxsdoMFOA3VoPKO6J8ekGeUFMo3r3/49mA0rO3jDGFWIsW');

INSERT INTO complexes (id_complexes, name, address) VALUES (UUID(), 'Thoughtbridge','24593 Tomscot Road');
INSERT INTO complexes (id_complexes, name, address) VALUES (UUID(), 'Pixope', '801 Scofield Way');
INSERT INTO complexes (id_complexes, name, address) VALUES (UUID(), 'Dazzlesphere','27792 Maywood Road');
INSERT INTO complexes (id_complexes, name, address) VALUES (UUID(), 'Quire', '68252 Esker Plaza');

INSERT INTO admins (id_admins, email, admins_password) VALUES (UUID(), 'choyer0@facebook.com', '$2y$10$Uh38.Z6VwzcoATDQvLBrBevYrEXX3aRz/Ta9vAaS/lnMyPj0Et3ri');
INSERT INTO admins (id_admins, email, admins_password) VALUES (UUID(), 'spenhall1@netlog.com', '$2y$10$cCXnEYzk4O1K/iK896fCO.lsxS18.Qc2GlYsZK1W68mvpjQXOLp/u');
INSERT INTO admins (id_admins, email, admins_password) VALUES (UUID(), 'fscruton2@about.com', '$2y$10$WldmBh0chrIbs7yMItwNneW82jogNd0ULCTKN3k.W5c.nR8JjSKBW');
INSERT INTO admins (id_admins, email, admins_password) VALUES (UUID(), 'kpapierz3@blogs.com', '$2y$10$I/FTiBhGwgAtGKLN2wz7sOIOX.lgVi3w3wS.lLNmIZPVE/tvszR1K');

INSERT INTO movie (id_movie, title, synopsis) VALUES (UUID(), 'Good Lawyer''s Wife, A (Baramnan gajok)', 'Cysto & recto w grf/pros');
INSERT INTO movie (id_movie, title, synopsis) VALUES (UUID(), 'Tadpole', 'Bact smear-eye');
INSERT INTO movie (id_movie, title, synopsis) VALUES (UUID(), 'Pericles on 31st Street', 'Parathyroid biopsy');
INSERT INTO movie (id_movie, title, synopsis) VALUES (UUID(), 'Great Race, The', 'Wound catheter irrigat');
INSERT INTO movie (id_movie, title, synopsis) VALUES (UUID(), 'Kedma', 'Close reduc-femur epiphy');

INSERT INTO movie_theater (id_movie_theater, number_of_the_movie_room, number_of_seat) VALUES (UUID(), 8, 100);
INSERT INTO movie_theater (id_movie_theater, number_of_the_movie_room, number_of_seat) VALUES (UUID(), 7, 200);
INSERT INTO movie_theater (id_movie_theater, number_of_the_movie_room, number_of_seat) VALUES (UUID(), 9, 230);
INSERT INTO movie_theater (id_movie_theater, number_of_the_movie_room, number_of_seat) VALUES (UUID(), 5, 140);
INSERT INTO movie_theater (id_movie_theater, number_of_the_movie_room, number_of_seat) VALUES (UUID(), 3, 250);

INSERT INTO reservation (id_reservation, number_of_seat, name, email) VALUES (UUID(), 1, 'Josiah Torn', 'jtorn0@youtu.be');
INSERT INTO reservation (id_reservation, number_of_seat, name, email) VALUES (UUID(), 2, 'Adrian Leishman', 'aleishman1@hud.gov');
INSERT INTO reservation (id_reservation, number_of_seat, name, email) VALUES (UUID(), 3, 'Lyle Beak', 'lbeak2@comcast.net');
INSERT INTO reservation (id_reservation, number_of_seat, name, email) VALUES (UUID(), 4, 'Kiley Cubbin', 'kcubbin3@blog.com');
INSERT INTO reservation (id_reservation, number_of_seat, name, email) VALUES (UUID(), 5, 'Thorndike Hollidge', 'thollidge4@a8.net');

INSERT INTO session (id_session, day, schedule) VALUES (UUID(), '2023-02-27', '9:15:00');
INSERT INTO session (id_session, day, schedule) VALUES (UUID(), '2023-02-23', '9:20:00');
INSERT INTO session (id_session, day, schedule) VALUES (UUID(), '2023-02-24', '9:25:00');

GRANT ALL PRIVILEGES ON theater.* TO 'choyer'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON theater.* TO 'spenhall'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON theater.* TO 'fscruton'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON theater.* TO 'kpapierz'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON theater.session TO 'gissard'@'localhost';
GRANT ALL PRIVILEGES ON theater.session TO 'ncrumb'@'localhost';
GRANT ALL PRIVILEGES ON theater.session TO 'cromanin'@'localhost';
GRANT ALL PRIVILEGES ON theater.session TO 'fcumberpatch'@'localhost';
FLUSH PRIVILEGES;