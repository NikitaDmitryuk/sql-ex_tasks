-- Задание: 27 (Serge I: 2003-02-03)
-- Найдите средний размер диска ПК каждого из тех производителей, которые выпускают и принтеры. Вывести: maker, средний размер HD.


SELECT maker, AVG(hd) FROM PC
    JOIN Product ON PC.model = Product.model
        WHERE maker IN (SELECT maker FROM product
                        WHERE type = 'Printer')
    GROUP BY maker
