package com.vottingapp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.MvcNamespaceHandler;

import com.vottingapp.entity.Candidate;
import com.vottingapp.service.CandidateService;

@RestController
public class CandidateController {

	@Autowired
	private CandidateService candidateService;

	@PostMapping("votetocadidate")
	public ModelAndView voteToCandidate(@RequestParam("candidate") Long candidateId, HttpSession session) {
		ModelAndView mv = new ModelAndView();

		boolean status = candidateService.VoteTOCandidate(candidateId, session);
		if (status) {
			mv.addObject("msg", "Votting Successfully");
			mv.setViewName("index");
		} else {
			mv.addObject("msg", "You already voted");
			mv.setViewName("index");
		}
		return mv;
	}
	@GetMapping("/getcandidate")
	public ModelAndView getAllCandidate(ModelAndView mv) {

		List<Candidate> candidates = candidateService.getAllCandidate();
		mv.addObject("candidate", candidates);
		return null;
	}

}
