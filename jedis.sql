
-- 1.SELECT all Jedis with red lightsabers
SELECT * FROM jedis WHERE lightsaber_color = 'red';
-- 2.SELECT all Jedis who have been tempted by the darkside
 SELECT name FROM jedis WHERE tempted_by_dark_side = true;
-- 3.UPDATE all gray lightsabers to green
UPDATE jedis SET lightsaber_color='green' WHERE lightsaber_color = 'gray';
-- 4.UPDATE all Jedis who have been tempted by the darkside so that their training goes up by 10
UPDATE jedis SET years_training = years_training + 10  WHERE tempted_by_dark_side = true;
-- 5.UPDATE all Jedis with blue lightsabers so that their training goes up by 30
 UPDATE jedis SET years_training = years_training + 30  WHERE lightsaber_color  = 'blue';
-- 6.Select the temptation from all Jedis whose training is more thann 8 years.
SELECT temptation,name FROM jedis WHERE Years_training > 8;
-- 7.SELECT the lightsaber color and name of all Jedis whose training is less than 8 years and who are not tempted by the darkside
 SELECT Lightsaber_color,name FROM jedis WHERE Years_training <8 AND tempted_by_dark_side = false;
-- 8.Find the sum of all the jedis years_training who have blue lightsabers
 SELECT SUM(years_training) FROM jedis WHERE lightsaber_color = 'blue';
-- 9.Find the average years_training of all jedis who are not tempted by the darkside
SELECT avg(years_training) FROM jedis WHERE tempted_by_dark_side = false;
-- 10.Find the sum of all jedis years_training who are not tempted by the darkside and have purple lightsabers
SELECT avg(years_training) FROM jedis WHERE tempted_by_dark_side = false AND lightsaber_color = 'purple';