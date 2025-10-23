USE bd_pap_System;

CREATE TABLE IF NOT EXISTS users (
    id INT(11) AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    nif VARCHAR(20) UNIQUE,
    telemovel VARCHAR(20) UNIQUE,
    morada VARCHAR(255),
    ordenado DECIMAL(10,2),
    id_role INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_role) REFERENCES roles(id)
);