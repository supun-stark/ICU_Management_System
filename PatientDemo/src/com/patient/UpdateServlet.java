package com.patient;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String PatientID = request.getParameter("id");
		String FirstName = request.getParameter("fname");
		String LastName = request.getParameter("lname");
		String Gender = request.getParameter("gen");
		String Age = request.getParameter("age");
		String Address = request.getParameter("add");
		String Height = request.getParameter("hei");
		String Weight  = request.getParameter("wei");
		String EmergencyContact  = request.getParameter("ename");
		String ContactNumber  = request.getParameter("cnumber");
		String Relationship  = request.getParameter("rel");
		
		boolean isTrue;
		
		isTrue = PatientDBUtil.updatedata(PatientID, FirstName, LastName, Gender, Age, Address, Height, Weight, EmergencyContact, ContactNumber, Relationship);
		
		if(isTrue ==true) {
				
			RequestDispatcher dis = request.getRequestDispatcher("UpdateSuccessMsg.jsp");
			dis.forward(request, response);
			
	}
		
		else {

			RequestDispatcher dis = request.getRequestDispatcher("UpdateUnsuccessMsg.jsp");
			dis.forward(request, response);
			
}
	}

}
