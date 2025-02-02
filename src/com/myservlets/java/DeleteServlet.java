package com.myservlets.java;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

import com.myclasses.java.InsertValues;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/DeleteServletPath")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int rollno;
		rollno=Integer.parseInt(request.getParameter("rollno"));
		SessionFactory sessionFactory=configureSessionFactory();
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		
		InsertValues record=new InsertValues();
		record=(InsertValues) session.get(InsertValues.class, rollno);
		session.delete(record);
		
		request.getSession().setAttribute("record", record);
		session.getTransaction().commit();
		session.close();
		response.sendRedirect("deleteSuccess.jsp");
		
		
		// Alternate
		// request.setAttribute("record", record);
		// RequestDispatcher dispatcher = request.getRequestDispatcher("selected.jsp");
		// dispatcher.forward(request, response);
	}
	
	private static SessionFactory configureSessionFactory(){
		SessionFactory sessionFactory;
		ServiceRegistry serviceRegistry;
	    Configuration configuration = new Configuration();
	    configuration.configure();
	    serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();        
	    sessionFactory = configuration.buildSessionFactory(serviceRegistry);
	    return sessionFactory;
	}

}
