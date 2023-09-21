CREATE DATABASE IF NOT EXISTS academico;

use academico;

CREATE TABLE IF NOT EXISTS alunos (
    ra INT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    endereco VARCHAR(255),
    periodo VARCHAR(50),
    datanascimento DATE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    login VARCHAR(255),
    senha INT
) ENGINE=InnoDB;


use academico;
INSERT INTO usuarios (login,senha) VALUES ('cadu@javaschool', '112233');
INSERT INTO usuarios (login,senha) VALUES ('felipe@javaschool', '4321');
INSERT INTO usuarios (login,senha) VALUES ('matheus@javaschool', '032004');
INSERT INTO usuarios (login,senha) VALUES ('renan@javaschool', '1234');
INSERT INTO usuarios (login,senha) VALUES ('rodrigo@javaschool', '72998');

INSERT INTO alunos (ra, nome, email, endereco, periodo, datanascimento)
VALUES
    ('12456629', 'João Silva', 'joao.silva@example.com', 'Rua A, 123', 'Manhã', '1999-05-15'),
    ('56648720', 'Maria Santos', 'maria.santos@example.com', 'Avenida B, 456', 'Tarde', '2000-02-28'),
    ('36598367', 'Pedro Almeida', 'pedro.almeida@example.com', 'Rua C, 789', 'Noite', '1998-08-10'),
    ('25401976', 'Ana Oliveira', 'ana.oliveira@example.com', 'Rua D, 567', 'Manhã', '1999-11-22'),
    ('26935410', 'Carlos Pereira', 'carlos.pereira@example.com', 'Avenida E, 321', 'Tarde', '2000-07-03'),
    ('29736982', 'Mariana Costa', 'mariana.costa@example.com', 'Avenida F, 234', 'Noite', '1999-03-17'),
    ('98756013', 'José Fernandes', 'jose.fernandes@example.com', 'Rua G, 876', 'Manhã', '2000-01-05'),
    ('29863574', 'Sofia Rodrigues', 'sofia.rodrigues@example.com', 'Rua H, 432', 'Tarde', '1998-12-12'),
    ('98760113', 'Lucas Gomes', 'lucas.gomes@example.com', 'Avenida I, 654', 'Noite', '1999-09-30'),
    ('11298874', 'Larissa Sousa', 'larissa.sousa@example.com', 'Rua J, 987', 'Manhã', '1998-04-20'),
    ('98765432', 'Paula Ferreira', 'paula.ferreira@example.com', 'Rua P, 123', 'Noite', '1998-11-20'),
    ('54321098', 'Fernando Santos', 'fernando.santos@example.com', 'Avenida Q, 456', 'Manhã', '1999-09-05'),
    ('87654321', 'Isabella Lima', 'isabella.lima@example.com', 'Rua R, 789', 'Tarde', '2000-07-18'),
    ('32109876', 'Gustavo Costa', 'gustavo.costa@example.com', 'Avenida S, 654', 'Noite', '1998-02-14'),
    ('23456789', 'Viviane Silva', 'viviane.silva@example.com', 'Rua T, 321', 'Manhã', '1999-06-30'),
    ('78901234', 'Leonardo Oliveira', 'leonardo.oliveira@example.com', 'Avenida U, 987', 'Tarde','2000-04-12'),
    ('45678901', 'Carla Sousa', 'carla.sousa@example.com', 'Rua V, 567', 'Noite', '1998-12-25'),
    ('87654321', 'Renato Pereira', 'renato.pereira@example.com', 'Avenida W, 432', 'Manhã', '1999-03-08'),
    ('54321098', 'Lívia Rodrigues', 'livia.rodrigues@example.com', 'Rua X, 123', 'Tarde', '2000-01-19'),
    ('98765432', 'Marcos Silva', 'marcos.silva@example.com', 'Avenida Y, 456', 'Noite', '1999-10-02');
