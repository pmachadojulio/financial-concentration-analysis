WITH participaciones AS (
    SELECT 
        cliente_id,
        canal,
        SUM(total_cliente) AS total_cliente,
        SUM(SUM(total_cliente)) OVER (PARTITION BY canal) AS total_canal,
        SUM(total_cliente) * 1.0 / SUM(SUM(total_cliente)) OVER (PARTITION BY canal) AS proporcion,
        RANK() OVER (PARTITION BY canal ORDER BY SUM(total_cliente) DESC) AS rnk
    FROM conciliacion_bancaria
    GROUP BY cliente_id, canal
),
