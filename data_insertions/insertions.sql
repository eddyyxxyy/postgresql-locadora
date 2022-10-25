-- Atores
INSERT INTO "atores" (nome) VALUES ('Brad Pit');
INSERT INTO "atores" (nome) VALUES ('Elijah Wood');
INSERT INTO "atores" (nome) VALUES ('Ryan Grosling');


-- Gêneros
INSERT INTO "generos" (genero) VALUES ('Comédia');
INSERT INTO "generos" (genero) VALUES ('Fantasia');
INSERT INTO "generos" (genero) VALUES ('Drama');


-- Filmes
INSERT INTO "filmes" (titulo, id_genero, valor) VALUES ('Tomb Raider', '2', '8.99');
INSERT INTO "filmes" (titulo, id_genero, valor) VALUES ('Cidade Perdida', '1', '6.99');
INSERT INTO "filmes" (titulo, id_genero, valor) VALUES ('Manchester à Beira Mar', '3', '11.99');


-- DVDs
INSERT INTO "dvds" (id_filme, quantidade) VALUES ('1', '1');
INSERT INTO "dvds" (id_filme, quantidade) VALUES ('2', '1');
INSERT INTO "dvds" (id_filme, quantidade) VALUES ('3', '2');


-- Clientes
INSERT INTO "clientes" (nome, sobrenome, telefone, endereco)
    VALUES ('Edson', 'Pimenta', '16 98765-4321', 'Franca - SP');
INSERT INTO "clientes" (nome, sobrenome, telefone, endereco)
    VALUES ('Silvana', 'Miranda', '16 99123-4353', 'Franca - SP');
INSERT INTO "clientes" (nome, sobrenome, telefone, endereco)
    VALUES ('Helena', 'Souza', '16 99998-8766', 'Cristais Paulista - SP');


-- Alugados
INSERT INTO "alugados" (data, id_cliente) VALUES ('2022-10-22', '1');
INSERT INTO "alugados" (data, id_cliente) VALUES ('2022-10-12', '2');
INSERT INTO "alugados" (data, id_cliente) VALUES ('2022-10-25', '3');


-- Atores_Filme
INSERT INTO "atores_filme" (id_filme, id_ator, personagem)
    VALUES ('2', '1', 'Jack Trainer');
INSERT INTO "atores_filme" (id_filme, id_ator, personagem)
    VALUES ('1', '2', 'Gobe Leclair');
INSERT INTO "atores_filme" (id_filme, id_ator, personagem)
    VALUES ('3', '3', 'John Connington');


-- Devoluções
INSERT INTO "devolucoes" (id_alugado, data) VALUES ('1', '2022-10-25');
INSERT INTO "devolucoes" (id_alugado, data) VALUES ('2', '2022-10-20');
INSERT INTO "devolucoes" (id_alugado, data) VALUES ('3', '2022-10-26');


-- Filmes_alugados
INSERT INTO "filmes_alugados" (id_alugado, id_dvd) VALUES ('1', '1');
INSERT INTO "filmes_alugados" (id_alugado, id_dvd) VALUES ('2', '2');
INSERT INTO "filmes_alugados" (id_alugado, id_dvd) VALUES ('2', '2');


-- Filmes_Devoluções
INSERT INTO "filmes_devolucoes" (id_devolucao, id_filmes_alugados) VALUES ('1', '1');
INSERT INTO "filmes_devolucoes" (id_devolucao, id_filmes_alugados) VALUES ('2', '2');
INSERT INTO "filmes_devolucoes" (id_devolucao, id_filmes_alugados) VALUES ('3', '3');
