package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Model;

public class ForgotPassword extends HttpServlet 
{
	public void service(HttpServletRequest req, HttpServletResponse res)
	{
		try 
		{
			int accno = Integer.parseInt(req.getParameter("accno"));
			String email = req.getParameter("email");			
			String np = req.getParameter("np");
			
			Model m = new Model();
			
			m.setAccount_number(accno);
			m.setEmail_id(email);
			
			boolean status = m.forgotPassword(np);
			
			if(status == true)
			{
				res.sendRedirect("/BankProject/login.html");
			}
			else
			{
				res.sendRedirect("/BankProject/passinvalid.html");
			}

		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

}
