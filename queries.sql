-- write your queries here
SELECT * FROM owners owner 
  FULL OUTER JOIN vehicles vehicle 
    ON owner.id=vehicle.owner_id;

SELECT first_name, last_name, 
  COUNT(owner_id) FROM owners owner 
  JOIN vehicles vehicle on owner.id=vehicle.owner_id 
  GROUP BY (first_name, last_name) 
ORDER BY first_name;

SELECT 
  first_name, last_name, 
  ROUND(AVG(price)) as average_price, 
  COUNT(owner_id) 
FROM owners owner 
JOIN vehicles vehicle on owner.id=vehicle.owner_id 
GROUP BY 
  (first_name, last_name) 
HAVING 
  COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000 
ORDER BY first_name DESC;