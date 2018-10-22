SELECT p.* FROM pizzastore.pizza p;
SELECT p.* FROM pizzastore.pizza p WHERE p.price < 10;
SELECT p.* FROM pizzastore.pizza p WHERE p.image IS NULL;
SELECT p.* FROM pizzastore.pizza p ORDER BY p.price DESC;
SELECT p.* FROM pizzastore.pizza p ORDER BY RAND() LIMIT 3;
SELECT COUNT(1) AS nb_pizza FROM pizzastore.pizza p;
SELECT p.* FROM pizzastore.pizza p ORDER BY p.price DESC LIMIT 1;
SELECT AVG(p.price) FROM pizzastore.pizza p;
