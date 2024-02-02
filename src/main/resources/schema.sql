create table if not exists professor(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name varchar(255),
    department varchar(255)
);

create table if not exists student(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name varchar(255),
    email varchar(255)
);

create table if not exists course(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name varchar(255),
    credits INT,
    professorId INT,
    FOREIGN KEY (professorId) REFERENCES professor(id)
);

create table if not exists course_student(
    studentId INT,
    courseId INT,
    PRIMARY KEY(studentId, courseId),
    FOREIGN KEY (studentId) REFERENCES student(id),
    FOREIGN KEY (courseId) REFERENCES course(id)
);