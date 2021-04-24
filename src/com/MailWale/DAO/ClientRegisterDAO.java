package com.MailWale.DAO;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ClientRegistation")
public class ClientRegisterDAO {
	private String name;
	private String contact;
	@Id
	private String email;
	private String pwd; // ecrypt -->Done
	private String address;
	private String area;
	private String city;
	private String state;
	private String zip;
	private String status;
	private String country; //Add Country -->Done
	private String created_date; // Created date and time YYYY-MM-DD HH:MM:SS -->Done
	private String last_Update_date; // when user update something -->Done
	private String created_by; // 0--> self created -->Done
	private String archive; // 1--> archive 
	private String str; 	// Random String Value	-->Done

	public ClientRegisterDAO() {
	}

	public ClientRegisterDAO(String name, String contact, String email, String pwd, String address, String area,
			String city, String state, String country, String zip, String status, String created_date,
			String last_Update_date, String created_by, String archive, String str) {
		super();
		this.name = name;
		this.contact = contact;
		this.email = email;
		this.pwd = pwd;
		this.address = address;
		this.area = area;
		this.city = city;
		this.state = state;
		this.country = country;
		this.zip = zip;
		this.status = status;
		this.created_date = created_date;
		this.last_Update_date = last_Update_date;
		this.created_by = created_by;
		this.archive = archive;
		this.str = str;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCreated_date() {
		return created_date;
	}

	public void setCreated_date(String created_date) {
		this.created_date = created_date;
	}

	public String getLast_Update_date() {
		return last_Update_date;
	}

	public void setLast_Update_date(String last_Update_date) {
		this.last_Update_date = last_Update_date;
	}

	public String getCreated_by() {
		return created_by;
	}

	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}

	public String getArchive() {
		return archive;
	}

	public void setArchive(String archive) {
		this.archive = archive;
	}

	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}

}