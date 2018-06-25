package com.test.service;

import java.util.List;

import com.test.model.Student;


public interface StudentService {

	List<Student> getAllStudents();
	Student getStudentById(int id);
	boolean addStudent(Student student);
	void updateStudent(Student student);
    void deleteStudent(int id);

}
