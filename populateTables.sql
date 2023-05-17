/* A sample population of the tables*/


INSERT INTO Patients (patientName, DOB, homeAddress, phone, emergencyContact, consentForm, insuranceProvider, insurancePolicyNo)
VALUES
('John Smith', '1985-07-10', '123 Main St, New York, New York USA', '555-555-1234', 'Jane Doe, 555-555-5678', 1, 'BlueCross', '123456789'),
('Jane Doe', '1990-05-12', '456 Maple St, Syracuse, New York USA', '555-555-5678', 'John Smith, 555-555-1234', 0, 'BlueCross', '987654321'),
('Bobby Peabody', '1970-01-01', '789 Oak St, Rochester, New York USA', '555-555-9876', 'Robby Bobby Lee, 555-555-3456', 1, 'United Healthcare', '111111111'),
('Sofia Bofia', '2001-10-08', '505 Walnut Ave, Syracuse, New York USA', '444-555-3948', 'Maddy LaCamera, 555-555-5728', 1, 'United Healthcare',  '222222222'),
('Trisha Paytas', '1992-10-12', '400 Hollywood Ave, Los Angeles, California USA', '1212-999-6373', 'Moses Paytas, 777-454-6666', 1, 'BlueCross', '7432986492'),
('Sarah Lee', '1982-03-15', '1111 First St, San Francisco, California USA', '415-555-1234', 'John Lee, 415-555-5678', 1, 'BlueCross', '87654321'),
('Johnny Kronenberg', '1995-09-23', '2222 Second St, Los Angeles, California USA', '213-555-9876', 'Daniel Kim, 213-555-3456', 1, 'United Healthcare', '22223333'),
('Emma Wilson', '1988-12-31', '3333 Third St, Chicago, Illinois USA', '312-555-3948', 'Jack Wilson, 312-555-5728', 1, 'Aetna', '33334444'),
('Nancy Brown', '1975-06-07', '4444 Fourth St, Boston, Massachusetts USA', '617-555-1234', 'Mary Brown, 617-555-5678', 1, 'Cigna', '44445555'),
('Robert Lee', '2000-02-29', '5555 Fifth St, San Francisco, California USA', '415-555-9876', 'Jenny Lee, 415-555-3456', 1, 'Anthem', '55556666');

-- SELECT * FROM Patients;

INSERT INTO Departments (departmentID, departmentName)
VALUES
(1, 'Cardiology'),
(2, 'Oncology'),
(3, 'Pediatrics'),
(4, 'Neurology'),
(5, 'Gastroenterology'),
(6, 'Orthopedics'),
(7, 'Dermatology'),
(8, 'Endocrinology'),
(9, 'Pulmonology'),
(10, 'Psychiatry'),
(11, 'Critital Care');

-- Select * FROM Departments;

INSERT INTO Physicians (physicianName, jobTitle, specialty, departmentID, phone, email, hireDate, licenseInfo)
VALUES
('Dr. Sarah Lee', 'Cardiologist', 'Cardiology', 1, '555-555-1111', 'sarah.lee@hospital.com', '2010-05-01', '1234'),
('Dr. John Smith', 'Oncologist', 'Oncology', 2, '555-555-2222', 'john.smith@hospital.com', '2015-07-01', '5678'),
('Dr. Jane Toe', 'Head Pediatrician', 'Pediatrics', 3, '555-555-3333', 'jane.doe@hospital.com', '2012-01-01', '9012'),
('Dr. Bob Johnson', 'Neurologist', 'Neurology', 4, '555-555-4444', 'bob.johnson@hospital.com', '2018-06-01', '3456'),
('Dr. Walter White', 'Gastroentologist', 'Gastroenterology', 5, '555-555-5555', 'wwhite@hospital.com', '2010-01-01', '6789'),
('Dr. Lisa Nguyen', 'Orthopedic Surgeon', 'Orthopedics', 6, '555-555-6666', 'lisa.nguyen@hospital.com', '2014-08-01', '2345'),
('Dr. Michael Brown', 'Critical Care Surgeon', 'Critical Care', 7, '555-555-7777', 'michael.brown@hospital.com', '2016-02-01', '8901'),
('Dr. Emily Davis', 'Endocrinologist', 'Endocrinology', 8, '555-555-8888', 'emily.davis@hospital.com', '2013-11-01', '4567'),
('Dr. James Kim', 'Pulmonologist', 'Pulmonology', 9, '555-555-9999', 'james.kim@hospital.com', '2017-05-01', '0123'),
('Dr. Rachel Chen', 'Psychiatrist', 'Psychiatry', 10, '555-555-0000', 'rachel.chen@hospital.com', '2019-09-01', '7890');

-- SELECT * FROM Physicians; 

INSERT INTO Nurses (nurseName, jobTitle, departmentID, phone, email, hireDate, registered)
VALUES
('Emily Wilson', 'RN', 1, '555-555-5555', 'emily.wilson@hospital.com', '2015-05-01', 1),
('Mark Davis', 'LPN', 2, '555-555-6666', 'mark.davis@hospital.com', '2016-07-01', 1),
('Sue Lee', 'RN', 3, '555-555-7777', 'sue.lee@hospital.com', '2010-01-01', 0),
('Mike Johnson', 'LPN', 4, '555-555-8888', 'mike.johnson@hospital.com', '2019-06-01', 1),
('Bing Smith', 'NP', 3, '555-555-9999', 'bing.smith@hospital.com', '2020-08-01', 1),
('Linda Garcia', 'RN', 3, '555-555-1111', 'linda.garcia@hospital.com', '2018-03-01', 1),
('Chris Patel', 'LPN', 1, '555-555-2222', 'chris.patel@hospital.com', '2017-02-01', 1);

-- SELECT * FROM Nurses;

INSERT INTO Medications (medicationName, brand, description)
VALUES
('Aspirin', 'Bayer', 'Relieves pain and reduces inflammation'),
('Lipitor', 'Pfizer', 'Lowers cholesterol and reduces risk of heart attack'),
('Tylenol', 'Johnson & Johnson', 'Reduces fever and relieves pain'),
('Benadryl', 'Johnson & Johnson', 'Relieves allergies and allergic reactions'),
('Advil', 'Pfizer', 'Relieves pain and reduces fever'),
('Zyrtec', 'Johnson & Johnson', 'Relieves allergies and hives'),
('Motrin', 'Johnson & Johnson', 'Relieves pain and reduces inflammation'),
('Allegra', 'Sanofi', 'Relieves allergies and hay fever symptoms'),
('Prilosec', 'Procter & Gamble', 'Treats acid reflux and heartburn'),
('Nexium', 'AstraZeneca', 'Treats acid reflux and ulcers'),
('Amoxicillin', 'Novartis', 'Antibiotic for bacterial infections'),
('Cipro', 'Bayer', 'Antibiotic for urinary tract infections and bacterial infections'),
('Levothyroxine', 'Abbott Laboratories', 'Treats hypothyroidism and goiter'),
('Metformin', 'Merck', 'Treats type 2 diabetes and metabolic syndrome');

INSERT INTO Perscriptions (medicationID, patientID, perscribingPhysician, dosage, frequency, amountOfDoses)
VALUES
(2, 3, 1, '20mg', 'Once a day', 30),
(8, 2, 4, '500mg', 'Every 6 hours', 20),
(3, 1, 3, '1000mg', 'Every 8 hours', 15),
(5, 5, 2, '25mg', 'Every 4 hours', 10),
(4, 6, 1, '10mg', 'Twice a day', 60);


INSERT INTO LabTests (testName, testDescription, resultWaitTime, thirdParty)
VALUES
('Complete Blood Count', 'Blood test to measure red and white blood cells and platelets', '24 hours', 'Quest Diagnostics'),
('Basic Metabolic Panel', 'Blood test to assess kidney and liver function, glucose levels, and electrolyte balance', '24 hours', 'LabCorp'),
('Lipid Panel', 'Blood test to measure cholesterol and triglyceride levels', '24 hours', 'Quest Diagnostics'),
('Thyroid Stimulating Hormone (TSH)', 'Blood test to measure thyroid function', '24 hours', 'Quest Diagnostics'),
('Hemoglobin A1C (HbA1c)', 'Blood test to measure blood sugar levels over the past 2-3 months', '48 hours', 'LabCorp'),
('Urinalysis', 'Test to analyze urine for signs of infection, kidney disease, or diabetes', '24 hours', 'Quest Diagnostics'),
('Strep Test', 'Swab of throat to check for bacteria that causes strep throat', '2 hours', 'Quest Diagnostics'),
('Pregnancy Test', 'Urine or blood test to determine pregnancy', '1 hour', 'LabCorp'),
('Fecal Occult Blood Test (FOBT)', 'Test to detect hidden blood in stool, which can be a sign of colorectal cancer', '48 hours', 'Quest Diagnostics'),
('Hepatitis C Antibody Test', 'Blood test to detect antibodies to the hepatitis C virus', '48 hours', 'LabCorp'),
('X-Ray', 'Imaging of internal structures', '72 hours', 'XYZ Labs');

INSERT INTO LabResults (testID, testDate, patientID, testResults) VALUES
(1, '2023-04-28', 1, 'Red blood cells: 4.5 x10^6/mcL, White blood cells: 7.0 x10^3/mcL, Platelets: 250 x10^3/mcL'),
(2, '2023-04-29', 2, 'Sodium: 140 mmol/L, Potassium: 4.0 mmol/L, Creatinine: 1.0 mg/dL, Glucose: 110 mg/dL'),
(3, '2023-04-30', 3, 'Total cholesterol: 180 mg/dL, Triglycerides: 120 mg/dL, HDL cholesterol: 50 mg/dL, LDL cholesterol: 100 mg/dL'),
(4, '2023-05-01', 4, 'Thyroid Stimulating Hormone: 2.5 mIU/L, Free T4: 1.0 ng/dL'),
(5, '2023-05-02', 5, 'Hemoglobin A1C: 6.0%, Glucose: 100 mg/dL'),
(6, '2023-05-03', 6, 'Urine color: Yellow, Specific gravity: 1.015, Leukocytes: Negative, Nitrites: Negative, Protein: Negative, Glucose: Negative'),
(7, '2023-05-04', 1, 'Negative for streptococcus bacteria'),
(8, '2023-05-05', 2, 'Positive for pregnancy'),
(9, '2023-05-06', 3, 'No blood detected in stool'),
(10, '2023-05-07', 4, 'Positive for Hepatitis C antibody'),
(11, '2023-05-08', 5, 'No abnormal findings in X-ray');

INSERT INTO Rooms(roomNumber, roomType, capacity, available) VALUES 
('101', 'Standard', 2, 1),
('102', 'Standard', 2, 0),
('103', 'Standard', 1, 1),
('104', 'Standard', 2, 0),
('105', 'Standard', 2, 1),
('106', 'Standard', 1, 1),
('107', 'Private', 3, 0),
('108', 'Private', 3, 1),
('109', 'Semi-Private', 2, 1),
('201', 'Standard', 2, 1),
('202', 'Standard', 2, 1),
('203', 'Standard', 1, 0),
('204', 'Standard', 2, 0),
('205', 'ICU', 3, 1),
('206', 'ICU', 3, 1),
('207', 'ICU', 2, 0),
('301', 'Pediatric', 4, 1),
('302', 'Pediatric', 4, 1),
('303', 'Pediatric', 3, 0),
('304', 'Pediatric', 3, 1),
('401', 'Operating', 6, 0),
('402', 'Operating', 6, 1),
('403', 'Operating', 5, 0);

INSERT INTO Admissions (admissionDate, dischargeDate, patientID, physicianID, roomNumber) VALUES 
('2023-04-30', NULL, 1, 6, 403),
('2023-04-30', NULL, 2, 2, 102),
('2023-04-30', NULL, 3, 1, 103),
('2023-04-30', NULL, 4, 3, 301),
('2023-04-30', NULL, 5, 10, 203),
('2023-04-30', NULL, 6, 4, 106),
('2023-04-30', NULL, 7, 2, 107),
('2023-04-30', NULL, 8, 7, 108),
('2023-04-30', NULL, 9, 10, 109),
('2023-04-30', NULL, 10, 7, 204);

INSERT INTO auditTrail (patientID, action, actionDate, oldData, newData)
VALUES
(1, 'Update', '2023-04-30 10:05:00', 'Patient Name: John Smith, DOB: 1985-07-10', 'Patient Name: John Doe, DOB: 1990-05-12'),
(2, 'Insert', '2023-04-29 15:30:00', NULL, 'Patient Name: Jack Johnson, DOB: 1975-02-15, Home Address: 123 Oak St, Rochester, New York USA, Phone: 555-555-4444, Emergency Contact: Jane Johnson, 555-555-5555, Consent Form: 1, Insurance Provider: Aetna, Insurance Policy No.: 987654321'),
(3, 'Delete', '2023-04-28 09:45:00', 'Patient Name: Bob Johnson, DOB: 1970-01-01, Home Address: 789 Oak St, Rochester, New York USA, Phone: 555-555-9876, Emergency Contact: Robby Bobby Lee, 555-555-3456, Consent Form: 1, Insurance Provider: United Healthcare, Insurance Policy No.: 111111111', NULL),
(4, 'Update', '2023-04-30 12:15:00', 'Patient Name: Johnny Kronenberg, DOB: 1995-09-23', 'Patient Name: John Kronenberg, DOB: 1995-09-23'),
(5, 'Insert', '2023-04-30 14:30:00', NULL, 'Patient Name: Ashley Williams, DOB: 1989-06-23, Home Address: 789 Maple St, San Francisco, California USA, Phone: 415-555-9999, Emergency Contact: Emily Williams, 415-555-1111, Consent Form: 1, Insurance Provider: BlueCross, Insurance Policy No.: 11112222');

INSERT INTO Billing (patientID, billingDate, fullCharges, insuranceProvider, insurancePolicyNo, coPay, paymentInfo)
VALUES
(1, '2023-04-30 10:30:00', 1000.00, 'BlueCross', '123456789', 100.00, 'Credit Card: **** **** **** 1234'),
(2, '2023-04-29 16:00:00', 2500.00, 'BlueCross', '987654321', 250.00, 'Credit Card: **** **** **** 5678'),
(3, '2023-04-28 10:00:00', 500.00, 'United Healthcare', '111111111', 50.00, 'Cash'),
(4, '2023-04-30 11:00:00', 1500.00, 'United Healthcare', '22222222', 150.00, 'Credit Card: **** **** **** 5678'),
(5, '2023-04-30 12:00:00', 800.00, 'BlueCross', '7432986492', 80.00, 'Credit Card: **** **** **** 9101');

INSERT INTO Notes (patientID, physicianID, nurseID, vitals, symptoms, diagnosis, noteDate)
VALUES
(1, 2, 4, 'BP: 120/80, HR: 80 bpm, RR: 16 bpm, O2 Sat: 98%', 'Patient admitted with a broken femur. Undergoing surgical intervention for repair and management of pain.', 'Fractured right femur', '2023-04-28 13:45:00'),
(2, 1, 3, 'BP: 140/90, HR: 100 bpm, RR: 20 bpm, O2 Sat: 94%', 'Patient presented with severe breathing difficulties due to asthma attack. Administered nebulizer therapy and prescribed appropriate medications.', 'Acute exacerbation of asthma', '2023-04-29 08:15:00'),
(3, 3, 5, 'BP: 160/100, HR: 110 bpm, RR: 22 bpm, O2 Sat: 96%', 'Patient reports severe chest pain, indicative of a possible heart attack. Admitted to the hospital for further evaluation and management.', 'Acute coronary syndrome', '2023-04-30 11:30:00'),
(4, 1, 3, 'BP: 110/70, HR: 90 bpm, RR: 18 bpm, O2 Sat: 99%', 'Patient admitted for severe dehydration and electrolyte imbalances requiring intravenous fluids and monitoring.', 'Dehydration and electrolyte imbalances', '2023-04-30 16:20:00'),
(5, 4, 5, 'BP: 130/80, HR: 70 bpm, RR: 14 bpm, O2 Sat: 100%', 'Patient presents with suicidal thoughts and is at immediate risk of harm. Admitted for urgent psychiatric evaluation and care.', 'Major depressive disorder with suicidal ideation', '2023-04-29 21:10:00'),
(6, 2, 4, 'BP: 140/90, HR: 80 bpm, RR: 20 bpm, O2 Sat: 98%', 'Patient admitted with severe head injury following a motor vehicle accident. Undergoing urgent medical evaluation and management.', 'Closed head injury with possible concussion', '2023-04-28 19:55:00'),
(7, 3, 5, 'BP: 150/95, HR: 105 bpm, RR: 18 bpm, O2 Sat: 95%', 'Patient admitted with severe breathing difficulties due to underlying lung disease. Undergoing treatment with oxygen therapy and nebulizers.', 'Chronic obstructive pulmonary disease exacerbation', '2023-04-30 07:40:00'),
(8, 1, 4, 'BP: 130/80, HR: 95 bpm, RR: 16 bpm, O2 Sat: 97%', 'Patient admitted with severe abdominal pain and signs of internal bleeding. Undergoing diagnostic tests and appropriate interventions.', 'Gastrointestinal bleeding', '2023-04-28 22:30:00'),
(9, 2, 5, 'BP: 120/70, HR: 80 bpm, RR: 18 bpm, O2 Sat: 99%', 'Patient admitted with severe symptoms of food poisoning. Requiring intravenous fluids and close monitoring for potential complications.', 'Acute gastroenteritis', '2023-04-29 16:50:00'),
(10, 3, 4, 'BP: 140/90, HR: 100 bpm, RR: 20 bpm, O2 Sat: 95%', 'Patient admitted with acute kidney injury and electrolyte imbalances. Undergoing hemodialysis and monitoring of renal function.', 'Acute kidney injury with electrolyte imbalances', '2023-04-30 14:15:00');

INSERT INTO DiagnosisRecords(patientID, physicianID, diagnosis, treatmentPlan) VALUES
(1, 6, 'Broken femur', 'Surgical repair of the broken bone and management of pain with medications.'),
(2, 2, 'Asthma exacerbation', 'Administered nebulizer therapy and prescribed Allegra for long-term management.'),
(3, 1, 'Possible heart attack', 'Immediate evaluation for diagnosis and treatment of a heart attack, including Lipitor perscription and potential intervention.'),
(4, 3, 'Dehydration and electrolyte imbalance', 'Intravenous fluids and electrolyte replacement therapy, along with monitoring of fluid and electrolyte levels.'),
(5, 10, 'Acute suicidal ideation', 'Urgent psychiatric evaluation and treatment, potentially including medication and therapy.'),
(6, 4, 'Severe head injury', 'Urgent medical evaluation and management, including potential surgical intervention and monitoring for complications.'),
(7, 2, 'Severe respiratory distress due to underlying lung disease', 'Oxygen therapy, nebulizers, and treatment for underlying lung disease.'),
(8, 7, 'Internal bleeding', 'Diagnostic tests to identify source and extent of bleeding, potential surgical intervention and blood transfusions.'),
(9, 10, 'Severe food poisoning', 'Intravenous fluids and electrolyte replacement therapy, monitoring for complications, and medication to manage symptoms.'),
(10, 7, 'Severe allergic reaction', 'Immediate administration of epinephrine and other medications to manage symptoms, and monitoring for potential complications. Long-term management may include avoiding triggers and carrying epinephrine auto-injectors. ')

INSERT INTO Visitations(patientID, visitDate, visitReason) VALUES 
  (1, '2023-04-30 10:00:00', 'Bringing flowers'),
  (2, '2023-04-30 13:00:00', 'Checking in on patient'),
  (3, '2023-04-30 16:00:00', 'Dropping off get-well card'),
  (4, '2023-05-01 10:00:00', 'Bringing some books to read'),
  (5, '2023-05-01 14:00:00', 'Bringing some favorite snacks'),
  (6, '2023-05-01 16:00:00', 'Bringing some movies to watch'),
  (7, '2023-05-02 10:00:00', 'Bringing some magazines to read'),
  (8, '2023-05-02 12:00:00', 'Bringing a puzzle to work on'),
  (9, '2023-05-02 15:00:00', 'Bringing a card game to play'),
  (10, '2023-05-03 10:00:00', 'Bringing a stuffed animal to keep company');


INSERT INTO Procedures(procedureName, prodcedureDescription) VALUES 
('Surgical repair of broken bone', 'Procedure involving surgical intervention to repair a broken bone and manage pain.'),
('Nebulizer therapy', 'Procedure involving administration of medication through a nebulizer to manage respiratory distress.'),
('Evaluation and treatment of heart attack', 'Procedure involving immediate evaluation and treatment for a suspected heart attack, potentially including medication and intervention.'),
('Intravenous fluid and electrolyte replacement therapy', 'Procedure involving administration of fluids and electrolytes through an intravenous line to treat dehydration and electrolyte imbalances.'),
('Psychiatric evaluation and treatment', 'Procedure involving urgent evaluation and treatment for acute psychiatric conditions such as suicidal ideation.');


INSERT INTO ProcedureRecords(procedureID, procedureDate, patientID, physicianID, nurseID, noteID) VALUES
(1, '2023-04-30 10:30:00', 1, 6, NULL, NULL),
(2, '2023-04-30 11:45:00', 2, 2, NULL, NULL),
(3, '2023-04-30 12:00:00', 3, 1, NULL, NULL),
(4, '2023-04-30 13:15:00', 4, 3, NULL, NULL),
(5, '2023-04-30 14:30:00', 5, 10, NULL, NULL);

INSERT INTO Appointments (appointmentDate, patientID, physicianID, location, reasonForAppointment, noteID, medicationsPerscribed)
VALUES
('2023-05-05 10:00:00', 3, 1, 2, 'Follow-up appointment for heart condition', 3, NULL),
('2023-05-07 14:30:00', 4, 5, 2, 'Annual physical exam', 2, NULL),
('2023-05-08 09:15:00', 1, 1, 2, 'Post-surgery check-up for broken femur', 1, 5),
('2023-05-09 11:00:00', 4, 8, 4, 'Follow-up appointment for dehydration and electrolyte imbalances', 4, 9),
('2023-05-10 13:45:00', 5, 10, 2, 'Psychiatric evaluation and care for suicidal thoughts', 5, 11);

-- SELECT * FROM Appointments;

INSERT INTO locations (locationName, buildingName)
VALUES 
('Emergency Department', 'Main Hospital Building'),
('Cardiology Unit', 'West Wing'),
('Radiology Department', 'North Wing'),
('Intensive Care Unit', 'East Wing'),
('Surgical Ward', 'South Wing'),
('Pediatric Ward', 'West Wing' ),
('Psychiatric ward', 'North Wing');
