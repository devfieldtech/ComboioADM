 CREATE TABLE public.cheklistgeneric (
	id serial4 NOT NULL,
	status int4 NOT NULL DEFAULT 1,
	datareg timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
	idusuario int4 NOT NULL,
	dataalteracao timestamptz NULL,
	idusuarioalteracao int4 NULL,
    Nome varchar(100),
	Descricao varchar(100) not null
  );
  
 CREATE TABLE public.detcheklistgeneric (
	id serial4 NOT NULL,
	status int4 NOT NULL DEFAULT 1,
	datareg timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
	idusuario int4 NOT NULL,
	dataalteracao timestamptz NULL,
	idusuarioalteracao int4 NULL,
    idcheck integer not null,
    Item integer not null,
    descricao varchar(100),
    ItemFotoObrigatoria integer default 0,
    ItemObs varchar(50)
  );
  
   CREATE TABLE public.cheklistrealizado (
	id serial4 NOT NULL,
	status int4 NOT NULL DEFAULT 1,
	datareg timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
	idusuario int4 NOT NULL,
	dataalteracao timestamptz NULL,
	idusuarioalteracao int4 NULL,
    Nome varchar(100),
	Descricao varchar(100),
    idcheck integer not null,
	idcentrocusto integer,
	data date
  );
  
 CREATE TABLE public.detcheklistRealizado (
	id serial4 NOT NULL,
	status int4 NOT NULL DEFAULT 1,
	datareg timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
	idusuario int4 NOT NULL,
	dataalteracao timestamptz NULL,
	idusuarioalteracao int4 NULL,
    idcheck integer not null,
    Item integer not null,
    ItemFotoObrigatoria integer default 0,
    ItemFoto  text,
    ItemObs varchar(50),
    itemCheck integer default 0,
	descricao varchar(100)
  );
  
