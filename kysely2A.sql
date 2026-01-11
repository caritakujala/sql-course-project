-- HARJOITUSTYÖ OSA 3
-- Kysely 2 A
-- Carita Kujala

SELECT rlnimi, MIN (kesto) AS kesto
FROM rltunti
ORDER BY rlnimi;