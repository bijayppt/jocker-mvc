package com.web.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.web.vo.SignUp;

public class SignUpDaoImpl implements SignUPDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public void update(@ModelAttribute SignUp signUp, Model model) {
		String sql="insert into joker_tbl(username, password, role, name, email,gender,photo) values(?,?,?,?,?,?,?)";
		Object[] data= {signUp.getUsername(), signUp.getPassword(), signUp.getRole(), signUp.getName(), signUp.getEmail(), signUp.getGender(), signUp.getPhoto()};
		jdbcTemplate.update(sql, data);
		model.addAttribute("message", "successfully signedup");
			
		
	}

}
