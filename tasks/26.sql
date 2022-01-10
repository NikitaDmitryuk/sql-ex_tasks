-- Задание: 26 (Serge I: 2003-02-14)
-- Найдите среднюю цену ПК и ПК-блокнотов, выпущенных производителем A (латинская буква). Вывести: одна общая средняя цена.

SELECT AVG(price) FROM (
    SELECT c.model, maker, price FROM PC c
            JOIN Product t ON t.model = c.model
        WHERE maker = 'A'
    UNION ALL
    SELECT p.model, maker, price FROM Laptop l
            JOIN Product p ON l.model = p.model
        WHERE maker = 'A'
) AS X
