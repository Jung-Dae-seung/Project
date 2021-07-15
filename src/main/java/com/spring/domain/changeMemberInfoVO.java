package com.spring.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class changeMemberInfoVO {
	private String userid; 
	private String current_password;
	private String new_password;
	private String confirm_password;
	private String new_mobile;
	private String new_email;
	
	public boolean newPasswordEqualsConfirmPassword() {
		return new_password.equals(this.confirm_password);
	}
}
