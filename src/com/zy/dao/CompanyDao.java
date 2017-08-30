package com.zy.dao;

import java.util.List;

import com.zy.model.Company;
import com.zy.model.Serve;
import com.zy.model.Type;

public interface CompanyDao {

	public  Company find();

	public void update(Company company);

	public Company findId(int id);

	public void update(Company company, int id);

	public List<Type> getType();

	public void update(Type type, int id);

	public Type findTypeId(int id);

	public Serve getserveMessage();

}
