SELECT i.name ingredient, i.unit, a.amount, r.name recipe
FROM amounts a
INNER JOIN ingredients i
  ON a.ingredient_id = i.id
INNER JOIN recipes r
  ON a.recipe_id = r.id

;
