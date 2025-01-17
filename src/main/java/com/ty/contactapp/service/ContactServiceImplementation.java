package com.ty.contactapp.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ty.contactapp.entity.Contact;
import com.ty.contactapp.repository.ContactRepository;

@Service
public class ContactServiceImplementation implements ContactService {

	@Autowired
	private ContactRepository contactRepository;

	public void saveContact(Contact contact) {
		contactRepository.save(contact);
	}

	@Override
	public Optional<Contact> findById(Integer id) {
		return contactRepository.findById(id);

	}

	@Override
	public void deleteById(Integer id) {
		contactRepository.deleteById(id);
	}

	@Override
	public void delete(Contact contact) {
		contactRepository.delete(contact);
	}

//	@Override
//	public boolean findByAadhar(Long aadhar) {
//		Optional<Contact> opt = contactRepository.findByAadhar(aadhar);
//
//		if (opt.isPresent()) {
//			return true;
//		} else {
//			return false;
//		}
//	}

}
