USE bd_pap_System;

CREATE TABLE IF NOT EXISTS roles (
    id INT(11) AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL UNIQUE,
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);