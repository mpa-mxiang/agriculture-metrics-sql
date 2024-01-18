/* How much land was harvested of pineapples in Malaysia in 1980? */
SELECT area, year, item, SUM(value)
FROM crop_livestock_stats
WHERE area = 'Malaysia'
AND year = 1980
AND item = 'Pineapples'
AND element = 'Area harvested'
GROUP BY area, year, item;

