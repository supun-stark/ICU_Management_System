package com.patient;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;





//import com.patient.Connection;


public class PatientDBUtil {
	
	
	public static boolean insertdata(String PatientID,String FirstName,String LastName,String Gender,String Age,String Address,String Height,String Weight,String EmergencyContact,String ContactNumber,String Relationship) {
		
		boolean isSuccess = false;
		
		//create database connection
		
		String url = "jdbc:mysql://localhost:3306/icux";
		String user = "root";
		String pass = "abha9706*";
		
		try {
			
			 Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);			
			Statement stmt = con.createStatement();
			
			String sql = "insert into patients values (0,'"+PatientID+"','"+FirstName+"','"+LastName+"','"+Gender+"','"+Age+"','"+Address+"','"+Height+"','"+Weight+"','"+EmergencyContact+"','"+ContactNumber+"','"+Relationship+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;



	} 
	
public static boolean updatedata(String PatientID,String FirstName,String LastName,String Gender,String Age,String Address,String Height,String Weight,String EmergencyContact,String ContactNumber,String Relationship) {
		
		boolean isSuccess = false;
		
		//create database connection
		
		String url = "jdbc:mysql://localhost:3306/icux";
		String user = "root";
		String pass = "abha9706*";

		try {
			
			 Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			String sql = "update patients set PatientID ='"+PatientID+"',FirstName='"+FirstName+"',LastName='"+LastName+"',Gender='"+Gender+"',EmergencyContact='"+EmergencyContact+"',ContactNumber='"+ContactNumber+"',Relationship='"+Relationship+"',Age='"+Age+"',Address='"+Address+"',Height='"+Height+"'"
		              +"where PatientID = '"+PatientID+"'";
					
					
					
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
		return isSuccess;
		
	}


public static boolean deletedata(String PatientID) {
	
	boolean isSuccess = false;
	
	//create database connection
	String url = "jdbc:mysql://localhost:3306/icux";
	String user = "root";
	String pass = "abha9706*";

	
	try {
		
		 Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, user, pass);
		Statement stmt = con.createStatement();
		
		String sql = "delete from patients where PatientID = '"+PatientID+"'";
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;



}
		
}

