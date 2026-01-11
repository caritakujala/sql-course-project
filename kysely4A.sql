-- HARJOITUSTYÖ OSA 3
-- Kysely 4 A
-- Carita Kujala

SELECT k.knimi, COUNT(r.ktunnus) AS lkm, MIN(r.kesto) AS minkesto, MAX(r.kesto) AS maxkesto
FROM kategoria k LEFT OUTER JOIN rltunti r ON k.ktunnus = r.ktunnus
GROUP BY k.knimi;