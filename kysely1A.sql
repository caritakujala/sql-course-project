-- HARJOITUSTYÖ OSA 3
-- Kysely 1 A
-- Carita Kujala

SELECT l.viikonpaiva, l.alkamisaika, r.rlnimi, r.kesto
FROM ((ljtunti l LEFT OUTER JOIN rltunti r ON l.rltunnus = r.rltunnus)
	 rltunti LEFT OUTER JOIN kategoria k ON r.ktunnus = k.ktunnus)
WHERE k.knimi = 'Kehonhuolto'
ORDER BY l.viikonpaiva, l.alkamisaika, r.rlnimi;