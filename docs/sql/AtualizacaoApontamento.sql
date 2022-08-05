ALTER TABLE public.produtos ADD producao integer NOT NULL DEFAULT 0;

CREATE TABLE public.apontamento (
	id serial4 NOT NULL,
	status int4 NOT NULL DEFAULT 1,
	datareg timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
	idusuario int4 NOT NULL,
	dataalteracao timestamptz NULL,
	dataoperacao date NOT NULL,
	idusuarioalteracao int4 NULL,
	idcentrocusto int4 NOT NULL,
	idescavadeira int4 NOT NULL,
	idproduto int4 NOT NULL,
	aplicacaoproduto varchar(50) NULL,
	kmatualescavadeira varchar(50) NULL,
	observacao varchar(100) NULL,
	horainicio time NULL,
	CONSTRAINT "Apontamento_pkey" PRIMARY KEY (id),
	CONSTRAINT centrocusto_fk FOREIGN KEY (idcentrocusto) REFERENCES public.centrocusto(id),
	CONSTRAINT maquina_fk FOREIGN KEY (idescavadeira) REFERENCES public.maquinaveiculo(id),
	CONSTRAINT produto_fk FOREIGN KEY (idproduto) REFERENCES public.produtos(id)
);

CREATE TABLE public.apontamentovalores (
	id serial4 NOT NULL,
	status int4 NOT NULL DEFAULT 1,
	datareg timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
	idusuario int4 NOT NULL,
	dataalteracao timestamptz NULL,
	dataoperacao date NOT NULL,
	horaoperacao time NOT NULL,
	idusuarioalteracao int4 NULL,
	idapontamento int4 NOT NULL,
	idmaquina int4 NOT NULL,
	latitude numeric(9, 6) NULL,
	longitude numeric(9, 6) NULL,
	tipoidentificacaomaquina int4 NOT NULL DEFAULT 0,
	imgveiculo bytea NULL,
	observacao varchar(100) NULL,
	imgsyncs3 int4 NOT NULL DEFAULT 0,
	CONSTRAINT "ApontamentoValores_pkey" PRIMARY KEY (id),
	CONSTRAINT maquina_fk FOREIGN KEY (idmaquina) REFERENCES public.maquinaveiculo(id)
);


ALTER TABLE public.usuario ADD apontamento integer NOT NULL DEFAULT 0;
ALTER TABLE public.usuario ADD abastecimento integer NOT NULL DEFAULT 0;
