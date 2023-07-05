package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Model;

public class Login extends HttpServlet 
{
	public void service(HttpServletRequest req, HttpServletResponse res)
	{
		try 
		{
			String accno = req.getParameter("accno");
			int accountnumber = Integer.parseInt(accno);
			String pass = req.getParameter("pass");
			
			Model m = new Model();
			
			m.setAccount_number(accountnumber);
			m.setPassword(pass);
			
			boolean status = m.login();
			
			if(status == true)
			{
				int a = m.getAccount_number();
				String b = m.getPassword();
				String c = m.getName();
				String d = m.getEmail_id();
				int e = m.getBalance();
				
				HttpSession session = req.getSession(true);
				
				session.setAttribute("accno", a);
				session.setAttribute("pass", b);
				session.setAttribute("name", c);
				session.setAttribute("email", d);
				session.setAttribute("balance", e);
				
				res.sendRedirect("/BankProject/welcome.jsp");
			}
			else
			{
				res.sendRedirect("/BankProject/incorrect.html");
			}
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
}
