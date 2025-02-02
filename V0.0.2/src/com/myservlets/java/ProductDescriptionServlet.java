package com.myservlets.java;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import com.myclasses.java.Products;
import com.myclasses.java.HibernateUtil;

/**
 * Servlet implementation class ProductDescriptionServlet
 */
@WebServlet("/ProductDescriptionServlet")
public class ProductDescriptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productId;

		try {
			productId = Integer.parseInt(request.getParameter("pid"));
		} catch (NumberFormatException e) {
			response.getWriter().println("<h3 style='color:red;'>Invalid product ID</h3>");
			return;
		}

		// Open Hibernate session using HibernateUtil
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			session.beginTransaction();

			// Fetch the product from database
			Products pro = session.get(Products.class, productId);

			if (pro == null) {
				response.getWriter().println("<h3 style='color:red;'>Product not found.</h3>");
				return;
			}

			// Store product in session
			request.getSession().setAttribute("product", pro);
			response.sendRedirect("description.jsp");

		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().println("<h3 style='color:red;'>Error retrieving product: " + e.getMessage() + "</h3>");
		}
	}
}
