package com.vottingapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vottingapp.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {

	public User findUserByUserNameAndPassWord(String userName, String PassWord);
}
