USE oficina_db;
INSERT INTO Cliente (nome, documento, tipo_cliente, telefone, email)
	VALUES('João Pereira', '123.456.789-00', 'pessoa', '71-99999-1111', 'joao@gmail.com'),
	('Maria Oliveira', '987.654.321-00', 'pessoa', '71-98888-2222', 'maria@gmail.com'),
	('Carlos Santos', '456.789.123-00', 'pessoa', '71-97777-3333', 'carlos@gmail.com'),
	('Indústria Papel Forte S/A', '12.345.678/0001-90', 'industria', '11-3333-2222', 'contato@papelforte.com'),
	('Metalúrgica Bahia Ltda', '98.765.432/0001-55', 'industria', '71-4002-8922', 'suporte@metalbahia.com'),
	('Transportadora Rápida Ltda', '11.222.333/0001-44', 'industria', '21-4002-1111', 'logistica@rapida.com'),
	('Fernanda Lima', '321.654.987-00', 'pessoa', '71-96666-4444', 'fernanda@gmail.com'),
	('Construtora Alfa S/A', '77.888.999/0001-22', 'industria', '31-3222-5555', 'contato@alfa.com'),
	('José Almeida', '222.333.444-55', 'pessoa', '71-95555-6666', 'jose@gmail.com'),
	('Oficina Mecânica Silva', '66.555.444/0001-11', 'industria', '71-4002-7788', 'silva@oficina.com'),
	('Patrícia Gomes', '111.222.333-44', 'pessoa', '71-94444-7777', 'patricia@gmail.com'),
	('Supermercado Bom Preço', '44.555.666/0001-77', 'industria', '71-4002-8899', 'compras@bompreco.com'),
	('André Souza', '999.888.777-66', 'pessoa', '71-93333-8888', 'andre@gmail.com'),
	('Construtora Beta Ltda', '55.444.333/0001-22', 'industria', '71-4002-9900', 'contato@beta.com'),
	('Luciana Torres', '888.777.666-55', 'pessoa', '71-92222-9999', 'luciana@gmail.com'),
	('Indústria Química Verde', '33.222.111/0001-55', 'industria', '71-4002-1122', 'contato@quimicaverde.com');
    
INSERT INTO Equipamento (id_cliente, tipo, modelo, ano, placa_ou_serie, ativo_critico) 
VALUES(1, 'carro', 'Honda Civic', 2016, 'ABC-9876', FALSE),
(2, 'carro', 'Toyota Corolla', 2018, 'XYZ-1234', FALSE),
(3, 'caminhao', 'Volvo FH', 2020, 'PLK-5678', FALSE),
(4, 'máquina', 'Caldeira Industrial X200', 2020, 'CALD-2020-01', TRUE),
(5, 'empilhadeira', 'Yale GLP30', 2019, 'EMP-BAHIA-01', TRUE),
(6, 'caminhao', 'Scania R450', 2021, 'TRP-2021-01', TRUE),
(7, 'carro', 'Ford Ka', 2015, 'DEF-4567', FALSE),
(8, 'máquina', 'Prensa Hidráulica P500', 2019, 'PRS-ALFA-01', TRUE),
(9, 'carro', 'Chevrolet Onix', 2022, 'GHI-7890', FALSE),
(10, 'máquina', 'Torno CNC T800', 2021, 'TOR-SILVA-01', TRUE),
(11, 'carro', 'Fiat Argo', 2019, 'JKL-1122', FALSE),
(12, 'caminhao', 'Mercedes Actros', 2020, 'MNO-3344', TRUE),
(13, 'carro', 'Renault Kwid', 2021, 'PQR-5566', FALSE),
(14, 'máquina', 'Guindaste Industrial G900', 2018, 'GUI-BETA-01', TRUE),
(15, 'carro', 'Volkswagen Polo', 2020, 'STU-7788', FALSE),
(16, 'máquina', 'Reator Químico RQ-500', 2022, 'REA-VERDE-01', TRUE);

INSERT INTO Tecnico (nome, especialidade, taxa_hora) 
VALUES('Ana Souza', 'Mecânica Diesel', 120.00),
('Carlos Lima', 'Manutenção Industrial', 150.00),
('Fernanda Alves', 'Elétrica Automotiva', 100.00),
('Rafael Costa', 'Hidráulica Industrial', 140.00),
('Juliana Mendes', 'Preventiva Industrial', 160.00),
('Pedro Henrique', 'Sistemas Eletrônicos', 130.00),
('Mariana Rocha', 'Soldagem Industrial', 145.00),
('Tiago Martins', 'Automação', 155.00);

INSERT INTO Fornecedor (nome, cnpj, contato, telefone) VALUES
('Peças Bahia', '22.333.444/0001-77', 'Silvia', '71-3333-2222'),
('Fornecedor Norte', '00.111.222/0001-33', 'Marcos', '11-4444-5555'),
('AutoParts Brasil', '55.666.777/0001-88', 'Juliana', '21-2222-3333'),
('IndusParts S/A', '99.888.777/0001-66', 'Roberto', '31-3333-4444'),
('EcoParts Sustentável', '77.666.555/0001-22', 'Clara', '41-2222-1111'),
('GlobalTech Industrial', '88.999.000/0001-55', 'Eduardo', '51-3333-2222');

INSERT INTO Material (descricao, unidade, custo_unitario, reciclavel, id_fornecedor, estoque_atual) VALUES
('Óleo 15W40', 'L', 35.50, FALSE, 1, 500),
('Filtro de ar', 'UN', 55.00, TRUE, 1, 200),
('Pastilha de freio', 'UN', 120.00, TRUE, 2, 300),
('Correia dentada', 'UN', 180.00, TRUE, 3, 150),
('Lubrificante industrial', 'L', 90.00, FALSE, 2, 400),
('Filtro de óleo industrial', 'UN', 250.00, TRUE, 4, 100),
('Mangueira hidráulica', 'M', 75.00, TRUE, 4, 250),
('Óleo reciclado', 'L', 28.00, TRUE, 5, 300),
('Filtro ecológico', 'UN', 60.00, TRUE, 5, 150),
('Graxa industrial', 'KG', 110.00, FALSE, 6, 200),
('Peça metálica reciclada', 'UN', 95.00, TRUE, 5, 180),
('Sensor de vibração', 'UN', 400.00, FALSE, 6, 50),
('Correia reciclada', 'UN', 150.00, TRUE, 5, 120),
('Óleo sintético premium', 'L', 120.00, FALSE, 3, 100);

INSERT INTO Servico (descricao, tempo_previsto_min, preco_base) 
VALUES('Troca de óleo', 60, 150.00),
('Troca de filtro de ar', 40, 100.00),
('Revisão de freio', 90, 250.00),
('Substituição de correia dentada', 120, 400.00),
('Inspeção preventiva de caldeira', 180, 800.00),
('Manutenção em empilhadeira', 150, 600.00),
('Troca de mangueira hidráulica', 100, 350.00),
('Revisão elétrica automotiva', 80, 200.00),
('Alinhamento e balanceamento', 70, 180.00),
('Troca de pneus', 60, 300.00),
('Lubrificação de componentes industriais', 110, 450.00),
('Instalação de sensor de vibração', 90, 500.00);

-- ORDENS DE SERVIÇO
INSERT INTO OrdemServico (id_cliente, id_equipamento, tipo_manutencao, status, prioridade, iniciativa_sustentavel, observacoes)
VALUES(1, 1, 'corretiva', 'concluida', 'media', FALSE, 'Troca de óleo e filtro'),
(2, 2, 'preventiva', 'concluida', 'baixa', TRUE, 'Revisão preventiva completa'),
(3, 3, 'corretiva', 'em_execucao', 'alta', FALSE, 'Problema nos freios'),
(4, 4, 'preventiva', 'em_execucao', 'critica', TRUE, 'Inspeção de caldeira industrial'),
(5, 5, 'preditiva', 'aberta', 'alta', TRUE, 'Análise de vibração da empilhadeira'),
(6, 6, 'corretiva', 'concluida', 'critica', FALSE, 'Falha no motor do caminhão'),
(7, 7, 'preventiva', 'concluida', 'baixa', TRUE, 'Troca de óleo e revisão elétrica'),
(8, 8, 'preditiva', 'em_execucao', 'critica', TRUE, 'Monitoramento de prensa hidráulica'),
(9, 9, 'corretiva', 'aberta', 'media', FALSE, 'Troca de pneus e alinhamento'),
(10, 10, 'preventiva', 'concluida', 'alta', TRUE, 'Lubrificação de torno CNC'),
(11, 11, 'corretiva', 'em_execucao', 'alta', FALSE, 'Revisão elétrica automotiva'),
(12, 12, 'preventiva', 'aberta', 'critica', TRUE, 'Inspeção de caminhão Mercedes Actros');

-- OS-SERVIÇOS
INSERT INTO OS_Servico (id_os, id_servico, id_tecnico, tempo_real_min, custo_mao_obra) 
VALUES(1, 1, 1, 65, 130.00),
(1, 2, 3, 40, 80.00),
(2, 3, 1, 85, 200.00),
(3, 3, 1, 95, 240.00),
(3, 4, 2, 120, 480.00),
(4, 5, 2, 190, 950.00),
(5, 6, 4, NULL, NULL),
(6, 1, 1, 70, 140.00),
(6, 7, 4, 100, 350.00),
(7, 1, 1, 60, 120.00),
(7, 8, 3, 85, 170.00),
(8, 5, 5, 180, 900.00),
(8, 7, 4, 95, 300.00),
(9, 9, 1, 70, 150.00),
(9, 10, 1, 65, 180.00),
(10, 11, 2, 100, 400.00),
(11, 8, 3, 90, 200.00),
(12, 3, 1, NULL, NULL),
(12, 1, 1, NULL, NULL);

-- OS-MATERIAIS
INSERT INTO OS_Material (id_os, id_material, quantidade) VALUES
(1, 1, 15),
(1, 2, 1),
(2, 3, 4),
(3, 3, 6),
(3, 4, 1),
(4, 5, 20),
(5, 6, 2),
(6, 1, 20),
(6, 7, 5),
(7, 2, 1),
(7, 1, 10),
(8, 7, 8),
(9, 10, 2),
(9, 9, 4),
(10, 11, 3),
(11, 8, 2),
(12, 12, 1);

-- PAGAMENTOS
INSERT INTO Pagamento (id_os, forma, valor_total, imposto) VALUES
(1, 'pix', 400.00, 40.00),
(2, 'cartao', 250.00, 25.00),
(3, 'dinheiro', 720.00, 72.00),
(4, 'boleto', 1200.00, 120.00),
(6, 'transferencia', 950.00, 95.00),
(7, 'pix', 300.00, 30.00),
(9, 'cartao', 480.00, 48.00),
(10, 'boleto', 600.00, 60.00),
(11, 'pix', 200.00, 20.00);

-- PAGAMENTOS (cenário avançado)

INSERT INTO Pagamento (id_os, forma, valor_total, imposto) VALUES
(1, 'pix', 400.00, 40.00),
(2, 'cartao', 250.00, 25.00),
(3, 'dinheiro', 720.00, 72.00),
(4, 'boleto', 600.00, 60.00),
(4, 'boleto', 600.00, 60.00),
(6, 'transferencia', 950.00, 95.00),
(7, 'pix', 300.00, 30.00),
(9, 'cartao', 240.00, 24.00),
(9, 'cartao', 240.00, 24.00),
(10, 'boleto', 600.00, 60.00),
(11, 'pix', 200.00, 20.00);
    
    