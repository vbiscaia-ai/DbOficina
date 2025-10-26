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

SELECT id_material, descricao, estoque_atual 
	FROM material
    order by estoque_atual;
    
# 2- FUNCIONARIOS DA OFICINA

SELECT NOME, ESPECIALIDADE
	FROM tecnico
    order by nome;
    
# 3- ORDENS DE SERVIÇO JA REGISTRADA
select id_os, tipo_manutencao, prioridade
	FROM OrdemServico
    where status = 'aberta'
    order by prioridade desc;
    
# 4- Quais funcionários trabalham em mais de um setor?
 SELECT * FROM OS_Servico;
    SELECT id_tecnico
		FROM os_servico
        GROUP BY id_tecnico
        having count(distinct id_os_servico) >1;
        
# 5- Como calcular o total de imposto pago em todas as ordens?

SELECT sum(imposto) 
AS IMPOSTO_TOTAL
FROM pagamento;

# 6- Como listar os serviços realizados por um técnico específico (id_tecnico = 2)?
SELECT * FROM Servico;
SELECT * FROM Tecnico;

SELECT * FROM OS_Servico;

select id_servico
	from os_servico
    where id_tecnico = 2;
    
    SELECT 
    t.nome AS nome_tecnico,
    s.descricao AS servico_realizado
FROM os_servico os
JOIN tecnico t ON os.id_tecnico = t.id_tecnico
JOIN servico s ON os.id_servico = s.id_servico
WHERE os.id_tecnico = 2;

#- Como identificar os clientes que possuem equipamentos críticos?
#- Como calcular o custo total de mão de obra por ordem de serviço?
#🔴 Complexas- Como identificar as ordens de serviço que utilizaram materiais recicláveis?
#- Como calcular o valor total faturado por cliente?
#- Como identificar os serviços com maior tempo real de execução?
#- Como calcular o percentual de ordens com iniciativa sustentável?
#Se quiser, posso montar mais 12 perguntas com foco em sustentabilidade, eficiência operacional ou análise de desempenho técnico. Só dizer!


