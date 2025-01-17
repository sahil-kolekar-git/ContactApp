package com.ty.contactapp.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ty.contactapp.entity.Contact;

public interface ContactRepository extends JpaRepository<Contact, Integer> {

	Optional<Contact> findByAadhar(Long aadhar);
}
