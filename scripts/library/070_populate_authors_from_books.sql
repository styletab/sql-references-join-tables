INSERT INTO authors(name)
-- ^^ in the parens this is the title of the column
SELECT DISTINCT author
FROM books
ORDER BY author;
