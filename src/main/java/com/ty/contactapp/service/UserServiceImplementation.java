package com.ty.contactapp.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ty.contactapp.entity.User;
import com.ty.contactapp.repository.UserRepository;

@Service
public class UserServiceImplementation implements UserService {

	@Autowired
	private UserRepository userRepository;

	public boolean register(User user) {
		Optional<User> opt = userRepository.findByEmail(user.getEmail());

		if (opt.isPresent()) {
			return false;
		} else {
			return userRepository.save(user) != null;

		}
	}
}
