package com.vottingapp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vottingapp.entity.Candidate;

public interface CandidateRepository extends JpaRepository<Candidate, Long> {

	public Candidate findCandidateByCandidateId(Long CandidateId);

	
}
