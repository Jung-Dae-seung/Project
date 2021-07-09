package com.spring.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {
	private String userid; 
	private String password;
	private String name;
	private String gender;
	private int age;
	private String mobile;
	private String email;
	
}









