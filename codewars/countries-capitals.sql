#https://www.codewars.com/kata/5e5f09dc0a17be0023920f6f

SELECT capital
FROM countries
WHERE country LIKE('E%') AND continent LIKE ('Afri%')
ORDER BY capital
LIMIT 3;