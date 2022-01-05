-- Задание: 12 (Serge I: 2002-11-02)
-- Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.

SELECT SUM(speed) / COUNT(speed) AS Avg_speed
    FROM Laptop
    WHERE price > 1000;
