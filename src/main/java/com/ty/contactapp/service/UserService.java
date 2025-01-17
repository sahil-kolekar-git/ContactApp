package com.ty.contactapp.service;

import java.util.Optional;

import com.ty.contactapp.entity.User;

public interface UserService {

	boolean register(User user);

	Optional<User> findByEmail(String email);

	 Optional<User> findById(Integer id);
}
