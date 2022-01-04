 
-- Задание: 2 (Serge I: 2002-09-21)
-- Найдите производителей принтеров. Вывести: maker

SELECT DISTINCT maker FROM Product d, Printer r
    WHERE d.model = r.model
    ORDER BY maker;
