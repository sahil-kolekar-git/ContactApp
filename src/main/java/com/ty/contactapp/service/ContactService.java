package com.ty.contactapp.service;

import java.util.Optional;

import com.ty.contactapp.entity.Contact;

public interface ContactService {

	void saveContact(Contact contact);

	Optional<Contact> findById(Integer id);
	
	void deleteById(Integer id);

	void delete(Contact contact);

	// boolean findByAadhar(Long aadhar);
}
