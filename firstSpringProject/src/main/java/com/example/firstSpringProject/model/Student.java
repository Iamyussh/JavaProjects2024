package com.example.firstSpringProject.model;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;


@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="students")
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name ="firstName")
    private String firstName;

    @Column(name="lastName")
    private String lastName;

    @Column(name="emailId")
    private String emailId;


    @Column(name="DateofBirth")
    private LocalDate DateofBirth;

    @Column(name="address")
    private String address;

    @Column(name="phoneNumber")
    private String phoneNumber;

}
