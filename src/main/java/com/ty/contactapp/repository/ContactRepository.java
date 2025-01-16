package com.ty.contactapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ty.contactapp.entity.Contact;

public interface ContactRepository extends JpaRepository<Contact, Integer> {

}
