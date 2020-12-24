package com.web.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SignUp {
	private int jid;
	private String username; 
	private String password;
	private String role;
	private String name;
	private String email;
	private String gender;
	private String photo;	
}
