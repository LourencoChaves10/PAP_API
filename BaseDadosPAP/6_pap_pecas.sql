USE bd_pap_system;
CREATE TABLE pecas (
    id INT(11) AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    peso VARCHAR(50),
    tamanho VARCHAR(50),
    descricao VARCHAR(255),
    preco DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    PRIMARY KEY (id)
);