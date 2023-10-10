package com.vottingapp.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vottingapp.entity.Candidate;
import com.vottingapp.entity.User;
import com.vottingapp.repository.CandidateRepository;
import com.vottingapp.repository.UserRepository;

@Service
public class CandidateService {
	@Autowired
	private CandidateRepository candidateRepository;

	@Autowired
	private UserRepository userRepository;

	public boolean VoteTOCandidate(Long candidateId, HttpSession session) {
		boolean status = false;
		User sessionUser = (User) session.getAttribute("user");

		if (!sessionUser.isVotetd()) {
			Candidate cad = candidateRepository.findCandidateByCandidateId(candidateId);
			if (cad != null) {
				int count = cad.getVottingCount();
				count++;
				cad.setVottingCount(count);
				candidateRepository.save(cad);
				sessionUser.setVotetd(true);
				userRepository.save(sessionUser);
				status = true;
			}
		}
		return status;

	}

	public List<Candidate> getAllCandidate() {
		List<Candidate> cad = candidateRepository.findAll();
		return cad;
	}

}
