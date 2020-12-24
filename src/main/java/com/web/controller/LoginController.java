package com.web.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.vo.SignUp;

@Controller
public class LoginController {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@GetMapping({"/auth", "/"})
	public String showLogin() {
		
		return "login";
	}

	
	@PostMapping("/login")
	public String login(@RequestParam String username, @RequestParam String password, Model model) {
		
		String sql="select jid,username, password, role, name, email,gender, photo from joker_tbl where username=? and password=?";
		
		try {
			Map<String, Object> mapsdata=jdbcTemplate.queryForMap(sql,username, password);
			if(mapsdata.size()>0) {
				model.addAttribute("data", mapsdata);
				model.addAttribute("message", "you are valid");
			}
		}catch (DataAccessException e) {
			model.addAttribute("message", "you are not valid");
		}
		return "login";
		
	}
	
	@GetMapping("/signUp")
	public String getSignUp() {
		return "signUp";
	}
	
	@PostMapping("/signUp")
	public String postSignUp(@ModelAttribute SignUp signUp, HttpServletRequest req) {
//		String username=req.getParameter("username");
//		String password=req.getParameter("password");
//		String role=req.getParameter("role");
//		String name=req.getParameter("name");
//		String email=req.getParameter("email");
//		String gender=req.getParameter("gender");
//		String photo=req.getParameter("photo");
//		SignUp signUp = new SignUp(username, password, role, name, email, gender, photo);
		String sql="insert into joker_tbl(username, password, role, name, email,gender,photo) values(?,?,?,?,?,?,?)";
		Object[] data= {signUp.getUsername(), signUp.getPassword(), signUp.getRole(), signUp.getName(), signUp.getEmail(), signUp.getGender(), signUp.getPhoto()};
		jdbcTemplate.update(sql, data);
		req.setAttribute("message", "successfully signedup");
			
		
		return "login";
	}
	
	@GetMapping("/showDetails")
	public String getShowDetails(Model model) {
		String sql="select jid,username, password, role, name, email, gender, photo from  joker_tbl";
		List<SignUp> showDetails= jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(SignUp.class));
		model.addAttribute("showDetails", showDetails );
		
		return "showDetails";
	}
	
	@GetMapping("/deleteRecord")
	public String getDeleteRecord(@RequestParam String username, Model model) {
		String sql="delete from joker_tbl where username=?";
		jdbcTemplate.update(sql, username);
		model.addAttribute("message", "data deleted");
		return "redirect:/showDetails";
	}
	@GetMapping("/editRecord")
	public String getEditRecord(@RequestParam String username, Model model) {
		String sql="select jid, username, password, role, name, email, gender, photo from joker_tbl where username=?";
		SignUp signUp=jdbcTemplate.queryForObject(sql, new Object[] {username}, new BeanPropertyRowMapper<>(SignUp.class));
		model.addAttribute("data", signUp);
		return "eSignUp";
		
		
		
	}
	@PostMapping("/editRecord")
	public String postEditRecord(@ModelAttribute SignUp signUp, Model model) {
		String sql="update joker_tbl set username=?, password=?, role=?, name=?, email=?, gender=?, photo=? where jid=?";
		Object[] data = {signUp.getUsername(), signUp.getPassword(), signUp.getRole(), signUp.getName(), signUp.getEmail(), signUp.getGender(), signUp.getPhoto(), signUp.getJid()};
		jdbcTemplate.update(sql, data);
		model.addAttribute("message", "successfully updated");
	
		return "redirect:/showDetails";
	}
	


}
 