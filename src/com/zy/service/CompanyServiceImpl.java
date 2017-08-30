package com.zy.service;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import com.zy.dao.CompanyDao;
import com.zy.model.Company;
import com.zy.model.Serve;
import com.zy.model.Type;

@Service("companyServiceImpl")
public class CompanyServiceImpl implements CompanyService {
	@Resource(name="companyDaoImpl")
	private CompanyDao companyDao;
	@Resource(name="companyDaoImpl")
	public void setCompanyDao(CompanyDao companyDao) {
		this.companyDao = companyDao;
	}
	
	@Override
	public Company find() {
		
		return companyDao.find();
	}

	@Override
	public void update(Company company) {
		companyDao.update(company);
		
	}

	@Override
	public Company findId(int id) {
		
		return companyDao. findId(id);
	}

	@Override
	public void update(Company company, int id) {
		companyDao.update(company,id);
		
	}

	@Override
	public List<Type> getType() {
		
		return companyDao.getType();
	}

	@Override
	public void updateType(Type type, int id) {
		
		companyDao.update(type,id);
	}

	@Override
	public Type findTypeId(int id) {
		
		return companyDao. findTypeId(id);
	}

	@Override
	public Serve getserveMessage() {
	
		return companyDao. getserveMessage();
	}
	

}
