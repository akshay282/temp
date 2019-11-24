package CW2.application.controller;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import CW2.application.FakeCodeAcademyApplication;

@Controller
public class faqController {
	
	@RequestMapping(value = "/faq")
	public String question() {
		
		return "faq";
	}


}