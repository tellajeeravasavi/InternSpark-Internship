CREATE TABLE students (
                          id      BIGINT AUTO_INCREMENT PRIMARY KEY,
                          name    VARCHAR(100) NOT NULL,
                          email   VARCHAR(150) NOT NULL UNIQUE,
                          course  VARCHAR(100) NOT NULL
);

INSERT INTO students (name, email, course) VALUES
                                               ('Vasavi Thellajeera', 'vasavi@mail.com', 'Java Development'),
                                               ('Akash Dubey', 'akash@mail.com', 'Spring Boot'),
                                               ('Rubi Singh', 'rubi@mail.com', 'Database Design');