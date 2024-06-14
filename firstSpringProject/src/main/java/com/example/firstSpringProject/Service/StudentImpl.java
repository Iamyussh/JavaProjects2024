package com.example.firstSpringProject.Service;

import com.example.firstSpringProject.Repository.StudentRepository;
import com.example.firstSpringProject.model.Student;
import org.apache.velocity.exception.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class StudentImpl implements Studentservice{
    private final StudentRepository studentRepository;
    @Autowired
    public StudentImpl(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    @Override
    public Student createStudent(Student student) {
        return studentRepository.save(student);
    }

    @Override
    public List<Student> getallStudents() {
        return studentRepository.findAll();
    }

    @Override
    public Optional<Student> getStudentbyId(Long studentId) {
        return studentRepository.findById(studentId);
    }

    @Override
    public Student updateStudent(Long studentId, Student studentdetails) {

        Student student = studentRepository.findById(studentId)
        .orElseThrow(() -> new ResourceNotFoundException("Student not found" +studentId));

        student.setId(studentdetails.getId());
        student.setAddress(studentdetails.getAddress());
        student.setFirstName(studentdetails.getFirstName());
        student.setLastName(studentdetails.getLastName());
        student.setDateofBirth(studentdetails.getDateofBirth());
        student.setPhoneNumber((studentdetails.getPhoneNumber()));
        return studentRepository.save(student);
    }

        @Override
        public void deleteStudent(Long studentId) {
            Student student = studentRepository.findById(studentId)
                    .orElseThrow(() -> new ResourceNotFoundException("Student not found with id: " + studentId));

            studentRepository.delete(student);

        }
}
