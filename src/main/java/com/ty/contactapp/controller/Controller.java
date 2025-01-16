package com.ty.contactapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ty.contactapp.entity.User;
import com.ty.contactapp.service.UserService;

@org.springframework.stereotype.Controller
public class Controller {

	@Autowired
	private UserService userService;

	@GetMapping("/")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView("index.jsp");
		mv.addObject("user", new User());
		return mv;
	}

	@PostMapping("/save")
	public ModelAndView register(User user) {

		System.out.println(user);
		boolean register = userService.register(user);
		if (register) {
			ModelAndView mv = new ModelAndView("login.jsp");
			mv.addObject("msg", "Registred Successfully");
			return mv;
		} else {
			ModelAndView mv = new ModelAndView("index.jsp");
			mv.addObject("msg", "Already Registred");
			return mv;
		}

	}

}
