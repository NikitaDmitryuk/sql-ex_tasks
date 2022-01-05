-- Задание: 10 (Serge I: 2002-09-23)
-- Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price

SELECT p.model, p.price
    FROM Printer p
    WHERE p.price = (SELECT MAX(r.price)
    FROM Printer r)
