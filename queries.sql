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
AND item = 'Fruit Primary'
AND element = 'Production'
GROUP BY area, item;

/* Filter the data to only countries in 
Northern America, Central America, South America */
SELECT *,country_group 
FROM crop_livestock_stats
LEFT JOIN country_groups
ON country_group = area
WHERE area IN ('Northern America', 'Central America', 'South America')
LIMIT 1000;

/* For Northern America, Central America, 
and South America, calculate the number of
countries and total production of "Meat, Poultry" in 2010. */

SELECT area,
COUNT(country), SUM(value)
FROM crop_livestock_stats 
RIGHT JOIN country_groups
ON country_code = area_code
WHERE area IN ('Northern America', 'Central America', 'South America')
GROUP BY area;

/* For each country in Asia, 
return the total production of each individual crop in 2010 */

SELECT country_group, 
COUNT(country),SUM(value)
FROM country_groups
LEFT JOIN crop_livestock_stats
ON country_code=area_code
WHERE country_group in ( 'Northern America', 'Central America', 'South America')
AND item = 'Meat, Poultry' 
AND ELEMENT = 'Production' 
AND YEAR = 2010
GROUP BY country_group;





