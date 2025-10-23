USE bd_pap_System;

CREATE TABLE viaturas (
    id INT(11) AUTO_INCREMENT,
    id_user INT(11) NOT NULL,
    matricula VARCHAR(20) NOT NULL UNIQUE,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    data_fabricacao DATE,
    PRIMARY KEY (id),
    FOREIGN KEY (id_user) REFERENCES users(id)
);