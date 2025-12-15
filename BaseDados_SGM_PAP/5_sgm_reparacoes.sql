USE bg_sgm_system;

DROP TABLE IF EXISTS reparacoes;

CREATE TABLE reparacoes(
    id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    id_viatura INT(11) UNSIGNED NOT NULL,
    id_mecanico INT(11) UNSIGNED NOT NULL,
    descricao VARCHAR(250) NOT NULL,
    data_reparacao DATE NOT NULL,
    custo DECIMAL(10,2) NOT NULL,
    estado ENUM('Pendente', 'Em Progresso', 'Concluído') NOT NULL DEFAULT 'Pendente',
    PRIMARY KEY(id),
    FOREIGN KEY (id_viatura) REFERENCES viaturas(id),
    FOREIGN KEY (id_mecanico) REFERENCES users(id)
);