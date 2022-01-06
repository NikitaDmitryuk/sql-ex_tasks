
-- Задание: 21 (Serge I: 2003-02-13)
-- Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого есть модели в таблице PC.
-- Вывести: maker, максимальная цена.

SELECT p.maker, MAX(c.price)
    FROM Product p
        JOIN PC c ON p.model = c.model
    GROUP BY p.maker
