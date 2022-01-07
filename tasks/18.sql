-- Задание: 18 (Serge I: 2003-02-03)
-- Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price

SELECT DISTINCT maker, price
    FROM Printer r
    JOIN Product p ON r.model = p.model
WHERE color = 'y' AND price = (SELECT MIN(price)
                                FROM Printer
                                WHERE color = 'y')
