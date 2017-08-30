package com.zy.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


import com.zy.model.Company;
import com.zy.model.Serve;
import com.zy.model.Type;

@Repository("companyDaoImpl")

public class CompanyDaoImpl implements CompanyDao {
	@Autowired
    public JdbcTemplate jdbcTemplate;
	@Override
	public Company find() {
		    String sql="select * from company";
		    RowMapper<Company> rowMapper=new BeanPropertyRowMapper<Company>(Company.class);
		    Company company= jdbcTemplate.queryForObject(sql, rowMapper);
	        return  company;
	}

	@Override
	public Company findId(int id) {
		String sql="select * from company where id=?";
		 RowMapper<Company> rowMapper=new BeanPropertyRowMapper<Company>(Company.class);
		  return jdbcTemplate.queryForObject(sql, rowMapper, id);
	       
	}
	@Override
	public void update(Company company, int id) {
	 String sql="update company set name=?,descUs=?,address=?,phone=?,mail=? where id =? ";
	
		jdbcTemplate.update(sql,company.getName(),company.getDescUs(),company.getAddress(),company.getPhone(),company.getMail(),id);
	}

	@Override
	public void update(Company company) {
		
	}

	@Override
	public List<Type> getType() {
		  String sql="select * from company_type";
		    RowMapper<Type> rowMapper=new BeanPropertyRowMapper<Type>(Type.class);
		    List<Type> types= jdbcTemplate.query(sql, rowMapper);
	        return  types;
	}

	@Override
	public void update(Type type, int id) {
		 String sql="update company_type set type=?,size=?,quality=?,experience=?,price=? where id =? ";
			jdbcTemplate.update(sql,type.getType(),type.getSize(),type.getQuality(),type.getExperience(),type.getPrice(),id);
	}

	@Override
	public Type findTypeId(int id) {
		 String sql="select * from company_type where id=?";
		 RowMapper<Type> rowMapper=new BeanPropertyRowMapper<>(Type.class);
		  return jdbcTemplate.queryForObject(sql, rowMapper, id);
	}
	@Override
	public Serve getserveMessage() {
		    String sql="select * from serve";
		    RowMapper<Serve> rowMapper=new BeanPropertyRowMapper<Serve>(Serve.class);
	        return  jdbcTemplate.queryForObject(sql, rowMapper);
	}
}
