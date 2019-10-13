package com.gmail.jkl123331ggg;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "home";
	}
	
	@RequestMapping(value = "information.do", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		return "information";
		

	}
	
	@RequestMapping(value = "school.do", method = RequestMethod.GET)
	public String school(Locale locale, Model model) {
		return "school";
	}
	
	
	
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String login1(Locale locale, Model model) {
		return "login";
	}
	
	
	@RequestMapping(value = "join.do", method = RequestMethod.GET)
	public String join(Locale locale, Model model) {
		return "join";
	}
	
	
}
