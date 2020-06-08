package com.wipro.modal;

import java.security.SecureRandom;

public class UserAccount {
	
	private String firstname;
	private String lastName;
	private int age;
	private String mobileNumber;
	private String panNumber;
	private String dob;
	private String emailID;
	private String enrollmentOption;
	private String uname;
	private String passwrd;
	private String accountNumber;
	
	
	public UserAccount(String firstname, String lastName, int age, String mobileNumber, String panNumber, String dob,
			String emailID, String enrollmentOption, String uName, String passwrd) {
		super();
		this.firstname = firstname;
		this.lastName = lastName;
		this.age = age;
		this.mobileNumber = mobileNumber;
		this.panNumber = panNumber;
		this.dob = dob;
		this.emailID = emailID;
		this.enrollmentOption = enrollmentOption;
		this.uname = uName;
		this.passwrd = passwrd;
		this.accountNumber = generateAccNo();
	}
	
	public String generateAccNo()
	{
		String  AB = "1234567890";
		SecureRandom rnd = new SecureRandom();
		StringBuilder sb = new StringBuilder(16);
		   for( int i = 0; i < 16; i++ ) 
		      sb.append( AB.charAt( rnd.nextInt(AB.length()) ) );
		   return sb.toString();
		
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getPanNumber() {
		return panNumber;
	}
	public void setPanNumber(String panNumber) {
		this.panNumber = panNumber;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getEmailID() {
		return emailID;
	}
	public void setEmailID(String emailID) {
		this.emailID = emailID;
	}
	public String getEnrollmentOption() {
		return enrollmentOption;
	}
	public void setEnrollmentOption(String enrollmentOption) {
		this.enrollmentOption = enrollmentOption;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uName) {
		this.uname = uName;
	}
	public String getPasswrd() {
		return passwrd;
	}
	public void setPasswrd(String passwrd) {
		this.passwrd = passwrd;
	}
	public String getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}
	@Override
	public String toString() {
		return "UserAccount [firstname=" + firstname + ", lastName=" + lastName + ", age=" + age + ", mobileNumber="
				+ mobileNumber + ", panNumber=" + panNumber + ", dob=" + dob + ", emailID=" + emailID
				+ ", enrollmentOption=" + enrollmentOption + ", uName=" + uname + ", passwrd=" + passwrd
				+ ", accountNumber=" + accountNumber + "]";
	}
	

}
