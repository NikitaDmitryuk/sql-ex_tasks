-- Задание: 19 (Serge I: 2003-02-13)
-- Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов.
-- Вывести: maker, средний размер экрана.



SELECT p.maker, AVG(l.screen)
    FROM Product p
    JOIN Laptop l ON l.model = p.model
    GROUP BY p.maker
