package CW2.application.controller;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import CW2.application.FakeCodeAcademyApplication;

@Controller
public class questionController {
	
	
	@RequestMapping(value = "/questionList")
	public String questionList(Model model) {
		System.out.println(FakeCodeAcademyApplication.question_list);
		model.addAttribute("questions", FakeCodeAcademyApplication.question_list);

		return "landing";
	}
	@RequestMapping(value = "/question")
	public String question(Model model, @RequestParam String Q_id) {
		
		for (JSONObject i : FakeCodeAcademyApplication.question_list) {
			if ( i.get("Q_id").equals(Q_id)) {
				model.addAttribute("question", i);
			}
		}
		return "question";
	}


}