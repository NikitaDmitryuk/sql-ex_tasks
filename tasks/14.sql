--Задание: 14 (Serge I: 2002-11-05)
-- Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.

SELECT c.class, name, country
    FROM Ships s
    JOIN classes c ON c.class = s.class
    WHERE numGuns >= 10
