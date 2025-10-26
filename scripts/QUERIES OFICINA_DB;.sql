USE OFICINA_DB;
SELECT * FROM Cliente;
SELECT * FROM Equipamento;
SELECT * FROM Tecnico;
SELECT * FROM Fornecedor;
SELECT * FROM Material;
SELECT * FROM Servico;
SELECT * FROM OrdemServico;
SELECT * FROM OS_Servico;
SELECT * FROM OS_Material;
SELECT * FROM Pagamento;

# 1- PRODUTOS DISPONIVEIS NA OFICINA
#atenção ao estoque de sensor de vibração

SELECT id_material, descricao, estoque_atual 
	FROM material
    order by estoque_atual;
    
# 2- FUNCIONARIOS DA OFICINA

SELECT NOME, ESPECIALIDADE
	FROM tecnico
    order by nome;
    
# 3- ORDENS DE SERVIÇO JA REGISTRADA
# Uma ordem com prioridade critica 

select id_os, tipo_manutencao, prioridade
	FROM OrdemServico
    where status = 'aberta'
    order by prioridade desc;
    
# 4- Quais funcionários trabalham em mais de um setor?
 # 4 funcionarios em mais de um setor
 
 SELECT 
    t.id_tecnico,
    t.nome,
    COUNT(DISTINCT os.id_os) AS qtd_setores
FROM OS_Servico os
JOIN Tecnico t ON os.id_tecnico = t.id_tecnico
GROUP BY t.id_tecnico, t.nome
HAVING COUNT(DISTINCT os.id_os) > 1;
        
# 5- Total de imposto pago em todas as ordens?
# 1020.00 R$

SELECT sum(imposto) 
AS IMPOSTO_TOTAL
FROM pagamento;

# 6- Serviços realizados por um técnico específico (id_tecnico = 2)?
# 3 serviços

	SELECT 
    t.nome AS nome_tecnico,
    s.descricao AS servico_realizado,
    COUNT(*) AS qtd_execucoes
FROM os_servico os
JOIN tecnico t ON os.id_tecnico = t.id_tecnico
JOIN servico s ON os.id_servico = s.id_servico
WHERE os.id_tecnico = 2
GROUP BY t.nome, s.descricao
ORDER BY qtd_execucoes DESC;

# 7- Clientes que possuem equipamentos críticos?

SELECT  
    c.nome AS nome_cliente,
    e.tipo AS nome_equipamento,
    e.ativo_critico AS equipamento_critico
FROM cliente c
JOIN equipamento e  
    ON c.id_cliente = e.id_cliente
WHERE e.ativo_critico = 1;

# 8- calcular o custo total de mão de obra por ordem de serviço?

SELECT 
    id_os,
    SUM(custo_mao_obra) AS total_mao_obra
FROM OS_Servico
GROUP BY id_os
ORDER BY id_os;

# 9-  Identificar as ordens de serviço que utilizaram materiais recicláveis?

SELECT  
    osm.id_os AS ordem_servico,
    m.id_material AS id_material_reciclavel,
    m.descricao AS nome_material
FROM OS_Material osm
JOIN Material m 
    ON m.id_material = osm.id_material
WHERE m.reciclavel = 1;

# 10- Calcular o valor total faturado por cliente?

SELECT  
    c.nome AS cliente,
    SUM(p.valor_total) AS total_faturado
FROM Cliente c
JOIN OrdemServico os 
    ON c.id_cliente = os.id_cliente
JOIN Pagamento p 
    ON os.id_os = p.id_os
GROUP BY c.nome
ORDER BY total_faturado DESC;


# 11- Identificar os  5 serviços com maior tempo real de execução?

SELECT 
    s.descricao AS servico,
    t.nome AS tecnico,
    os.tempo_real_min,
    os.custo_mao_obra
FROM OS_Servico os
JOIN Servico s ON os.id_servico = s.id_servico
JOIN Tecnico t ON os.id_tecnico = t.id_tecnico
ORDER BY os.tempo_real_min DESC
LIMIT 5;

# 12- Calcular o percentual de ordens com iniciativa sustentável?
SELECT * FROM OrdemServico;

SELECT  iniciativa_sustentavel,
count(*) * 100 / sum(count(*)) over() as porcentagem
 from OrdemServico
group by iniciativa_sustentavel;