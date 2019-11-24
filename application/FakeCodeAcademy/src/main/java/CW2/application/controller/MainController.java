package CW2.application.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import CW2.application.FakeCodeAcademyApplication;

@Controller
public class MainController {
	/**
	 * simply shows the start view
	 * 
	 * @return
	 */
	@RequestMapping(value = "/")
	public String landing() {
		
		return "index";
	}
}
