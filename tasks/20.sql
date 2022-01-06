-- Задание: 20 (Serge I: 2003-02-13)
-- Найдите производителей, выпускающих по меньшей мере три различных модели ПК. Вывести: Maker, число моделей ПК.

SELECT maker, count(model) AS c_m FROM Product
    WHERE type = 'PC'
    GROUP BY maker
    HAVING count(model) >= 3
