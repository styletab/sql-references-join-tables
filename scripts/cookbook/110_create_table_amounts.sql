CREATE TABLE amounts(
  id SERIAL PRIMARY KEY,
  amount INTEGER,
  ingredient_id INTEGER REFERENCES ingredients(id),
  recipe_id INTEGER REFERENCES recipes(id)
);

CREATE INDEX ON amounts(ingredient_id);
CREATE INDEX ON amounts(recipe_id);
