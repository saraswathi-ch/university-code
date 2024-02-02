package com.example.university.repository;

import com.example.university.model.Student;

import java.util.*;
import com.example.university.model.Course;

public interface StudentRepository {
    
    ArrayList<Student> getStudents();

    Student getStudentById(int studentId);

    Student addStudent(Student student);

    Student updateStudent(int studentId, Student student);

    void deleteStudent(int studentId);

    List<Course> getStudentCourses(int studentId);
}