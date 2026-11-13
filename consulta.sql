USE Loja;

-- Criação da VIEW para consulta de contas em aberto (Situação '1')
CREATE OR REPLACE VIEW vw_ContasReceberAberto AS
    SELECT 
        c.ID AS ID_Conta,
        cl.Nome AS Nome_Cliente,
        cl.CPF AS CPF_Cliente,
        c.DataVencimento AS Data_Vencimento,
        c.Valor AS Valor_Total
    FROM ContaReceber c
    INNER JOIN Cliente cl ON c.Cliente_ID = cl.ID
    WHERE c.Situação = '1';

-- Consulta para testar a VIEW criada e gerar o print para o relatório
SELECT * FROM vw_ContasReceberAberto;