/* How much land was harvested of pineapples in Malaysia in 1980? */
SELECT area, year, item, SUM(value)
FROM crop_livestock_stats
WHERE area = 'Malaysia'
AND year = 1980
AND item = 'Pineapples'
AND element = 'Area harvested'
GROUP BY area, year, item;

/* What is the average annual production in tonnes of
'"Fruits, Primary" worldwide between 2000 and 2021? */
SELECT area, item, AVG(value) AS annual_production
FROM crop_livestock_stats
WHERE area = 'World'
AND year BETWEEN 2000 AND 2021
AND item = 'Fruits, Primary'
AND element = 'Production'
GROUP BY area, item;






