CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  start TIMESTAMP,
  length INTEGER,
  -- we're using integer since we want the length to be mins but there's no rgiht answer for this it depends on your app
  patient_id INTEGER REFERENCES patients(id),
  doctor_id INTEGER REFERENCES doctors(id)
);

CREATE INDEX ON appointments(patient_id);
CREATE INDEX ON appointments(doctor_id);
