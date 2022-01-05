-- Задание: 15 (Serge I: 2003-02-03)
-- Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD

SELECT DISTINCT p.hd
    FROM PC p
    JOIN PC c ON p.hd = c.hd AND p.code != c.code
