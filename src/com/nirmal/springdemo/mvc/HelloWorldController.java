package com.nirmal.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloWorldController {

	//need a controller method to show the initial html form
	@RequestMapping("/showForm")
	public String showPage()
	{
		return "helloworld-form";
	}
	
	//need a controller method to process the html form
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}
	
	//new method to read form data
	//add data to the model
	@RequestMapping("/processFormVersionTwo")
	public String letsShoutDude(HttpServletRequest request,Model model)
	{
		//read the request parameter from the html form
		String theName=request.getParameter("studentName");
		
		//convert the data to upper case
		theName=theName.toUpperCase();
		
		//create the message
		String message="Yo! "+theName;
		
		//add message to the model
		model.addAttribute("message",message);
		
		return "helloworld";
	}
	@RequestMapping("/processFormVersionThree")
	public String processFormVersionThree(@RequestParam("studentName") String theName,Model model)
	{
				
		//convert the data to upper case
		theName=theName.toUpperCase();
		
		//create the message
		String message="Hey my Friend from V3!  "+theName;
		
		//add message to the model
		model.addAttribute("message",message);
		
		return "helloworld";
	}
}
