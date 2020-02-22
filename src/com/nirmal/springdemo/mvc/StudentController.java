package com.nirmal.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {

	@RequestMapping("/showForm")
	public String showForm(Model model) {

		// Create the new Student Object'
		Student theStudent = new Student();

		// Add the student object to model attributes
		model.addAttribute("student", theStudent);

		return "student-form";
	}

	@RequestMapping("processForm")
	public String processForm(@ModelAttribute("student") Student theStudent) {

		//log the firstName and lastName on console
		System.out.println("Confirm Student name is FirstName: "+theStudent.getFirstName()+"   "
				+ "LastName: "+theStudent.getLastName());
		return "student-confirmation-form";
	}
}
