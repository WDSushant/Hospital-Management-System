CREATE DATABASE hospitalDB;
USE hospitalDB;
CREATE TABLE Doctors (
    doctor_id INT AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialty VARCHAR(100),
    contact_info VARCHAR(100),
    availability VARCHAR(50),
    PRIMARY KEY (doctor_id)
);
CREATE TABLE Patients (
    patient_id INT AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    gender CHAR(1),
    contact_info VARCHAR(100),
    PRIMARY KEY (patient_id)
);
CREATE TABLE Appointments (
    appointment_id INT AUTO_INCREMENT,
    doctor_id INT,
    patient_id INT,
    appointment_date DATE,
    appointment_time TIME,
    description TEXT,
    PRIMARY KEY (appointment_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);
CREATE TABLE MedicalRecords (
    record_id INT AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    visit_date DATE,
    diagnosis VARCHAR(255),
    prescribed_medication VARCHAR(255),
    notes TEXT,
    PRIMARY KEY (record_id),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

INSERT INTO Doctors (first_name, last_name, specialty, contact_info, availability) 
VALUES ('John', 'Doe', 'Cardiologist', 'johndoe@example.com', 'Monday, Wednesday, Friday');

INSERT INTO Doctors (first_name, last_name, specialty, contact_info, availability) 
VALUES ('Jane', 'Smith', 'Neurologist', 'janesmith@example.com', 'Tuesday, Thursday, Saturday');

INSERT INTO Doctors (first_name, last_name, specialty, contact_info, availability) 
VALUES ('Alex', 'Brown', 'Orthopedic', 'alexbrown@example.com', 'Monday, Thursday, Saturday');

-- Inserting data into the Patients table
INSERT INTO Patients (first_name, last_name, dob, gender, contact_info) 
VALUES ('Alice', 'Johnson', '1980-10-25', 'F', 'alicejohnson@example.com');

INSERT INTO Patients (first_name, last_name, dob, gender, contact_info) 
VALUES ('Bob', 'Jackson', '1985-07-19', 'M', 'bobjackson@example.com');

INSERT INTO Patients (first_name, last_name, dob, gender, contact_info) 
VALUES ('Charlie', 'Davis', '1990-06-15', 'M', 'charliedavis@example.com');

-- Inserting data into the Appointments table
INSERT INTO Appointments (doctor_id, patient_id, appointment_date, appointment_time, description) 
VALUES (1, 1, '2023-08-10', '10:00:00', 'Regular check-up');

INSERT INTO Appointments (doctor_id, patient_id, appointment_date, appointment_time, description) 
VALUES (2, 2, '2023-08-11', '14:00:00', 'Follow-up from last visit');

-- Inserting data into the MedicalRecords table
INSERT INTO MedicalRecords (patient_id, doctor_id, visit_date, diagnosis, prescribed_medication, notes) 
VALUES (1, 1, '2023-07-10', 'High blood pressure', 'Lisinopril', 'Patient to return in a month for check-up');

INSERT INTO MedicalRecords (patient_id, doctor_id, visit_date, diagnosis, prescribed_medication, notes) 
VALUES (2, 2, '2023-07-11', 'Migraine', 'Topiramate', 'Patient to report any side effects immediately');

-- Inserting data into the Billing table
INSERT INTO Billing (patient_id, bill_date, amount_due, due_date, payment_status) 
VALUES (1, '2023-08-01', 150.00, '2023-08-31', 'Pending');
 
INSERT INTO Billing (patient_id, bill_date, amount_due, due_date, payment_status) 
VALUES (2, '2023-08-01', 200.00, '2023-08-31', 'Pending');


















