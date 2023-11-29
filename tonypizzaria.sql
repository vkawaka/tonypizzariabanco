create schema tonypizzaria;
use tonypizzaria;

create table usuario(
id integer primary key auto_increment,
nome varchar(255) not null,
foto text,
telefone varchar(20) not null,
email varchar(255) not null,
senha varchar(30) check(char_length(senha) >= 8) not null
);

create table endereco(
	id integer primary key auto_increment,
    id_usuario integer,
    rua text not null,
    bairro text not null,
    numero integer,
    complemento varchar(100),
    cep varchar(9),
    
    foreign key(id_usuario) references usuario(id) 
);

create table produtos(
	id integer primary key auto_increment,
    nome varchar(50) not null,
    foto text not null,
    preco double not null,
    descricao varchar(100),
    favorita boolean,
    avaliacao integer not null,
    disponibilidade boolean
);

create table comentarios(
	id integer primary key auto_increment,
    usuario_id integer,
    produtos_id integer,
    titulo varchar(200),
    avaliacao integer not null,
    comentario text,
    data_comentario date,
    
    foreign key(usuario_id) references usuario(id),
    foreign key(produtos_id) references produtos(id)
);

create table categorias(
	id integer primary key auto_increment,
    nome varchar(100) not null,
    foto text not null
);

create table possui(
	id integer primary key auto_increment,
    id_produtos integer,
    id_categorias integer,
    
    foreign key(id_produtos) references produtos(id),
    foreign key(id_categorias) references categorias(id)
);

create table pedidos(
	id  integer primary key auto_increment,
    usuario_id integer,
    pagamento varchar(20) not null,
    data_pedido date not null,
    status_pedido varchar(50) not null,
    -- ALTER TABLE pedidos,
	-- ADD COLUMN preco_total DECIMAL(6, 2);
    
    foreign key(usuario_id) references usuario(id)
);
alter table pedidos drop column taxa_servico;

DELIMITER //

CREATE PROCEDURE atualizarPrecoTotal(IN pedido_id INT)
BEGIN
    UPDATE pedidos
    SET preco_total = (
        SELECT
            COALESCE(SUM(produtos.preco * pedido_produto.quantidade), 0)
        FROM
            pedido_produto
            JOIN produtos ON pedido_produto.id_produtos = produtos.id
        WHERE
            pedido_produto.id_pedidos = pedido_id
    )
    WHERE id = pedido_id;
END //

DELIMITER ;

CALL atualizarPrecoTotal(1);

DROP PROCEDURE IF EXISTS atualizarPrecoTotal;

create table pedido_produto(
	id integer primary key,
    id_produtos integer,
    id_pedidos integer,
    quantidade integer,
    
    foreign key(id_produtos) references produtos(id),
    foreign key(id_pedidos) references pedidos(id)
);