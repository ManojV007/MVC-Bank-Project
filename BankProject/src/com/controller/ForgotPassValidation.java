package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ForgotPassValidation extends HttpServlet 
{
	public void service(HttpServletRequest req, HttpServletResponse res)
	{
		try 
		{
			String accno = req.getParameter("accno");
			String email = req.getParameter("email");			
			String np = req.getParameter("np");
			String cnp = req.getParameter("cnp");
			
			if(accno.length() == 0 || email.length() == 0 || np.length() == 0 || cnp.length() == 0)
			{
				res.sendRedirect("BankProject/passinvalid.html");
			}
			else
			{
				if(np.equals(cnp))
				{
					req.getServletContext().getRequestDispatcher("/ForgotPassword").forward(req, res);
				}
				else
				{
					res.sendRedirect("BankProject/passinvalid.html");
				}
			}

		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

}
