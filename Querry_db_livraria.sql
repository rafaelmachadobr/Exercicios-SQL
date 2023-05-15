create database bd_livraria;
use bd_livraria;

create table Tb_Livro(
	pk_IdLivro int PRIMARY KEY auto_increment,
    Autor varchar(100),
    Titulo varchar(100),
    Preco float,
    Genero varchar(100),
    Classificacao int,
    Tipo varchar(100),
    Capa varchar(100),
    Editora varchar(100),
    Idioma varchar(100),
    fk_IdFornecedor int,
    Estoque int,
    QuantidadeVendida int,
    fk_idCliente int,
    FOREIGN KEY (fk_IdFornecedor) REFERENCES Tb_Fornecedor(pk_IdFornecedor)
);

create table Tb_Cliente(
	Nome varchar(100),
    email varchar(100),
    telefone varchar(11),
    endereco varchar(100),
    cpf varchar(11),
    cep varchar(8),
    dataNasc date,
    pk_IdCliente int auto_increment,
    Cidade varchar(100),
    Estado varchar(50),
    Pais varchar(100),
    fk_idLivro int,
    PRIMARY KEY (pk_IdCliente),
    FOREIGN KEY (fk_idLivro) REFERENCES Tb_Livro (pk_IdLivro)
);

create table Tb_Fornecedor(
	Nome varchar(100),
    CNPJ varchar(14),
    fk_Produto int,
    Endereco varchar(100),
    Telefone varchar(100),
    email varchar(100),
    cidade varchar(100),
    Estado varchar(50),
    Pais varchar(100),
    Cep varchar(8),
    pk_IdFornecedor int auto_increment,
    PRIMARY KEY (pk_IdFornecedor)
);

create table tb_Vendedor(
	NomeVendedor varchar(100),
    Unidade varchar(100),
    Cpf varchar(11),
    DataNasc date,
    IdVendedor int,
    telefone varchar(11),
    email varchar(100),
    endereco varchar(100),
    salario float,
    dataAdmissao date,
    Cargo varchar(50),
    CargaHoraria int,
    PRIMARY KEY (IdVendedor)
);

create table tb_Produto (
	idProduto int auto_increment,
    descricao varchar(255),
    fk_fornecedor int,
    preco float,
    tipoProduto varchar(100),
    imposto float,
    primary key (idProduto),
    FOREIGN KEY (fk_fornecedor) REFERENCES Tb_Fornecedor(pk_IdFornecedor)
);
