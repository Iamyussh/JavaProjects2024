package com.example.firstSpringProject.Service;

import com.example.firstSpringProject.model.Student;

import java.util.List;
import java.util.Optional;


public interface Studentservice {

         Student createStudent(Student student);
         List<Student> getallStudents();
         Optional<Student> getStudentbyId(Long studentId);
         Student updateStudent(Long studentId,Student studentdetails);
         void deleteStudent(Long studentId);

}
