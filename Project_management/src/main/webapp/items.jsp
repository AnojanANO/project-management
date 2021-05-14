<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="ProjectService.Project" %>
<%
boolean i=true;
if (request.getParameter("Name") != null)
{
	 Project Obj = new Project();
	 String stsMsg="";
	if (request.getParameter("Name") != null)
	 {
	 stsMsg = Obj.insertProject(request.getParameter("Name"),
	 request.getParameter("Description"),
	 request.getParameter("Language"),
	 request.getParameter("Devname"),
	 request.getParameter("Price"));
	 i=true;
	 } 
	else//Update----------------------
	 {
		 stsMsg = Obj.updateProject(request.getParameter("hidItemIDSave"),
				 request.getParameter("Name"),
				 request.getParameter("Description"),
				 request.getParameter("Language"),
				 request.getParameter("Devname"),
				 request.getParameter("Price"));
		 i=true;
		 }
	
	 session.setAttribute("statusMsg", stsMsg);
}
//Delete item----------------------------------
if (request.getParameter("ID") != null)
{
Project Obj = new Project();
String stsMsg = Obj.deleteProject(request.getParameter("ID"));
session.setAttribute("statusMsg", stsMsg);
i=true;
}
//Delete-----------------------------
if (request.getParameter("hidItemIDDelete") != null)
{
	Project Obj = new Project();
String stsMsg =
Obj.deleteProject(request.getParameter("hidItemIDDelete"));
session.setAttribute("statusMsg", stsMsg);
i=true;
}
%>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Brand</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="Views/bootstrap.min.css">
    <script src="Components/jquery-3.2.1.min.js"></script>
    <script src="Components/Project.js"></script>
</head>

<body>
    <nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-white portfolio-navbar gradient">
        <div class="container"><a class="navbar-brand logo" href="#">Gadget Badget</a>
<button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav">
<span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>

            <div class="collapse navbar-collapse"
                id="navbarNav">
                <ul class="nav navbar-nav ml-auto">
                   <li class="nav-item" role="presentation"><a class="nav-link active" href="employee.jsp">Add Employee</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="empReview.jsp">View Employee</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="empview.jsp">View Project</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="items.jsp">add Project</a></li>
                    
                </ul>
            </div>
        </div>
    </nav>
    <main class="page lanidng-page">
        <section class="portfolio-block photography">
            <div class="container">
                <div class="row no-gutters">
                    <div class="col-md-6 col-lg-4 item zoom-on-hover"><a href="#"></a></div>
                </div>
            </div>
        </section>
       
    </main>

<h1 class="text-center">Project Management</h1>

<div class="container">
 <div class="row">
 <div class="col">

<form id="formItem" name="formItem" method="post" action="items.jsp">
 Project Name: 
<input id="Name" name="Name" type="text"
 class="form-control form-control-sm">
<br> Language: 
<input id="Language" name="Language" type="text"
 class="form-control form-control-sm">
<br> Developer Name: 
<input id="Devname" name="Devname" type="text"
 class="form-control form-control-sm">
<br>Description:
<input id="Description" name="Description" type="text"
 class="form-control form-control-sm">
<br> Price:
<input id="Price" name="Price" type="text"
 class="form-control form-control-sm">
<br>
<div class="col text-center">
<input id="btnSave" name="btnSave" type="button" value="Save"
 class="btn btn-primary">
<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
</form>



</div>
 </div>
 </div>
</div>








<div class="alert alert-success">

</div>

<div id="divItemsGrid">
<%
Project Obj = new Project();
 out.print(Obj.readProject());
%>
</div>
<br>

    <footer class="page-footer">
        <div class="container">
            <div class="links">
<a href="#">About me</a><a href="#">Contact me</a><a href="#">Privacy</a></div>
            <div class="social-icons"><a href="#">
<i class="icon ion-social-facebook"></i></a>
<a href="#"><i class="icon ion-social-instagram-outline"></i></a>
<a href="#"><i class="icon ion-social-twitter"></i></a></div>
        </div>
    </footer>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

