<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Update Patients</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">

	<script >
    function validateForm(){
    	
    	var data1 = document.forms["UpdateDataForm"]["id"].value;
    	var data2 = document.forms["UpdateDataForm"]["fname"].value;
    	var data3 = document.forms["UpdateDataForm"]["lname"].value;
    	var data4 = document.forms["UpdateDataForm"]["gen"].value;
    	var data5 = document.forms["UpdateDataForm"]["age"].value;
    	var data6 = document.forms["UpdateDataForm"]["add"].value;
    	var data7 = document.forms["UpdateDataForm"]["hei"].value;
    	var data8 = document.forms["UpdateDataForm"]["wei"].value;
    	var data9 = document.forms["UpdateDataForm"]["ename"].value;
    	var data10 = document.forms["UpdateDataForm"]["cnumber"].value;
    	var data11 = document.forms["UpdateDataForm"]["rel"].value;
    	
    	
    	
    	if (data1 == "" || data1 == null){
    		alert("Empty PatientID");
    		return false;
    	}
    	else if (data2 == "" || data2 == null){
    		alert("Empty First Name");
    		return false;
    		
    	}
    	else if (data3 == "" || data3 == null){
    		alert("Empty Last Name");
    		return false;
    	}
    	else if(data4 == "" || data4 == null){
    		alert("Empty Gender");
    		return false;
    	}
    	else if(data5 == "" || data5 == null){
    		alert("Empty Age");
    		return false;
    	}
    	else if(data6 == "" || data6 == null){
    		alert("Empty Address");
    		return false;
    	}
    	else if (data7 == "" || data7 == null){
    		alert("Empty Patient Height");
    		return false;
    	}
    	else if (data8 == "" || data8 == null){
    		alert("Empty Patient Weight ");
    		return false;
    	}
    	else if (data9 == "" || data9 == null){
    		alert("Empty Emergency Contact Name ");
    		return false;
    	}
    	else if (data10 == "" || data10 == null){
    		alert("Empty Emergency Contact Number");
    		return false;
    	}
    	else if (data11 == "" || data11 == null){
    		alert("Empty Relationship");
    		return false;
    	}
    	
    	
    	
    }
    
     </script>
	</head>

<body id="page-top">
    <div id="wrapper">
        <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0">
            <div class="container-fluid d-flex flex-column p-0">
                <a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#">
                    <div class="sidebar-brand-icon rotate-n-15"><i class="fas fa-laugh-wink"></i></div>
                    <div class="sidebar-brand-text mx-3"><span>ICU</span></div>
                </a>
                <hr class="sidebar-divider my-0">
                <ul class="nav navbar-nav text-light" id="accordionSidebar">
                    <li class="nav-item" role="presentation"><a class="nav-link" href="index.html"><i class="fas fa-tachometer-alt"></i><span>Dashboard</span></a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="PatientHome.jsp"><i class="fas fa-user"></i><span>Patients</span></a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="register.html"><i class="fas fa-user-circle"></i><span>Doctors</span></a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="table.html"><i class="fas fa-table"></i><span>Inventory</span></a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="login.html"><i class="far fa-user-circle"></i><span>Staff</span></a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="table.html"><i class="fas fa-table"></i><span>Beds</span></a></li>
                </ul>
                <div class="text-center d-none d-md-inline"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button></div>
            </div>
        </nav>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                    <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                        <form class="form-inline d-none d-sm-inline-block mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                            
                        </form>
                        <ul class="nav navbar-nav flex-nowrap ml-auto">
                            <li class="nav-item dropdown d-sm-none no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><i class="fas fa-search"></i></a>
                                <div class="dropdown-menu dropdown-menu-right p-3 animated--grow-in" role="menu" aria-labelledby="searchDropdown">
                                    <form class="form-inline mr-auto navbar-search w-100">
                                        <div class="input-group"><input class="bg-light form-control border-0 small" type="text" placeholder="Search for ...">
                                            <div class="input-group-append"><button class="btn btn-primary py-0" type="button"><i class="fas fa-search"></i></button></div>
                                        </div>
                                    </form>
                                </div>
                            </li>
                            <li class="nav-item dropdown no-arrow mx-1" role="presentation">
                                <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><span class="badge badge-danger badge-counter">3+</span><i class="fas fa-bell fa-fw"></i></a>
                                    <div class="dropdown-menu dropdown-menu-right dropdown-list dropdown-menu-right animated--grow-in"
                                        role="menu">
                                        <h6 class="dropdown-header">alerts center</h6>
                                        <a class="d-flex align-items-center dropdown-item" href="#">
                                            <div class="mr-3">
                                                <div class="bg-primary icon-circle"><i class="fas fa-file-alt text-white"></i></div>
                                            </div>
                                            <div><span class="small text-gray-500">June 12, 2021</span>
                                                <p>Patients monthly report is ready to download!</p>
                                            </div>
                                        </a>
                                        <a class="d-flex align-items-center dropdown-item" href="#">
                                            <div class="mr-3">
                                                <div class="bg-success icon-circle"><i class="fas fa-donate text-white"></i></div>
                                            </div>
                                            <div><span class="small text-gray-500">June 10, 2021</span>
                                                <p>Bed No:9 is Available now!</p>
                                            </div>
                                        </a>
                                        <a class="d-flex align-items-center dropdown-item" href="#">
                                            <div class="mr-3">
                                                <div class="bg-warning icon-circle"><i class="fas fa-exclamation-triangle text-white"></i></div>
                                            </div>
                                            <div><span class="small text-gray-500">June 09, 2021</span>
                                                <p>Spending Alert: We've noticed unusually high spending for your account.</p>
                                            </div>
                                        </a><a class="text-center dropdown-item small text-gray-500" href="#">Show All Alerts</a></div>
                                </div>
                            </li>
                            <li class="nav-item dropdown no-arrow mx-1" role="presentation">
                                <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><i class="fas fa-envelope fa-fw"></i><span class="badge badge-danger badge-counter">7</span></a>
                                    <div class="dropdown-menu dropdown-menu-right dropdown-list dropdown-menu-right animated--grow-in"
                                        role="menu">
                                        <h6 class="dropdown-header">alerts center</h6>
                                        <a class="d-flex align-items-center dropdown-item" href="#">
                                            <div class="dropdown-list-image mr-3"><img class="rounded-circle" src="assets/img/avatars/avatar4.jpeg">
                                                <div class="bg-success status-indicator"></div>
                                            </div>
                                            <div class="font-weight-bold">
                                                <div class="text-truncate"><span>Hi there! How can I collect my reports?</span></div>
                                                <p class="small text-gray-500 mb-0">Emily Fowler - 58m</p>
                                            </div>
                                        </a>
                                        <a class="d-flex align-items-center dropdown-item" href="#">
                                            <div class="dropdown-list-image mr-3"><img class="rounded-circle" src="assets/img/avatars/avatar2.jpeg">
                                                <div class="status-indicator"></div>
                                            </div>
                                            <div class="font-weight-bold">
                                                <div class="text-truncate"><span>How can I contact Dr.Rasal Fernando?</span></div>
                                                <p class="small text-gray-500 mb-0">Jane Christine - 1h</p>
                                            </div>
                                        </a>
                                        <a class="d-flex align-items-center dropdown-item" href="#">
                                            <div class="dropdown-list-image mr-3"><img class="rounded-circle" src="assets/img/avatars/avatar3.jpeg">
                                                <div class="bg-warning status-indicator"></div>
                                            </div>
                                            <div class="font-weight-bold">
                                                <div class="text-truncate"><span>Last month's report looks great, I am very happy with the progress so far, keep up the good work!</span></div>
                                                <p class="small text-gray-500 mb-0">Morgan Alvarez - 2d</p>
                                            </div>
                                        </a>
                                        <a class="d-flex align-items-center dropdown-item" href="#">
                                            <div class="dropdown-list-image mr-3"><img class="rounded-circle" src="assets/img/avatars/avatar1.jpeg">
                                                <div class="bg-success status-indicator"></div>
                                            </div>
                                            <div class="font-weight-bold">
                                                <div class="text-truncate"><span>Hello!</span></div>
                                                <p class="small text-gray-500 mb-0">Mike Rasal · 2w</p>
                                            </div>
                                        </a><a class="text-center dropdown-item small text-gray-500" href="#">Show All Alerts</a></div>
                                </div>
                                <div class="shadow dropdown-list dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown"></div>
                            </li>
                            <div class="d-none d-sm-block topbar-divider"></div>
                            <li class="nav-item dropdown no-arrow" role="presentation">
                                <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><span class="d-none d-lg-inline mr-2 text-gray-600 small">Admin1</span><img class="border rounded-circle img-profile" src="assets/img/avatars/avatar3.jpeg"></a>
                                    <div
                                        class="dropdown-menu shadow dropdown-menu-right animated--grow-in" role="menu"><a class="dropdown-item" role="presentation" href="#"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Profile</a><a class="dropdown-item" role="presentation" href="#"><i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Settings</a>
                                        <a
                                            class="dropdown-item" role="presentation" href="#"><i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Activity log</a>
                                            <div class="dropdown-divider"></div><a class="dropdown-item" role="presentation" href="#"><i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Logout</a></div>
                    </div>
                    </li>
                    </ul>
            </div>
            </nav>
            <div class="container-fluid">
            
            
            			<sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/icux"
        user="root" password="abha9706*"
    />
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM patients ;
    </sql:query>
     			
     			  <caption><h4 style="color:#0000CD">Patients </h4></caption>
    <div align="center">
        <table border="1" cellpadding="4">
          
            <tr>
                <th style="background-color:powderblue">Number</th>
                <th style="background-color:powderblue">Patient ID</th>
                <th style="background-color:powderblue">First Name</th>
                <th style="background-color:powderblue">Last Name</th>
                 <th style="background-color:powderblue">Gender</th>
                <th style="background-color:powderblue">Age</th>
                <th style="background-color:powderblue">Address</th>
                <th style="background-color:powderblue">Height(Cm)</th>
                <th style="background-color:powderblue">Weight(Kg)</th>
                <th style="background-color:powderblue">Emergency Contact</th>
                <th style="background-color:powderblue">Contact Number</th>
                <th style="background-color:powderblue">Relationship</th>
               
                
              
            </tr>
            <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                    <td style="color:#0000CD"><c:out value="${user.Number}" /></td>
                    <td style="color:#0000CD"><c:out value="${user.PatientID}" /></td>
                    <td style="color:#0000CD"><c:out value="${user.FirstName}" /></td>
                    <td style="color:#0000CD"><c:out value="${user.LastName}" /></td>
                     <td style="color:#0000CD"><c:out value="${user.Gender}" /></td>
                      <td style="color:#0000CD"><c:out value="${user.Age}" /></td>
                     <td style="color:#0000CD"><c:out value="${user.Address }"/></td>
                     <td style="color:#0000CD"><c:out value="${user.Height }"/></td>
                     <td style="color:#0000CD"><c:out value="${user.Weight }"/></td>
                     <td style="color:#0000CD"><c:out value="${user.EmergencyContact }"/></td>
                     <td style="color:#0000CD"><c:out value="${user.ContactNumber }"/></td>
                     <td style="color:#0000CD"><c:out value="${user.Relationship }"/></td>
                      
                    
                    </tr>
            </c:forEach>
        </table>
		</div>	
		<br><br>
		
            
            
              <h2 style = "color:#0000CD">Update Patient Details</h2> 
             <style>
			h2 {text-align: center;}
			</style>
   
				             
    <form name ="UpdateDataForm" action ="Uptd" style = "display: inline-block; margin-top: 40px" method="post" onsubmit="return validateForm()">
	
		<div class = "left" style = "float: left; width: 500px; overflow: hidden; margin-left: 50px">
            
            Patient ID<br><input type="text" style = "border: 1px solid #0066ff;  border-radius: 7px; width: 250px;height: 25px"  name="id"><br><br>
            First Name<br> <input type ="text" style = "border: 1px solid #0066ff;  border-radius: 7px; width: 250px;height: 25px"  name="fname"><br><br>
            Last Name <br> <input type="text" style = "border: 1px solid #0066ff;  border-radius: 7px; width: 250px;height: 25px" name="lname"><br><br>
            Gender <br> <input type="text" style = "border: 1px solid #0066ff;  border-radius: 7px; width: 250px;height: 25px"  name="gen"><br><br>
			Age <br><input type="text" style = "border: 1px solid #0066ff;  border-radius: 7px; width: 250px;height: 25px"  name="age"><br><br>
        
        
        
            Address <br><input type="text" style = "border: 1px solid #0066ff;  border-radius: 7px; width: 250px;height: 25px"  name="add"><br><br>
            Height(Cm) <br> <input type="text" style = "border: 1px solid #0066ff;  border-radius: 7px; width: 250px;height: 25px"  name="hei"><br><br>
            Weight(Kg) <br><input type="text" style = "border: 1px solid #0066ff;  border-radius: 7px; width: 250px;height: 25px"  name="wei"><br><br>
         </div>   
       
        <div class = "right" style="overflow: hidden ">
        <h5 style = "color:#0000CD">Emergency details...</h5> 
            Emergency Contact Name<br> <input type ="text" style = "border: 1px solid #0066ff;  border-radius: 7px; width: 250px;height: 25px"  name="ename"><br><br>
            Contact Number  <br> <input type="text" style = "border: 1px solid #0066ff;  border-radius: 7px; width: 250px;height: 25px" name="cnumber"><br><br>
            Relationship <br> <input type="text" style = "border: 1px solid #0066ff;  border-radius: 7px; width: 250px;height: 25px"  name="rel"><br><br><br>
        	  <input class="btn btn-primary" type="submit" name="submit" value="Update Details">
	    </div>
	    
	    
	    
	
</form>
				
                
            </div>
        </div>
        <footer class="bg-white sticky-footer">
            <div class="container my-auto">
                <div class="text-center my-auto copyright"><span>@All Rights Reserved | SupunD</span></div>
            </div>
        </footer>
    </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a></div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/chart.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>