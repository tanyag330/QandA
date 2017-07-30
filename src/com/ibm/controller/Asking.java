package com.ibm.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ibm.dao.QConnect;
import com.ibm.model.Ask;


public class Asking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Asking() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String username=null;
		 String question=request.getParameter("question");
		 String details=request.getParameter("details");
		 String date=null;
		 String totans="0";
		HttpSession session=request.getSession();
		if(session.getAttribute("username")!=null)
		{
			
			username=(String)session.getAttribute("username");
			Date d=new Date();
			date=d.toString();
		}
		
		System.out.println(username+"|"+question+"|"+details+"|"+date+"|"+totans);
		String sql="insert into question(username,question,details,date,totans) values(?,?,?,?,?)";
		Ask obj=new Ask();
		obj.setUsername(username);
		obj.setQuestion(question);
		obj.setDetails(details);
		obj.setDate(date);
		obj.setTotans(totans);
		boolean status=QConnect.insertQuestion(obj, sql);
		if(status)
		{
			request.setAttribute("msg","Successfully posted your question");
			getServletContext().getRequestDispatcher("/ask.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("msg","Please Try again!");
			getServletContext().getRequestDispatcher("/ask.jsp").forward(request, response);
		}
			
	}

}
