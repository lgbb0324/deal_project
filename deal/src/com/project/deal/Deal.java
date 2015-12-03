package com.project.deal;

import org.springframework.web.multipart.MultipartFile;

public class Deal {
		private String userId,userName,subject,category1,category2,start_date,end_date,content,imageFilename,region1,region2,tag1,tag2;
		private int price,instantPrice,discountRate,people,approveCheck;
		private MultipartFile upload;
		private String saveFilename;
		private String originalFilename;
		
		public MultipartFile getUpload() {
			return upload;
		}
		public void setUpload(MultipartFile upload) {
			this.upload = upload;
		}
		public String getSaveFilename() {
			return saveFilename;
		}
		public void setSaveFilename(String saveFilename) {
			this.saveFilename = saveFilename;
		}
		public String getOriginalFilename() {
			return originalFilename;
		}
		public void setOriginalFilename(String originalFilename) {
			this.originalFilename = originalFilename;
		}
		public String getUserId() {
			return userId;
		}
		public void setUserId(String userId) {
			this.userId = userId;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getSubject() {
			return subject;
		}
		public void setSubject(String subject) {
			this.subject = subject;
		}
		public String getCategory1() {
			return category1;
		}
		public void setCategory1(String category1) {
			this.category1 = category1;
		}
		public String getCategory2() {
			return category2;
		}
		public void setCategory2(String category2) {
			this.category2 = category2;
		}
		public String getStart_date() {
			return start_date;
		}
		public void setStart_date(String start_date) {
			this.start_date = start_date;
		}
		public String getEnd_date() {
			return end_date;
		}
		public void setEnd_date(String end_date) {
			this.end_date = end_date;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		public String getImageFilename() {
			return imageFilename;
		}
		public void setImageFilename(String imageFilename) {
			this.imageFilename = imageFilename;
		}
		public String getRegion1() {
			return region1;
		}
		public void setRegion1(String region1) {
			this.region1 = region1;
		}
		public String getRegion2() {
			return region2;
		}
		public void setRegion2(String region2) {
			this.region2 = region2;
		}
		public String getTag1() {
			return tag1;
		}
		public void setTag1(String tag1) {
			this.tag1 = tag1;
		}
		public String getTag2() {
			return tag2;
		}
		public void setTag2(String tag2) {
			this.tag2 = tag2;
		}
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
		}
		public int getInstantPrice() {
			return instantPrice;
		}
		public void setInstantPrice(int instantPrice) {
			this.instantPrice = instantPrice;
		}
		public int getDiscountRate() {
			return discountRate;
		}
		public void setDiscountRate(int discountRate) {
			this.discountRate = discountRate;
		}
		public int getPeople() {
			return people;
		}
		public void setPeople(int people) {
			this.people = people;
		}
		public int getApproveCheck() {
			return approveCheck;
		}
		public void setApproveCheck(int approveCheck) {
			this.approveCheck = approveCheck;
		}
		
		
}
