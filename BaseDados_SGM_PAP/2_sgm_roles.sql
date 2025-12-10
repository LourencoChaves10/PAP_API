USE bd_sgm_system;

DROP TABLE IF EXISTS roles;

CREATE TABLE roles(
    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    descricao_role VARCHAR(250) NOT NULL,
    PRIMARY KEY(id)
);

--Inserir dados experimentais na tabela roles

INSERT INTO roles (nome, descricao_role) VALUES
('Admin', 'Administrador do sistema com permissões totais');