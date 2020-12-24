package com.web.controller;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
public class DataSourceConfig {
	
	
	@Bean
	public DataSource getDataSource() {
		DriverManagerDataSource ds= new DriverManagerDataSource();
		ds.setUrl("jdbc:mysql://localhost/spring?useUnicode=true");
		ds.setUsername("root");
		ds.setPassword("unitedforever4004");
		ds.setDriverClassName("com.mysql.jdbc.Driver");
		return ds;
		
	}
	
	@Bean
	public JdbcTemplate getJdbcTemplate() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(getDataSource());
		return jdbcTemplate;
		
	}

}
