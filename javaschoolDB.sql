CREATE DATABASE academico;

use academico;
CREATE TABLE alunos (
    ra INT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    endereco VARCHAR(255),
    periodo VARCHAR(50),
    datanascimento DATE
);
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    login VARCHAR(255),
    senha INT
);
select * FROM usuarios;

TRUNCATE usuarios;
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
    ('11298874', 'Larissa Sousa', 'larissa.sousa@example.com', 'Rua J, 987', 'Manhã', '1998-04-20');