USE bd_pap_system;

CREATE TABLE IF NOT EXISTS roles (
    id INT(11) AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL UNIQUE,
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);INSERT INTO roles (
nome, 
descricao
)
 VALUES('admin', 'Administrador do sistema.'),
('Recepcionista', 'Responsável pelo atendimento aos clientes e gestão de marcação.'),
('Mecânico', 'Responsável pela manutenção e reparação dos veículos.'),
('Gestor de peças', 'Responsável pela gestão do inventário de peças.'),
('Cliente', 'Utilizador que utiliza os serviços da oficina.');