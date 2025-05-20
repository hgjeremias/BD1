INSERT INTO Loja VALUES
	('LOJA 1', 'RUA NUMERO 1'),
	('LOJA 2', 'RUA NUMERO 2');

INSERT INTO Cliente VALUES
	('CLIENTE 1', '999999990', '912345678', 'RUA NUMERO 1', 'cliente@1.pt'),
	('CLIENTE 2', '999999990', '912345678', 'RUA NUMERO 2', 'cliente@2.pt'),
	('CLIENTE 3', '999999990', '912345678', 'RUA NUMERO 3', 'cliente@3.pt'),
	('CLIENTE 4', '999999990', '912345678', 'RUA NUMERO 4', 'cliente@4.pt');


INSERT INTO Artigo VALUES
	('BOTAO'),
	('FECHO'),
	('LINHA ALGODAO BRANCA - ROLO'),
	('LINHA AZUL - ROLO'),
	('ALGODAO - M2'),
	('LINHA POLYESTER BRANCA - ROLO'),
	('SEDA - FIO'),
	('SEDA - M2')

INSERT INTO TipoArranjo VALUES
	('REMENDO', 'Aplicaçao de pedaço de tecido em buraco ou rasgao em peça (Cozido a maquina, ou prensado a calor)'),
	('BAINHA', 'Corte na ponta da peça para diminuir o comprimento da mesma, incluindo a reconstruçao do ponto original da peça'),
	('REPOSICAO/TROCA DE BOTOES', ''),
	('REPARAÇAO GERAL', '');

INSERT INTO Arranjo VALUES
	(1, 1, 15),
	(1, 2, 25),
	(1, 3, NULL),
	(2, 1, 25),
	(2, 2, 35),
	(2, 3, NULL),
	(3, 1, 15),
	(3, 2, 25),
	(3, 3, NULL),
	(4, 1, NULL),
	(4, 2, NULL),
	(4, 3, NULL);

INSERT INTO ArranjoArtigo VALUES
	(1, 3, 10),
	(1, 4, 1),
	(2, 3, 20),
	(2, 4, 2),
	(4, 6, 15),
	(5, 6, 30),
	(7, 1, 10),
	(7, 6, 10),
	(8, 1, 20),
	(8, 6, 20);

INSERT INTO Estado VALUES
	('Recebido'),
	('Orçamentado'),
	('Adjudicado'),
	('Iniciado'),
	('Em progresso'),
	('Concluido'),
	('Levantado'),
	('Abandonado'),
	('Pago'),
	('Pendente Pagamento');	

INSERT INTO Fornecedor VALUES
	('FORNECEDOR 1', '999999990', '912345678', 'RUA NUMERO 1', 'FORNECEDOR@1.pt'),
	('FORNECEDOR 2', '999999990', '912345678', 'RUA NUMERO 2', 'FORNECEDOR@2.pt'),
	('FORNECEDOR 3', '999999990', '912345678', 'RUA NUMERO 3', 'FORNECEDOR@3.pt'),
	('FORNECEDOR 4', '999999990', '912345678', 'RUA NUMERO 4', 'FORNECEDOR@4.pt');


INSERT INTO Peca VALUES
	('Calças', 'Azul', 'L', 'Ganga'),
	('T-shirt', 'Verde', 'S', 'Algodao'),
	('Camisa', 'Branca', 'XL', 'Polyester');

INSERT INTO Pedido VALUES
	(1, 1, 1, 'Remendo'),
	(2, 1, 1, 'Bainha'),
	(3, 1, 2, NULL);

INSERT INTO PecaPedido VALUES
	(1, 2, 2),
	(2, 1, 1),
	(3, 3, 1);

INSERT INTO ArranjoPedido VALUES
	(1, 2, 'Arranjo Tabelado - Remendo Simples'),
	(2, 4, 'Arranjo Tabelado - Bainha Simples'),
	(3, 7, 'Arranjo Tabelado - Reposiçao de botoes');