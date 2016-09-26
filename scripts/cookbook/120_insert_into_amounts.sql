INSERT INTO amounts(amount, ingredient_id, recipe_id)
  SELECT 3, i.id, r.id
  FROM ingredients i, recipes r
  WHERE i.name = 'canola oil'
    AND i.unit= 'tsp'
    AND r.name = 'Black Beans and Rice'
  UNION
  SELECT 3, i.id, r.id
  FROM ingredients i, recipes r
  WHERE i.name = 'canola oil'
    AND i.unit= 'tsp'
    AND r.name = 'Black Beans and Rice'
  ;
