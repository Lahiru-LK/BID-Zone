package com.mybusiness.services;


import com.myclasses.java.Users;
import org.hibernate.query.Query;  // Fix for "Query" class
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import java.util.List;

public class LoginService {

	public boolean authenticate(String username, String password) {
		// TODO Auto-generated method stub
		if(username!=null && username.trim()!=null && password!=null && password.trim()!="" ){
			SessionFactory sessionFactory=configureSessionFactory();
			Session session=sessionFactory.openSession();
			session.beginTransaction();
			String hql="SELECT U.username, U.password FROM Users U where U.username='"+username+"'"+" and U.password='"+password+"'";
			Query query = session.createQuery(hql);
			List<Users> results = query.list();
			if(results.size()==1){
				// session.getTransaction().commit();
				// session.close();
				return true;
				
			}
		}

		

		return false;
	}

	public Users getUserDetails(String username) {
		// TODO Auto-generated method stub
		Users user=new Users();
		SessionFactory sessionFactory=configureSessionFactory();
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		// user=(Users) session.get(Users.class, username);
		String hql="FROM Users U WHERE U.username='"+ username +"' ";
		Query query = session.createQuery(hql);
		List<Users> results = query.list();
		user=results.get(0);
		return user;
	}



	private static SessionFactory configureSessionFactory() {
		Configuration configuration = new Configuration().configure();
		StandardServiceRegistryBuilder registryBuilder = new StandardServiceRegistryBuilder()
				.applySettings(configuration.getProperties());
		ServiceRegistry serviceRegistry = registryBuilder.build();
		return configuration.buildSessionFactory(serviceRegistry);
	}


}

