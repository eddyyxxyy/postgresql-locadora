-- Selects simples

-- Atores
-- SELECT * FROM atores;

-- Clientes
-- SELECT * FROM clientes;

-- Filmes
-- SELECT * FROM filmes;

-- Gêneros
-- SELECT * FROM generos;

-- Filmes e Gênero
-- SELECT f.id, f.titulo, g.genero, f.valor
--     FROM "filmes" AS f, "generos" as g
--     WHERE f.id_genero = g.id;

-- Atores Filmes
-- SELECT * FROM atores_filme;

-- Atores com nome dos filmes e atores
-- SELECT af.id, f.titulo AS "Filme", a.nome AS "Ator", af.personagem AS "Personagem"
--     FROM atores_filme AS af, filmes AS f, atores AS a
--     WHERE af.id_filme = f.id AND af.id_ator = a.id;

-- Utilizando filtros
-- SELECT * FROM "generos" WHERE id = '1';
-- SELECT * FROM "generos" WHERE genero = 'Drama';
-- SELECT SUM(valor) AS "Soma" FROM "filmes";

-- Subconsulta
-- SELECT * FROM "filmes" WHERE valor IN (SELECT max(valor) FROM "filmes");
