package com.myservlets.java;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.mybusiness.services.ProductService;
import com.myclasses.java.InsertValues;
import com.myclasses.java.Products;

/**
 * Servlet implementation class DisplayUsersProductsServlets
 */
@WebServlet("/DisplayUsersProductsServletsPath")
public class DisplayUsersProductsServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int userId;
		userId = Integer.parseInt(request.getParameter("userId"));
		
		SessionFactory sessionFactory=configureSessionFactory();
		Session session=sessionFactory.openSession();
		session.beginTransaction();
	
		ArrayList<Products> productList = new ArrayList<Products>();
		ProductService ps=new ProductService();
		productList=ps.getProductsByUser(userId);
		
		request.setAttribute("productList", productList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("sell.jsp");
		dispatcher.forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}
	private static SessionFactory configureSessionFactory() {
		Configuration configuration = new Configuration().configure();
		StandardServiceRegistryBuilder registryBuilder = new StandardServiceRegistryBuilder()
				.applySettings(configuration.getProperties());
		ServiceRegistry serviceRegistry = registryBuilder.build();
		return configuration.buildSessionFactory(serviceRegistry);
	}

	
	

}
