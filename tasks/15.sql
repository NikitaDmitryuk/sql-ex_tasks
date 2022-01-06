-- Задание: 15 (Serge I: 2003-02-03)
-- Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD

-- 1)
SELECT DISTINCT p.hd
    FROM PC p
    JOIN PC c ON p.hd = c.hd AND p.code != c.code;

-- 2)
SELECT hd FROM PC
    GROUP BY hd
    HAVING count(code) > 1;
