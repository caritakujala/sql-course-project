-- HARJOITUSTYÖ OSA 3
-- Kysely 2 B
-- Carita Kujala

SELECT rlnimi, min(kesto) AS kesto, knimi
FROM rltunti, kategoria
WHERE rltunti.ktunnus = kategoria.ktunnus
ORDER BY rlnimi;