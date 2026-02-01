diagnostico_canal AS (
    SELECT
        canal,
        SUM(proporcion * proporcion) AS hhi,
        -SUM(proporcion * LN(proporcion)) AS entropia
    FROM participaciones
    GROUP BY canal
)
