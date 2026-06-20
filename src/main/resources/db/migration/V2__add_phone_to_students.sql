ALTER TABLE students
    ADD COLUMN phone VARCHAR(15) DEFAULT 'N/A';

UPDATE students SET phone = '9876543210' WHERE name = 'Vasavi Thellajeera';
UPDATE students SET phone = '9123456789' WHERE name = 'Akash Dubey';