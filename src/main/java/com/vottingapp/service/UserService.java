package com.vottingapp.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vottingapp.entity.User;
import com.vottingapp.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository usereRepository;

	public Boolean RegisterUser(User user) {
		User savedUser = usereRepository.save(user);
		boolean status = true;
		if (savedUser == null) {
			status = false;
		}
		return status;

	}

	public int findUserByUserNameAndPassWord(String userName, String passWord, HttpSession session) {
		User user = usereRepository.findUserByUserNameAndPassWord(userName, passWord);
		int status = 0;
		if (user != null) {
			if (user.getUserName().equals(userName) && user.getPassWord().equals(passWord)) {
				session.setAttribute("user", user);
				if (user.isAdmin()) {
					status = 1;
				} else {
					status = 2;
				}

			}
		}

		return status;

	}
}
