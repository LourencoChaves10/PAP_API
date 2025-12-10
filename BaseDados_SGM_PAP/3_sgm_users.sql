USE bd_sgm_system;

DROP TABLE IF EXISTS users;

CREATE TABLE users(
    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    id_role INT(11) UNSIGNED NOT NULL,
    nome VARCHAR(250) NOT NULL,
    nif INT(9) UNSIGNED NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    telemovel VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(250) NOT NULL UNIQUE,
    password VARCHAR(250) NOT NULL UNIQUE,
    PRIMARY KEY(id),
    FOREIGN KEY (id_role) REFERENCES roles(id)
);

--Inserir dados experimentais na tabela users

INSERT INTO users (id_role, nome, nif, data_nascimento, telemovel, email, password) VALUES
(1, 'Lourenço Chaves', 123456789, '2008-06-10', '912345678', 'admin@example.com', 'adminpassword');

SELECT * FROM users;