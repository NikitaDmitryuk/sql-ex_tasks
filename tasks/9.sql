-- Задание: 9 (Serge I: 2002-11-02)
-- Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker

SELECT DISTINCT maker
    FROM Product r
    LEFT JOIN PC c ON r.model = c.model
    WHERE c.speed >= 450
