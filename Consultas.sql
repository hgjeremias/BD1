SELECT 
    P.IDPedido,
    C.Nome AS NomeCliente,
    E.Nome AS EstadoPedido,
    L.Nome AS NomeLoja
FROM Pedido P
JOIN Cliente C ON P.IDCliente = C.IDCliente
JOIN Estado E ON P.IDEstado = E.IDEstado
JOIN Loja L ON P.IDLoja = L.IDLoja;

SELECT 
    A.Nome AS TipoArranjo,
    AR.Duracao,
    AR.Preco,
    AP.Observacoes
FROM ArranjoPedido AP
JOIN Arranjo AR ON AP.IDArranjo = AR.IDArranjo
JOIN TipoArranjo A ON AR.IDTipoArranjo = A.IDTipoArranjo
WHERE AP.IDPedido = 1;

SELECT 
    TA.Nome AS NomeArranjo,
    ART.Nome AS NomeArtigo,
    AA.Quantidade
FROM ArranjoArtigo AA
JOIN Artigo ART ON AA.IDArtigo = ART.IDArtigo
JOIN Arranjo AR ON AA.IDArranjo = AR.IDArranjo
JOIN TipoArranjo TA ON TA.IDTipoArranjo = AR.IDTipoArranjo
WHERE AR.IDArranjo = 1;

SELECT 
    C.Nome AS NomeCliente,
    P.Descricao,
    PE.Tipo,
    PE.Cor,
    PE.Tamanho,
    PE.Tecido
FROM Pedido P
JOIN Cliente C ON P.IDCliente = C.IDCliente
JOIN PecaPedido PP ON P.IDPedido = PP.IDPedido
JOIN Peca PE ON PP.IDPeca = PE.IDPeca;

SELECT 
    A.Nome AS NomeArtigo,
    SUM(AA.Quantidade) AS TotalUsado
FROM ArranjoArtigo AA
JOIN Artigo A ON AA.IDArtigo = A.IDArtigo
GROUP BY A.Nome;

SELECT 
    DV.IDDocumentoVenda,
    P.IDPedido,
    C.Nome AS NomeCliente,
    E.Nome AS Estado
FROM DocumentoVenda DV
JOIN Pedido P ON DV.IDPedido = P.IDPedido
JOIN Cliente C ON P.IDCliente = C.IDCliente
JOIN Estado E ON DV.IDEstado = E.IDEstado
WHERE E.Nome NOT IN ('Pago');

SELECT 
    DC.IDDocumentoCompra,
    A.Nome AS NomeArtigo,
    LDC.Quantidade
FROM DocumentoCompra DC
JOIN LinhasDocumentoCompra LDC ON DC.IDDocumentoCompra = LDC.IDDocumentoCompra
JOIN Artigo A ON LDC.IDArtigo = A.IDArtigo
WHERE DC.IDFornecedor = 1;

SELECT 
    L.Nome AS Loja,
    ART.Nome AS Artigo,
    SUM(AA.Quantidade) AS TotalUsado
FROM Pedido P
JOIN ArranjoPedido AP ON P.IDPedido = AP.IDPedido
JOIN Arranjo A ON AP.IDArranjo = A.IDArranjo
JOIN ArranjoArtigo AA ON A.IDArranjo = AA.IDArranjo
JOIN Artigo ART ON AA.IDArtigo = ART.IDArtigo
JOIN Loja L ON P.IDLoja = L.IDLoja
GROUP BY L.Nome, ART.Nome;
