USE Loja;

-- Inserir dados na tabela Estado
INSERT INTO Estado (Nome, UF) VALUES 
('Santa Catarina', 'SC');

-- Inserir dados na tabela Municipio
INSERT INTO Municipio (Estado_ID, Nome, CodIBGE) VALUES 
(1, 'Joinville', 4209102);

-- Inserir dados na tabela Cliente com endereços de Joinville
INSERT INTO Cliente (Nome, CPF, Celular, EndLogradouro, EndNumero, EndCEP, Municipio_ID) VALUES 
('Ana Souza', '11122233344', '47998887777', 'Rua do Príncipe', '450', '89201000', 1),
('Carlos Silva', '22233344455', '47997776666', 'Avenida Getúlio Vargas', '1120', '89202000', 1),
('Mariana Lima', '33344455566', '47996665555', 'Rua Visconde de Taunay', '300', '89203005', 1);

-- Inserir dados na tabela ContaReceber (Situação: '1' em aberto, '3' paga)
INSERT INTO ContaReceber (Cliente_ID, FaturaVendaID, DataConta, DataVencimento, Valor, Situação) VALUES 
(1, 101, '2026-11-01', '2026-12-01', 1500.00, '1'),
(2, 102, '2026-11-05', '2026-11-20', 850.50, '3'),
(3, 103, '2026-11-10', '2026-12-10', 3200.00, '1');