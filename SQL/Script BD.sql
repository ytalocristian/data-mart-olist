Tabela Dimensão Cliente:
CREATE TABLE public.dim_cliente (
    sk_cliente SERIAL PRIMARY KEY,
    version INTEGER,
    date_from TIMESTAMP,
    date_to TIMESTAMP,
    customer_unique_id VARCHAR(32),
    cidade VARCHAR(255),
    estado VARCHAR(2)
);

CREATE INDEX idx_dim_cliente_lookup ON public.dim_cliente(customer_unique_id);

Tabela Dimensão Produto:
CREATE TABLE public.dim_produto (
    sk_produto SERIAL PRIMARY KEY,
    version INTEGER,
    date_from TIMESTAMP,
    date_to TIMESTAMP,
    id_produto_origem VARCHAR(32),
    categoria VARCHAR(255),
    peso_g DOUBLE PRECISION
);

CREATE INDEX idx_dim_produto_lookup ON public.dim_produto(id_produto_origem);

Tabela Dimensão Tempo:
CREATE TABLE public.dim_tempo (
    sk_tempo SERIAL PRIMARY KEY,
    data_completa DATE,
    ano INTEGER,
    mes INTEGER,
    dia INTEGER,
    trimestre INTEGER
);

CREATE INDEX idx_dim_tempo_lookup ON public.dim_tempo(data_completa);

Tabela Fato Vendas:
CREATE TABLE public.fato_vendas (
    sk_cliente INTEGER,
    sk_produto INTEGER,
    sk_tempo INTEGER,
    valor_venda NUMERIC(10,2),
    valor_frete NUMERIC(10,2)
);

-- Criação de Índices para Performance de Joins
CREATE INDEX idx_fato_cliente ON public.fato_vendas(sk_cliente);
CREATE INDEX idx_fato_produto ON public.fato_vendas(sk_produto);
CREATE INDEX idx_fato_tempo ON public.fato_vendas(sk_tempo);