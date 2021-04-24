package com.MailWale.DAO;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Support")
public class SupportDAO {
	private String name;
	private String email;
	@Id
	private String orderid;
	private String subject;
	private String message;
	private String status = "Active";

	public SupportDAO() {

	}

	public SupportDAO(String name, String email, String orderid, String subject, String message, String status) {
		super();
		this.name = name;
		this.email = email;
		this.orderid = orderid;
		this.subject = subject;
		this.message = message;
		this.status = status;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
