USE bd_sgm_system;

DROP TABLE IF EXISTS users;

CREATE TABLE users(
    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    id_role INT(11) UNSIGNED NOT NULL,
    nome VARCHAR(250) NOT NULL,
    nif CHAR(9) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    telemovel VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(250) NOT NULL UNIQUE,
    password VARCHAR(250) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (id_role) REFERENCES roles(id)
);

--Inserir dados experimentais na tabela users

INSERT INTO users (id_role, nome, nif, data_nascimento, telemovel, email, password) VALUES
(1, 'João Pereira', 123456789, '1990-01-15', '919876543', 'joaopereira30@gmail.com', '#JoãoPereira10#');

INSERT INTO users (id_role, nome, nif, data_nascimento, telemovel, email, password) VALUES
(2, 'Ana Silva', 987654321, '1995-04-22', '912345678', 'anasilva30@gmail.com', '#AnaSilva10#');

INSERT INTO users (id_role, nome, nif, data_nascimento, telemovel, email, password) VALUES
(3, 'Carlos Santos', 456789123, '1988-11-05', '913579246', 'carlossantos30@gmail.com', '#CarlosSantos10#');

INSERT INTO users (id_role, nome, nif, data_nascimento, telemovel, email, password) VALUES
(4, 'Mariana Costa', 321654987, '1992-07-19', '914682357', 'marianacosta30@gmail.com', '#MarianaCosta10#');

INSERT INTO users (id_role, nome, nif, data_nascimento, telemovel, email, password) VALUES
(5, 'Pedro Oliveira', 654987321, '1985-03-30', '915793468', 'pedrooliveira30@gmail.com', '#PedroOliveira10#');


SELECT * FROM users;