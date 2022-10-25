-- Filmes com seu ator preferido
SELECT f.titulo AS "Filme", g.genero AS "Gênero", af.personagem AS "Personagem", a.nome AS "Ator"
    FROM "atores" AS a, "filmes" AS f, "atores_filme" AS af, "generos" AS g
    WHERE af.id_ator = a.id AND af.id_filme = f.id AND g.id = f.id_genero AND a.nome = 'Ryan Grosling';


-- Filmes que um ator participou de um mesmo gênero
SELECT a.nome AS "Ator", f.titulo AS "Filme", af.personagem AS "Personagem", g.genero AS "Gênero"
    FROM "atores" AS a, "generos" AS g, "atores_filme" AS af, "filmes" AS f
    WHERE af.id_filme = f.id AND f.id_genero = g.id AND af.id_ator = a.id
      AND a.nome = 'Ryan Grosling' AND g.genero = 'Drama';

-- O que cada cliente alugou
SELECT al.id AS "Código", CONCAT(c.nome, ' ', c.sobrenome) AS "Cliente", al.data AS "Data",
       f.titulo AS "Filme", g.genero AS "Gênero", al.data AS "Data"
    FROM "alugados" AS al, "clientes" AS c, "filmes" AS f, "generos" AS g, "dvds" AS d,
         filmes_alugados AS fe
    WHERE fe.id_alugado = al.id AND al.id_cliente = c.id AND fe.id_dvd = d.id AND
          f.id = d.id_filme AND f.id_genero = g.id;

-- Verificar devoluções
SELECT de.id AS "Id Devolução",
       CONCAT(c.nome, ' ', c.sobrenome) AS "Cliente",
       de.data AS "Data da Devolução",
       f.titulo AS "Filme"
    FROM "devolucoes" AS de,
         "clientes" AS c,
         "filmes" AS f,
         "filmes_devolucoes" AS fd,
         "dvds" AS d,
         "alugados" AS a,
         "filmes_alugados" AS fa
    WHERE fd.id_filmes_alugados = fa.id AND
          a.id_cliente = c.id AND
          f.id = d.id_filme AND
          fa.id_dvd = d.id AND
          de.id_alugado = a.id AND
          fd.id_devolucao = de.id
    ORDER BY de.id;

-- Verificar quanto cada cliente pagou
SELECT al.id,
       CONCAT(cl.nome, ' ', cl.sobrenome) AS "Cliente",
       SUM(fi.valor)
    FROM "alugados" AS al,
         "clientes" AS cl,
         "filmes" AS fi,
         "filmes_devolucoes" AS fd,
         "dvds" AS d,
         "devolucoes" AS de,
         "filmes_alugados" AS fa
    WHERE fd.id_filmes_alugados = fa.id AND
          fd.id_devolucao = de.id AND
          fi.id = d.id_filme AND
          fa.id_alugado = al.id AND
          fa.id_dvd = d.id AND
          al.id_cliente = cl.id
    GROUP BY al.id, CONCAT(cl.nome, ' ', cl.sobrenome)
    ORDER BY al.id;
