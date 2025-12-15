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
('Admin', 'Administrador do sistema com permissões totais'),
('Cliente', 'User que só tem permissões para verificar os seus dados e das suas viaturas e verificar o estado do serviço pedido'),
('Secretário/a', 'User que tem permissões para gerir os pedidos de serviço dos clientes e os dados das suas viaturas'),
('Mecânico/a', 'User que tem permissões para gerir os serviços pedidos pelos clientes e atualizar o estado dos mesmos e pedir peças ao stock'),
('Funcionário/a', 'User que tem permissões para receber pedidos de peças e gerir o stock das mesmas');


SELECT * FROM roles;