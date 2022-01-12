-- Задание: 28 (Serge I: 2012-05-04)
-- Используя таблицу Product, определить количество производителей, выпускающих по одной модели.


SELECT COUNT(*) FROM (SELECT COUNT(*) AS c FROM Product
    GROUP BY maker
    HAVING COUNT(*) = 1) AS x
