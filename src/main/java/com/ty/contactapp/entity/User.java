package com.ty.contactapp.entity;

import java.time.LocalDateTime;
import java.util.List;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
//@RequiredArgsConstructor
@Table(name = "user_info")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer uid;

	private String name;

	private String email;

	private Long phone;

	private String password;

	@OneToMany(mappedBy = "user")
	private List<Contact> contacts;

	@CreationTimestamp
	@Column(updatable = false)
	private LocalDateTime localDateTime;

	@UpdateTimestamp
	private LocalDateTime updateDateTime;
}
