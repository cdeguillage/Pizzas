USE pizzastore;
SELECT p.* FROM pizza p;
SELECT p.* FROM pizza p WHERE p.price < 10;
SELECT p.* FROM pizza p WHERE p.image IS NULL;
SELECT p.* FROM pizza p ORDER BY p.price DESC;
SELECT p.* FROM pizza p ORDER BY RAND() LIMIT 3;
/* CREATE INDEX pizza_price_IDX ON pizza (price); */
SELECT COUNT(1) AS nb_pizza FROM pizza p;
SELECT p.* FROM pizza p ORDER BY p.price DESC LIMIT 1;
SELECT p.* FROM pizza p WHERE p.price IN (SELECT MAX(sp.price) FROM pizza sp);
SELECT p.* FROM pizza p WHERE p.price = (SELECT MAX(sp.price) FROM pizza sp);

SELECT AVG(p.price) FROM pizza p;


