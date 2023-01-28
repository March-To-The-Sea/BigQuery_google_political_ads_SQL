WITH category_types AS
  (SELECT DISTINCT country_code, Count(country_code) AS occurence_value
  FROM bigquery-public-data.google_ads.geotargets
  GROUP BY country_code
  ORDER BY occurence_value DESC)

SELECT *
FROM category_types