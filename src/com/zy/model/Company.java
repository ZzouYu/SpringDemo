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
		@NotEmpty(message="公司名不能为空")
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		@NotEmpty(message="介绍不能为空")
		public String getDescUs() {
			return descUs;
		}
		public void setDescUs(String descUs) {
			this.descUs = descUs;
		}
		@NotEmpty(message="地址不能为空")
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		@Min(value=5,message="号码的长度必须大于5")
		public int getPhone() {
			return phone;
		}
		public void setPhone(int phone) {
			this.phone = phone;
		}
		@Email(message="邮箱格式不正确")
		public String getMail() {
			return mail;
		}
		public void setMail(String mail) {
			this.mail = mail;
}
   
   
}
