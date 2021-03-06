-- Задание: 6 (Serge I: 2002-10-28)
-- Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.

SELECT DISTINCT p.maker, l.speed
    FROM Product p
    INNER JOIN Laptop l
    ON p.model = l.model AND type = 'Laptop'
    WHERE hd >= 10
