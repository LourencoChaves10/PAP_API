USE bd_pap_System;
DROP TABLE IF EXISTS funcionarios;
CREATE TABLE funcionarios (
    id INT(11) NOT NULL AUTO_INCREMENT,
    num_funcionario INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telemovel VARCHAR(15) NOT NULL,
    data_nascimento DATE NOT NULL,
    funcao VARCHAR(100) NOT NULL, --Secratario, Mecanico ou armazem
    salario DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (id)
);