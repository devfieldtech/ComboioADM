ALTER TABLE public.produtos ADD producao integer NOT NULL DEFAULT 0;

CREATE TABLE public.apontamento (
	id serial4 not null,
	status int4 not null DEFAULT 1,
	datareg timestamptz not null DEFAULT CURRENT_TIMESTAMP,
	idusuario int4 not null,
	dataalteracao timestamptz null,
	dataOperacao date not null,
	idusuarioalteracao int4 NULL,
	idCentroCusto int4 not null,
	idEscavadeira int4 not null,
	idProduto int4 not null,
	aplicacaoProduto VARCHAR(50) null,
	kmAtualEscavadeira VARCHAR(50) null,
	observacao varchar(100),
	CONSTRAINT "Apontamento_pkey" PRIMARY KEY (id),
	CONSTRAINT maquina_fk FOREIGN KEY (idEscavadeira) REFERENCES maquinaveiculo(id),
	CONSTRAINT produto_fk FOREIGN KEY (idProduto) REFERENCES produtos(id),
	CONSTRAINT centrocusto_fk FOREIGN KEY (idCentroCusto) REFERENCES CentroCusto(id)
);
