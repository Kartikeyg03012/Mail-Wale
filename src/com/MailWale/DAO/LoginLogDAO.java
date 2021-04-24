package com.MailWale.DAO;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="LoginLogs")
public class LoginLogDAO {
	@Id
	private String logindate;
	private String id;
	
	public LoginLogDAO() {
		
	}
	
	
	
	public LoginLogDAO(String logindate, String id) {
		super();
		this.logindate = logindate;
		this.id = id;
	}



	public String getLogindate() {
		return logindate;
	}
	public void setLogindate(String logindate) {
		this.logindate = logindate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

}
