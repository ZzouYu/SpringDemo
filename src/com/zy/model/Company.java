package com.zy.model;

import javax.validation.constraints.Min;


import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class Company {
   private int id;
   private String name;
   private String descUs;
   private String address;
   private int phone;
   private String mail;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		@NotEmpty(message="��˾������Ϊ��")
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		@NotEmpty(message="���ܲ���Ϊ��")
		public String getDescUs() {
			return descUs;
		}
		public void setDescUs(String descUs) {
			this.descUs = descUs;
		}
		@NotEmpty(message="��ַ����Ϊ��")
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		@Min(value=5,message="����ĳ��ȱ������5")
		public int getPhone() {
			return phone;
		}
		public void setPhone(int phone) {
			this.phone = phone;
		}
		@Email(message="�����ʽ����ȷ")
		public String getMail() {
			return mail;
		}
		public void setMail(String mail) {
			this.mail = mail;
}
   
   
}
