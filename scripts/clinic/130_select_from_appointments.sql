SELECT d.surname doctor, d.specialty, p.surname patient, a.start, a.length
FROM appointments a
INNER JOIN doctors d
  ON a.doctor_id = d.id
INNER JOIN patients p
  ON a.patient_id = p.id

;
