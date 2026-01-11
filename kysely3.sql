-- HARJOITUSTYÖ OSA 3
-- Kysely 3
-- Carita Kujala

SELECT o.otunnus, o.onimi
FROM (((ohjaaja o LEFT OUTER JOIN voi_ohjata v ON o.otunnus = v.otunnus)
	    voi_ohjata LEFT OUTER JOIN rltunti r ON v.rltunnus = r.rltunnus)
	    rltunti LEFT OUTER JOIN kategoria k ON r.ktunnus = k.ktunnus)
WHERE k.knimi = 'Spinning'
INTERSECT
SELECT o.otunnus, o.onimi
FROM (((ohjaaja o LEFT OUTER JOIN voi_ohjata v ON o.otunnus = v.otunnus)
	    voi_ohjata LEFT OUTER JOIN rltunti r ON v.rltunnus = r.rltunnus)
	    rltunti LEFT OUTER JOIN kategoria k ON r.ktunnus = k.ktunnus)
WHERE k.knimi = 'Kehonhuolto'
ORDER BY o.otunnus;