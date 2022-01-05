-- Задание: 11 (Serge I: 2002-11-02)
-- Найдите среднюю скорость ПК.

SELECT SUM(speed) / COUNT(speed) AS Avg_speed FROM PC;
