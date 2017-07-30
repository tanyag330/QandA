package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ibm.dao.QConnect;
import com.ibm.model.Login;


public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UserLogin() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		Login obj=new Login();
		obj.setUsername(username);
		obj.setPassword(password);
		String sql="select * from register where username=? and password=?";
		boolean status=QConnect.UserValidation(obj, sql);
		if(status)
		{
			HttpSession session=request.getSession();
			session.setAttribute("username",username);
			response.sendRedirect("ask.jsp");
		}
		else
		{
			request.setAttribute("msg", "Username and Password is incorrect");
			getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
		}
		
	
	
	}

}
