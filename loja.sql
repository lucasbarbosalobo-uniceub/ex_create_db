-- CRIANDO TABELA DE CATEGORIAS
CREATE TABLE categorias (
	id_categoria SERIAL PRIMARY KEY NOT NULL,
	nome_categoria VARCHAR(40) NOT NULL

)

-- CRIANDO TABELA CLIENTES
CREATE TABLE clientes (
	id_cliente SERIAL PRIMARY KEY NOT NULL,
	nome_cliente VARCHAR(80) NOT NULL

)

-- CRIANDO TABELA DE PRODUTOS
CREATE TABLE produtos (
	id_produto SERIAL PRIMARY KEY NOT NULL,
	nome_produto VARCHAR(80),
	preco DECIMAL(8,2),
	id_categoria INTEGER NOT NULL,
		CONSTRAINT fk_produtos_categorias
			FOREIGN KEY (id_categoria) REFERENCES categorias (id_categoria)
	
);
-- criando a tabela de pedidos
CREATE TABLE pedidos (
	id_pedido SERIAL PRIMARY KEY NOT NULL,
	data DATE NOT NULL,
	id_cliente INTEGER NOT NULL,
		CONSTRAINT fk_pedidos_clientes
			FOREIGN KEY(id_cliente) REFERENCES clientes (id_cliente)
);

-- criando a associativa item_pedido
CREATE TABLE item_pedido (
	id_pedido INTEGER NOT NULL,
	id_produto INTEGER NOT NULL,
	quantidade INTEGER,
		CONSTRAINT pk_item_pedido PRIMARY KEY(id_pedido, id_produto),
		CONSTRAINT fk_item_pedido_pedidos
			FOREIGN KEY (id_pedido) REFERENCES pedidos (id_pedido),
		CONSTRAINT fk_item_pedido_produtos
			FOREIGN KEY (id_produto) REFERENCES produtos (id_produto)

);








