package com.venky;

import java.util.ArrayList;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model m) {
		User user = new User();
		user.setHiddenMsg("Java in simple way");
		m.addAttribute("user", user);
		intializeFromValues(m);
		return "register";
	}

	@RequestMapping(value = "/reg", method = RequestMethod.POST)
	public String displayUserDetails(@ModelAttribute User user, Model m) {

		m.addAttribute("user", user);
		return "success";
	}

	public void intializeFromValues(Model m) {
		List<String> courses = new ArrayList<>();
		courses.add("java");
		courses.add("j2ee");
		courses.add("spring");
		courses.add("hibernate");
		courses.add("jquery");
		m.addAttribute("courses", courses);

		List<String> genders = new ArrayList<>();
		genders.add("male");
		genders.add("female");
		m.addAttribute("genders", genders);

		List<String> batches = new ArrayList<String>();
		batches.add("evening");
		batches.add("morning");
		m.addAttribute("batches", batches);
	}

}
