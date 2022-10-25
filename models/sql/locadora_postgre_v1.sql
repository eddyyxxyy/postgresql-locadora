CREATE DATABASE locadora;

CREATE TABLE "generos" (
  "id" SERIAL PRIMARY KEY,
  "genero" VARCHAR NOT NULL
);

CREATE TABLE "filmes" (
  "id" SERIAL PRIMARY KEY,
  "titulo" VARCHAR NOT NULL,
  "id_genero" INT NOT NULL REFERENCES "generos" (id),
  "valor" DECIMAL(8,2) NOT NULL
);

CREATE TABLE "dvds" (
  "id" SERIAL PRIMARY KEY,
  "id_filme" INT NOT NULL REFERENCES "filmes" (id),
  "quantidade" INT NOT NULL
);

CREATE TABLE "atores" (
  "id" SERIAL PRIMARY KEY,
  "nome" VARCHAR NOT NULL
);

CREATE TABLE "atores_filme" (
  "id" SERIAL PRIMARY KEY,
  "id_filme" INT NOT NULL REFERENCES "filmes" (id),
  "id_ator" INT NOT NULL REFERENCES "atores" (id),
  "personagem" VARCHAR NOT NULL
);

CREATE TABLE "clientes" (
  "id" SERIAL PRIMARY KEY,
  "nome" VARCHAR NOT NULL,
  "sobrenome" VARCHAR NOT NULL,
  "telefone" VARCHAR NOT NULL,
  "endereco" VARCHAR NOT NULL
);

CREATE TABLE "alugados" (
  "id" SERIAL PRIMARY KEY,
  "data" DATE NOT NULL,
  "id_cliente" INT NOT NULL REFERENCES "clientes" (id)
);

CREATE TABLE "filmes_alugados" (
  "id" SERIAL PRIMARY KEY,
  "id_alugado" INT NOT NULL REFERENCES "alugados" (id),
  "id_dvd" INT NOT NULL REFERENCES "filmes" (id)
);

CREATE TABLE "devolucoes" (
  "id" SERIAL PRIMARY KEY,
  "id_alugado" INT NOT NULL REFERENCES "alugados" (id),
  "data" DATE NOT NULL
);

CREATE TABLE "filmes_devolucoes" (
  "id" SERIAL PRIMARY KEY,
  "id_devolucao" INT NOT NULL REFERENCES "devolucoes" (id),
  "id_filmes_alugados" INT NOT NULL REFERENCES "filmes_alugados" (id)
);
