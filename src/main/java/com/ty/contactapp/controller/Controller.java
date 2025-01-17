package com.ty.contactapp.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ty.contactapp.entity.Contact;
import com.ty.contactapp.entity.User;
import com.ty.contactapp.service.ContactService;
import com.ty.contactapp.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@org.springframework.stereotype.Controller
public class Controller {

	@Autowired
	private UserService userService;

	@Autowired
	private ContactService contactService;

	@GetMapping("/")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView("index.jsp");
		mv.addObject("user", new User());
		return mv;
	}

	@PostMapping("/save")
	public ModelAndView register(User user) {

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

	@PostMapping("/login")
	public ModelAndView login(HttpServletRequest request) {
		String email = (String) request.getParameter("email");
		String password = (String) request.getParameter("password");

		Optional<User> opt = userService.findByEmail(email);

		if (opt.isPresent() && password.equals(opt.get().getPassword())) {
			User user = opt.get();
			HttpSession session = request.getSession(true);
			session.setAttribute("uid", user.getUid());
			ModelAndView mv = new ModelAndView("home.jsp");
			mv.addObject("contacts", user.getContacts());
			return mv;
		} else {
			ModelAndView mv = new ModelAndView("login.jsp");
			mv.addObject("msg", "Invalid Credentials");
			return mv;
		}
	}

	@GetMapping("/login")
	public String login() {
		return "login.jsp";
	}

	@GetMapping("/addcontact")
	public ModelAndView addContact() {

		ModelAndView mv = new ModelAndView("contact.jsp");
		mv.addObject("contact", new Contact());

		return mv;
	}

	@PostMapping("/addcontact")
	public ModelAndView addContactData(Contact contact, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		Integer uid = (Integer) session.getAttribute("uid");

		System.out.println(uid);
		Optional<User> user = userService.findById(uid);
		contact.setUser(user.get());

		System.out.println(contact.getAadhar());

		contactService.saveContact(contact);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home.jsp");
		mv.addObject("contacts", user.get().getContacts());
		return mv;

	}

	@GetMapping("/update")
	public ModelAndView update(@RequestParam Integer id) {

		Optional<Contact> opt = contactService.findById(id);
		Contact contact = opt.get();

		ModelAndView mv = new ModelAndView("update.jsp");
		mv.addObject("contact", contact);

		return mv;
	}

	@PostMapping("/update")
	public ModelAndView updateContact(Contact contact) {

		Contact dbcontact = contactService.findById(contact.getId()).get();

		dbcontact.setName(contact.getName());
		dbcontact.setPhone(contact.getPhone());
		dbcontact.setAadhar(contact.getAadhar());

		contactService.saveContact(dbcontact);

		ModelAndView mv = new ModelAndView("home.jsp");
		mv.addObject("contacts", dbcontact.getUser().getContacts());

		return mv;
	}

	@GetMapping("logout")
	public String logout(HttpServletRequest request) {

		HttpSession session = request.getSession(false);
		session.invalidate();

		return "login.jsp";
	}

	@GetMapping("/delete")
	public ModelAndView deleteContact(@RequestParam Integer id) {
		Contact contact = contactService.findById(id).get();
		Integer uid = contact.getUser().getUid();
		User user = userService.findById(uid).get();
		contactService.delete(contact);

		ModelAndView mv = new ModelAndView("home.jsp");
		mv.addObject("contacts", user.getContacts());

		return mv;
	}

	@ExceptionHandler(Exception.class)
	public ModelAndView exceptionHandling(Exception exception) {

		ModelAndView mv = new ModelAndView("errorpage.jsp");
		
		return mv;
	}

	/*
	 * @GetMapping("/update") public ModelAndView updateContact() {
	 * 
	 * ModelAndView mv = new ModelAndView("update.jsp"); mv.addObject("contact", new
	 * Contact()); return mv; }
	 * 
	 * @PostMapping("/update") public ModelAndView
	 * updateContactData(HttpServletRequest request, Contact contact) { HttpSession
	 * session = request.getSession(false);
	 * 
	 * Integer uid = (Integer) session.getAttribute("uid");
	 * 
	 * Optional<User> opt = userService.findById(uid); User user = opt.get();
	 * Integer id1 = Integer.parseInt(request.getParameter("id")); Optional<Contact>
	 * con = contactService.findById(id1);
	 * 
	 * if (con.isPresent()) { Contact up = con.get(); if (contact.getName() != null)
	 * { up.setName(contact.getName()); } if (contact.getAadhar() != null) {
	 * up.setAadhar(contact.getAadhar()); } if (contact.getPhone() != null) {
	 * up.setPhone(contact.getPhone()); }
	 * 
	 * contactService.saveContact(up); }
	 * 
	 * ModelAndView mv = new ModelAndView("home.jsp"); mv.addObject("contacts",
	 * user.getContacts());
	 * 
	 * return mv; }
	 * 
	 * @PostMapping("/delete") public ModelAndView
	 * deleteContactInfo(HttpServletRequest request) { HttpSession session =
	 * request.getSession(false); Integer id1 = (Integer)
	 * session.getAttribute("uid");
	 * 
	 * Optional<User> user1 = userService.findById(id1); User user = user1.get();
	 * 
	 * Integer id = Integer.parseInt(request.getParameter("id"));
	 * contactService.deleteById(id);
	 * 
	 * ModelAndView mv = new ModelAndView("home.jsp"); mv.addObject("contacts",
	 * user.getContacts());
	 * 
	 * return mv; }
	 */

}
