package com.training.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.training.entity.Student;
import com.training.repository.StudentRepository;

@Controller
public class StudentController {
	@Autowired
	private StudentRepository studentRepo;
	
	@RequestMapping("/add-student")
	
	public String saveStudents(Student student, Map map) {
		studentRepo.save(student);
		map.put("message", "Record Added Sucessfully");
		return "index.jsp";
	}

 
	@RequestMapping("/show-student")
	public String studentAll(Map map) {
		List<Student> list=studentRepo.findAll();
		map.put("sms",list);
		return "viewStuden.jsp";
}

	@RequestMapping("/delete-student")
		public String delete(@RequestParam int rollno,  Map map) {
		studentRepo.deleteById(rollno);
		map.put("message", "Record delete Sucessfully");
		return"index.jsp";
	}
	@RequestMapping("/edit-student")
	public String edit(@RequestParam int rollno,  Map model) {
	Student student=studentRepo.findById(rollno).get();
	model.put("student", student);
	return"editStudent.jsp";
	
	
	
}
	@RequestMapping("/update-student")
	public String update(Student student, Map map) {
		studentRepo.save(student);
		map.put("message", "Record updated Sucessfully");
		return "index.jsp";
}
}