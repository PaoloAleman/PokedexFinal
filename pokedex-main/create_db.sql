DROP SCHEMA IF EXISTS pokedex;
CREATE SCHEMA pokedex;

USE pokedex;

CREATE TABLE Type(
    id INT PRIMARY KEY,
    description VARCHAR(30) NOT NULL
);

CREATE TABLE Pokemon(
    idBd INT AUTO_INCREMENT PRIMARY KEY,
    uid INT NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    url_img VARCHAR(50) NOT NULL,
    description VARCHAR(200) NOT NULL,
    idType INT NOT NULL,
    FOREIGN KEY (idType) REFERENCES Type(id)
);

CREATE TABLE User(
    id INT PRIMARY KEY,
    user VARCHAR(30) NOT NULL,
    password VARCHAR(30) NOT NULL
);

INSERT INTO Type VALUES (1, "AGUA");
INSERT INTO Type VALUES (2, "TIERRA");
INSERT INTO Type VALUES (3, "FUEGO");
INSERT INTO Type VALUES (4, "AIRE");

INSERT INTO User VALUES (1, "admin", "12345678");

# FUEGO
INSERT INTO Pokemon (uid, name, url_img, description, idType)
VALUES (1, "Charizard", "img/charizard.png", "pokemon de fuego", 3);

INSERT INTO Pokemon (uid, name, url_img, description, idType)
VALUES (2, "Torchic", "img/torchic.png", "pokemon de fuego", 3);

INSERT INTO Pokemon (uid, name, url_img, description, idType)
VALUES (3, "Infernape", "img/infernape.png", "pokemon de fuego", 3);

    # AGUA

INSERT INTO Pokemon (uid, name, url_img, description, idType)
VALUES (4, "Vaporeon", "img/vaporeon.png", "pokemon de agua", 1);

INSERT INTO Pokemon (uid, name, url_img, description, idType)
VALUES (5, "Squirtle", "img/squirtle.png", "vamo a calmarno", 1);

INSERT INTO Pokemon (uid, name, url_img, description, idType)
VALUES (6, "Psyduck", "img/psyduck.png", "pokemon de agua", 1);

# TIERRA
INSERT INTO Pokemon (uid, name, url_img, description, idType)
VALUES (7, "Diglett", "img/diglett.png", "pokemon de tierra", 2);

INSERT INTO Pokemon (uid, name, url_img, description, idType)
VALUES (8, "Cubone", "img/cubone.png", "pokemon de tierra", 2);

INSERT INTO Pokemon (uid, name, url_img, description, idType)
VALUES (9, "Mudbray", "img/mudbray.png", "pokemon de tierra", 2);

# AIRE

INSERT INTO Pokemon (uid, name, url_img, description, idType)
VALUES (10, "Tornadus", "img/tornadus.png", "pokemon de aire", 4);

INSERT INTO Pokemon (uid, name, url_img, description, idType)
VALUES (11, "Rookidee", "img/rookidee.png", "pokemon de aire", 4);

INSERT INTO Pokemon (uid, name, url_img, description, idType)
VALUES (12, "Corvisquire", "img/corvisquire.png", "pokemon de aire", 4);