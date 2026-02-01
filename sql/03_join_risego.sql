SELECT
    p.cliente_id,
    p.canal,
    p.total_cliente,
    p.proporcion,
    p.rnk,
    d.hhi,
    d.entropia
FROM participaciones p
JOIN diagnostico_canal d
  ON p.canal = d.canal
ORDER BY p.canal, p.rnk;
