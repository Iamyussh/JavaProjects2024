package com.example.firstSpringProject.Controller;

import com.example.firstSpringProject.Repository.StudentRepository;
import com.example.firstSpringProject.model.Student;
import org.apache.velocity.exception.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import jakarta.validation.Valid;

import java.util.List;

@CrossOrigin("*")
@RestController
@RequestMapping("/api/v1/students")
public class StudentController {
        private final StudentRepository studentRepository;

    @Autowired
    public StudentController(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    @GetMapping
    public List<Student> getAllstudents(){
        return studentRepository.findAll();
    }

    @PostMapping
    public ResponseEntity<Student> createStudent(@Valid @RequestBody Student student){
        Student createdstudent= studentRepository.save(student);


        return ResponseEntity.status(HttpStatus.CREATED).body(createdstudent);
    }


    @GetMapping("{id}")
    public ResponseEntity<Student> getmappingbyId(@PathVariable long studentId){
        Student student = studentRepository.findById(studentId)
                .orElseThrow(()-> new ResourceNotFoundException("Student id was not found" +studentId) );

        return ResponseEntity.ok(student);

    }


    @PutMapping("{id}")
    public ResponseEntity<Student> updateStudent( @PathVariable long studentId,@Valid @RequestBody Student studentdetails){

        Student student = studentRepository.findById(studentId)
        .orElseThrow(()-> new ResourceNotFoundException("Student id was not found" +studentId) );

        student.setId(studentdetails.getId());
        student.setAddress(studentdetails.getAddress());
        student.setPhoneNumber((studentdetails.getPhoneNumber()));
        student.setFirstName(studentdetails.getFirstName());
        student.setLastName(studentdetails.getLastName());
        student.setEmailId(studentdetails.getEmailId());

        Student updatedstudent= studentRepository.save(student);
        return ResponseEntity.ok(updatedstudent);

    }

    @DeleteMapping("{id}")
    public ResponseEntity<Void> deleteStudent(@PathVariable long studentId){

        Student student = studentRepository.findById(studentId)
                .orElseThrow(()-> new ResourceNotFoundException("Student id was not found" +studentId));
        studentRepository.delete(student);
        return ResponseEntity.noContent().build();
    }



}
