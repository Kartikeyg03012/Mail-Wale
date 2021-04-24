package com.MailWale.DAO;

import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="AdminLogin")
public class AdminDAO {
	@Id
	private String id;
	private String pass;

	public AdminDAO(String id, String pass) {
		super();
		this.id = id;
		this.pass = pass;
	}

	public AdminDAO() {

	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	

}
