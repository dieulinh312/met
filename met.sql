--- Get a feel for the met table:
 SELECT *
 FROM met
 LIMIT 10;

--- How many pieces are in the American Decorative Art collection:
  SELECT COUNT(*)
  FROM met;

--- Count the number of pieces where the category includes 'celery':
  SELECT COUNT(*)
  FROM met
  WHERE category LIKE '%celery%';

--- Find the title and medium of the oldest pieces in the collection:
  SELECT title, medium
  FROM met
  ORDER BY date ASC
  LIMIT 10;

--- Find the top 10 countries with the most pieces in the collection:
  SELECT country, COUNT(*)
  FROM met
  WHERE country IS NOT NULL
  GROUP BY country
  ORDER BY COUNT(*) DESC
  LIMIT 10;

--- Find the categories with more than 100 pieces:
  SELECT category, COUNT(*)
  FROM met
  GROUP BY category
  HAVING COUNT(*) > 100;

--- Count the number of pieces where the medium contains 'gold' or 'silver':
  SELECT medium, COUNT(*) 
  FROM met
  WHERE medium LIKE '%gold%' OR medium LIKE '%silver'
  GROUP BY 1
  ORDER BY 2 DESC;

