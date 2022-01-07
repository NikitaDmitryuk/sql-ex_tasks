-- Задание: 16 (Serge I: 2003-02-03)
-- Найдите пары моделей PC, имеющих одинаковые скорость и RAM. В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i), Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.


SELECT DISTINCT p.model, c.model, p.speed, p.ram
    FROM PC p, PC c
WHERE p.speed = c.speed AND p.ram = c.ram AND p.model > c.model
