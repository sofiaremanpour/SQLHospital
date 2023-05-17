CREATE DATABASE Hospital;
/* You can uncomment and run the following lines of code to delete all the tables in the DB*/
-- USE Hospital;
-- GO
-- DECLARE @sql NVARCHAR(MAX) = N'';
-- SELECT @sql += N'DROP TABLE [' + SCHEMA_NAME(schema_id) + '].[' + name + '];'
--   FROM sys.tables;
-- EXEC sys.sp_executesql @sql;
-- DROP TABLE Patients;

CREATE TABLE Patients (
  patientID INT IDENTITY(1,1) PRIMARY KEY,
  patientName VARCHAR(255) NOT NULL,
  DOB DATE NOT NULL,
  homeAddress VARCHAR(255) NOT NULL,
  phone VARCHAR(255) NOT NULL,
  emergencyContact VARCHAR(255) NOT NULL,
  consentForm BIT NOT NULL DEFAULT 0,
  insuranceProvider VARCHAR(255) NOT NULL,
  insurancePolicyNo VARCHAR(255) NOT NULL
);

CREATE TABLE Departments (
departmentID INT PRIMARY KEY,
departmentName VARCHAR(255) NOT NULL
);

CREATE TABLE Physicians (
  physicianID INT IDENTITY(1,1) PRIMARY KEY,
  physicianName VARCHAR(255) NOT NULL,
  jobTitle VARCHAR(255) NOT NULL,
  specialty VARCHAR(255) NOT NULL,
  departmentID INT NOT NULL,
  phone VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  hireDate DATE NOT NULL,
  licenseInfo TEXT
  FOREIGN KEY (departmentID) REFERENCES Departments(departmentID),
);
CREATE TABLE Nurses (
  nurseID INT IDENTITY(1,1) PRIMARY KEY,
  nurseName VARCHAR(255) NOT NULL,
  jobTitle VARCHAR(255) NOT NULL,
  departmentID INT NOT NULL,
  phone VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  hireDate DATE NOT NULL,
  registered BIT NOT NULL
  FOREIGN KEY (departmentID) REFERENCES Departments(departmentID),
);

CREATE TABLE Medications (
  medicationID INT IDENTITY(1,1) PRIMARY KEY,
  medicationName VARCHAR(255) NOT NULL,
  brand VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL
);

CREATE TABLE Perscriptions (
  perscriptionID INT IDENTITY(1,1) PRIMARY KEY,
  medicationID INT NOT NULL,
  patientID INT NOT NULL,
  perscribingPhysician INT NOT NULL,
dosage VARCHAR(255) NOT NULL,
  frequency VARCHAR(255) NOT NULL,
  amountOfDoses INT NOT NULL,
  FOREIGN KEY (patientID) REFERENCES Patients(patientId),
  FOREIGN KEY (perscribingPhysician) REFERENCES Physicians(physicianID),
  FOREIGN KEY(medicationID) REFERENCES Medications(medicationID)
);

CREATE TABLE LabTests (
  testID INT IDENTITY(1,1) PRIMARY KEY,
  testName VARCHAR(255) NOT NULL,
  testDescription TEXT NOT NULL,
  resultWaitTime VARCHAR(255) NOT NULL,
  thirdParty TEXT
);

CREATE TABLE LabResults (
  labResultID INT IDENTITY(1,1) PRIMARY KEY,
  testID INT NOT NULL,
  testDate DATETIME NOT NULL,
  patientID INT NOT NULL,
  testResults TEXT NOT NULL,
  FOREIGN KEY (patientID) REFERENCES Patients(patientID),
  FOREIGN KEY (testID) REFERENCES LabTests(testID)
  --testID
);

CREATE TABLE Notes (
  noteID INT IDENTITY(1,1) PRIMARY KEY,
  patientID INT NOT NULL,
  physicianID INT,
  nurseID INT,
  vitals TEXT NOT NULL,
  symptoms TEXT NOT NULL,
  diagnosis TEXT,
  noteDate DATETIME NOT NULL,
  FOREIGN KEY (patientID) REFERENCES Patients(patientID),
  FOREIGN KEY (physicianID) REFERENCES Physicians(physicianID),
  FOREIGN KEY (nurseID) REFERENCES Nurses(nurseID),
);

CREATE TABLE Appointments (
  appointmentID INT IDENTITY(1,1) PRIMARY KEY,
  appointmentDate DATETIME NOT NULL,
  patientID INT NOT NULL,
  physicianID INT NOT NULL,
  location INT,
  reasonForAppointment TEXT,
  noteID INT,
  medicationsPerscribed INT,
  FOREIGN KEY (noteID) REFERENCES Notes(noteID),
  FOREIGN KEY (location) REFERENCES Locations(locationID),
  FOREIGN KEY (patientID) REFERENCES Patients(patientID),
  FOREIGN KEY (physicianID) REFERENCES Physicians(physicianID),
  FOREIGN KEY (medicationsPerscribed) REFERENCES Medications(medicationID)
);

CREATE TABLE Rooms (
    roomNumber INT PRIMARY KEY,
    roomType VARCHAR(255) NOT NULL,
    capacity INT NOT NULL,
    available BIT NOT NULL
);

CREATE TABLE Admissions (
  admissionID INT IDENTITY(1,1) PRIMARY KEY,
  admissionDate DATETIME NOT NULL,
  dischargeDate DATETIME,
  patientID INT NOT NULL,
  physicianID INT,
  roomNumber INT NOT NULL,
  FOREIGN KEY (patientID) REFERENCES Patients(patientID),
  FOREIGN KEY (physicianID) REFERENCES Physicians(physicianID),
  FOREIGN KEY (roomNumber) REFERENCES Rooms(roomNumber),
);

CREATE TABLE Procedures (
  procedureID INT IDENTITY(1,1) PRIMARY KEY,
  procedureName VARCHAR(255) NOT NULL,
  prodcedureDescription TEXT NOT NULL,
);

CREATE TABLE ProcedureRecords (
  procedureRecID INT IDENTITY(1,1) PRIMARY KEY,
  procedureID INT NOT NULL,
  procedureDate DATETIME NOT NULL,
  patientID INT NOT NULL,
  physicianID INT NOT NULL,
  nurseID INT,
  noteID INT,
  FOREIGN KEY (noteID) REFERENCES Notes(noteID),
  FOREIGN KEY (procedureID) REFERENCES Procedures(procedureID),
  FOREIGN KEY (nurseID) REFERENCES Nurses(nurseID),
  FOREIGN KEY (patientID) REFERENCES Patients(patientID),
  FOREIGN KEY (physicianID) REFERENCES Physicians(physicianID)
);

CREATE TABLE Billing (
  billID INT IDENTITY(1,1) PRIMARY KEY,
  patientID INT NOT NULL,
  billingDate DATETIME NOT NULL,
  fullCharges DECIMAL(10,2) NOT NULL,
  insuranceProvider VARCHAR(255),
  insurancePolicyNo VARCHAR(255),
  coPay DECIMAL(10,2),
  paymentInfo TEXT NOT NULL,
  FOREIGN KEY (patientID) REFERENCES Patients(patientID)
);

CREATE TABLE DiagnosisRecords (
  diagnosisID INT IDENTITY(1,1) PRIMARY KEY,
  patientID INT NOT NULL,
  physicianID INT NOT NULL,
  diagnosis TEXT NOT NULL,
  treatmentPlan TEXT NOT NULL,
  FOREIGN KEY (patientID) REFERENCES Patients(patientID),
  FOREIGN KEY (physicianID) REFERENCES Physicians(physicianID)
);

CREATE TABLE Visitations (
  visitornID INT IDENTITY(1,1) PRIMARY KEY,
  patientID INT NOT NULL,
  visitDate DATETIME NOT NULL,
  visitReason TEXT NOT NULL,
  FOREIGN KEY (patientID) REFERENCES Patients(patientID)
);
CREATE TABLE auditTrail (
  auditID INT IDENTITY(1,1) PRIMARY KEY,
  patientID INT NOT NULL,
  action VARCHAR(255) NOT NULL,
  actionDate DATETIME NOT NULL,
  oldData TEXT,
  newData TEXT,
  FOREIGN KEY (patientID) REFERENCES Patients(patientID),
);

CREATE Table Locations(
    locationID INT IDENTITY(1,1) PRIMARY KEY,
    locationName VARCHAR(255) NOT NULL,
    buildingName VARCHAR(255) NOT NULL,
);
