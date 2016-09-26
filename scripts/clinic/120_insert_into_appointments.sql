INSERT INTO appointments(start, length, doctor_id, patient_id)
-- order matters here for the column names in parens)
  SELECT TIMESTAMP '2016-10-04 13:00',30, d.id, p.id
  FROM doctors d, patients p
  WHERE d.given_name = 'Fanny'
    AND d.surname = 'Norman'
    AND d.specialty = 'Physical medicine and rehabilitation'
    AND p.given_name = 'Cecile'
    AND p.surname = 'Fletcher'
  UNION
  SELECT TIMESTAMP '2016-10-04 13:00',30, d.id, p.id
  FROM doctors d, patients p
  WHERE d.given_name = 'Brittany'
    AND d.surname = 'Riddle'
    AND d.specialty = 'General practice'
    AND p.given_name = 'Rosie'
    AND p.surname = 'Scott'
  ;

  -- SQL does not execute a script in order by line number.
  -- the whole statement is a valid statement or it’s not. so for
  --  instance in our insert into statement, we can declare the alias
  -- for the table after the id is used.
