package com.ty.contactapp.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ty.contactapp.entity.User;
import com.ty.contactapp.repository.UserRepository;

@Service
public class UserServiceImplementation implements UserService {

	@Autowired
	private UserRepository repository;

	public boolean register(User user) {
		Optional<User> opt = repository.findByEmail(user.getEmail());

		if (opt.isPresent()) {
			return false;
		} else {
			return repository.save(user) != null;

		}
	}

	@Override
	public Optional<User> findByEmail(String email) {
		return repository.findByEmail(email);
	}

	public Optional<User> findById(Integer id) {
		return repository.findById(id);
	}
}
