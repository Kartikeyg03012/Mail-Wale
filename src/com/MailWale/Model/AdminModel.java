package com.MailWale.Model;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Restrictions;

import com.MailWale.DAO.AdminDAO;


public class AdminModel {
	//create connection
		public Session connection() {
			SessionFactory sf = new AnnotationConfiguration().configure().buildSessionFactory();
			Session ss = sf.openSession();
			return ss;
		}

		// admin login
		public int checkadminlogin(String id, String pass) {
			int i = 0;
			Session ss = connection();
			Criteria c = ss.createCriteria(AdminDAO.class);
			c.add(Restrictions.eq("id", id));
			c.add(Restrictions.eq("pass", pass));
			List list = c.list();
			if (!list.isEmpty()) {
				i = 1;
			}
			ss.close();

			return i;
		}

}
