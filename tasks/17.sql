--Задание: 17 (Serge I: 2003-02-03)
--Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.
--Вывести: type, model, speed

SELECT DISTINCT p.type, l.model, l.speed FROM Laptop l
    JOIN Product p ON p.model = l.model
        WHERE l.speed < ALL(SELECT speed FROM PC)
