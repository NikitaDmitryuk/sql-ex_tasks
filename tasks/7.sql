-- Задание: 7 (Serge I: 2002-11-02)
-- Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).

SELECT DISTINCT pc.model, pc.price
    FROM PC AS pc
    INNER JOIN Product
    ON Product.model = pc.model
    WHERE maker = 'B'
UNION
    SELECT DISTINCT pr.model, pr.price
        FROM Printer AS pr
        INNER JOIN Product
        ON Product.model = pr.model
        WHERE maker = 'B'
UNION
    SELECT DISTINCT lp.model, lp.price
        FROM Laptop AS lp
        INNER JOIN Product
        ON Product.model = lp.model
        WHERE maker = 'B'
