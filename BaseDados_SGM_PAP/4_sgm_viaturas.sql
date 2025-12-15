USE bd_sgm_system;

DROP TABLE IF EXISTS viaturas;

CREATE TABLE viaturas(
    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    id_user INT(11) UNSIGNED NOT NULL,
    tipo VARCHAR(250) NOT NULL,
    marca VARCHAR(250) NOT NULL,
    modelo VARCHAR(250) NOT NULL,
    cor VARCHAR(250) NOT NULL,
    combustivel VARCHAR(250) NOT NULL,
    ano_fabrico YEAR NOT NULL,
    vin VARCHAR(17) NOT NULL UNIQUE,
    num_motor VARCHAR(50) NOT NULL UNIQUE,
    matricula VARCHAR(8) NOT NULL UNIQUE,
    PRIMARY KEY(id),
    FOREIGN KEY (id_user) REFERENCES users(id)
);

--Inserir dados experimentais na tabela viaturas

INSERT INTO viaturas (id_user, tipo, marca, modelo, cor, combustivel, ano_fabrico, vin, num_motor, matricula) VALUES
(2, 'Sedan', 'Toyota', 'Corolla', 'Prata', 'Gasolina', 2018, 'JTDBR32E720123456', '1ZZFE1234567', '12-AB-34');
