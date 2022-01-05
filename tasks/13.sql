-- Задание: 13 (Serge I: 2002-11-02)
-- Найдите среднюю скорость ПК, выпущенных производителем A.

SELECT AVG(speed) AS Avg_speed
FROM PC p
LEFT JOIN Product r ON p.model = r.model
WHERE maker = 'A'
