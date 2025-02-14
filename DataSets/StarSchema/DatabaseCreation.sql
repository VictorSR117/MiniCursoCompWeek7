-- Tabela de Dimensão: Cliente
CREATE TABLE dCliente (
    cliente_id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    sexo CHAR(1),
    idade INT,
    endereco VARCHAR(255),
    cidade VARCHAR(100),
    estado VARCHAR(50),
    pais VARCHAR(50)
);

-- Tabela de Dimensão: Produto
CREATE TABLE dProduto (
    produto_id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10, 2)
);

-- Tabela de Dimensão: Data
CREATE TABLE dData (
    data_id SERIAL PRIMARY KEY,
    data DATE,
    ano INT,
    mes INT,
    dia INT,
    trimestre INT
);

-- Tabela de Dimensão: Vendedor
CREATE TABLE dVendedor (
    vendedor_id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    departamento VARCHAR(50),
    regiao VARCHAR(50)
);

-- Tabela de Dimensão: Fornecedor
CREATE TABLE dFornecedor (
    fornecedor_id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    contato VARCHAR(50),
    endereco VARCHAR(255),
    cidade VARCHAR(100),
    estado VARCHAR(50),
    pais VARCHAR(50)
);

-- Tabela Fato: Vendas
CREATE TABLE fVendas (
    venda_id SERIAL PRIMARY KEY,
    cliente_id INT REFERENCES dCliente(cliente_id),
    produto_id INT REFERENCES dProduto(produto_id),
    data_id INT REFERENCES dData(data_id),
    vendedor_id INT REFERENCES dVendedor(vendedor_id),
    fornecedor_id INT REFERENCES dFornecedor(fornecedor_id),
    quantidade INT,
    valor_total DECIMAL(10, 2)
);
