package com.zy.model;

import java.math.BigDecimal;

import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;

public class Type {
   private int id;
   private String type;
   private int size;
   private String quality;
   private String experience;
   private BigDecimal price;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		@NotEmpty(message="类型不能为空")
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		@Min(value=0,message="号码的长度必须大于0")
		public int getSize() {
			return size;
		}
		public void setSize(int size) {
			this.size = size;
		}
		@NotEmpty(message="类型不能为空")
		public String getQuality() {
			return quality;
		}
		public void setQuality(String quality) {
			this.quality = quality;
		}
		public String getExperience() {
			return experience;
		}
		public void setExperience(String experience) {
			this.experience = experience;
		}
		public BigDecimal getPrice() {
			return price;
		}
		public void setPrice(BigDecimal price) {
			this.price = price;
		}
  
   
}
