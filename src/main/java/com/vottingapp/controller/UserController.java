package com.vottingapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.vottingapp.entity.Candidate;
import com.vottingapp.entity.User;
import com.vottingapp.service.CandidateService;
import com.vottingapp.service.UserService;

@RestController
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private CandidateService candidateService;

	@GetMapping("/home")
	public ModelAndView homePage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}

	@PostMapping("/login")
	public ModelAndView loginUser(@ModelAttribute User user, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		int status = userService.findUserByUserNameAndPassWord(user.getUserName(), user.getPassWord(), session);
		if (status == 2) {
			mv.setViewName("vottingpage");
		} else if (status == 1) {
			List<Candidate> allcandidate = candidateService.getAllCandidate();
			mv.addObject("candidate", allcandidate);
			mv.setViewName("adminpage");
		} else {
			mv.addObject("msg", "Please Check UserName And PassWord");
			mv.setViewName("index");
		}

		return mv;
	}

	@GetMapping("/registerpage")
	public ModelAndView registerpage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("registerpage");
		return mv;
	}

	@PostMapping("/registeruser")
	public ModelAndView registerUser(@ModelAttribute User user) {
		ModelAndView mv = new ModelAndView();
		boolean status = userService.RegisterUser(user);
		if (status) {
			mv.addObject("msg", "User Register Successfully");
		} else {
			mv.addObject("msg", "Something went wrong");

		}
		mv.setViewName("index");
		return mv;
	}

}
