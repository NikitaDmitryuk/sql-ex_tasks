
-- Задание: 24 (Serge I: 2003-02-03)
-- Перечислите номера моделей любых типов, имеющих самую высокую цену по всей имеющейся в базе данных продукции.

WITH max_price AS
(
SELECT model, MAX(price) AS mp FROM PC
GROUP BY model
UNION
SELECT model, MAX(price) AS mp FROM Laptop
GROUP BY model
UNION
SELECT model, MAX(price) AS mp FROM Printer
GROUP BY model
)
SELECT model FROM max_price
WHERE mp = (SELECT MAX(mp) FROM max_price)
