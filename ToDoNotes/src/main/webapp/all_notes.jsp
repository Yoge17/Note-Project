<%@page import="org.hibernate.Transaction"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import= "com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <%@include file="all_js_css.jsp"%> 
<meta charset="ISO-8859-1">
<title>ALL Notes</title>
</head>
<body>
<div class ="container-fluid p-0 m-0">
     <%@include file="navbar.jsp"%> 
   <br>
   <h1>All Notes</h1>
   
   <div class="row">
   <div class="col-12">
   
   <% Session s= FactoryProvider.getFactory().openSession(); 
      Query q= s.createQuery("from Note");
	 
   List<Note>list = q.list();
   for(Note note:list)
   {
	   %><div class="card mt-3" >
  <img class="card-img-top m-4  mx-auto" style=" max-width:50px " src="image/pencil.png" alt="Card image cap">
  <div class="card-body px-5" >
    <h5 class="card-title"><%= note.getTitle() %></h5>
    <p class="card-text"><%= note.getContent() %></p>  
   <div class="container text-center mt-3"> 
   <a href="DeleteServlet?note_id= <%= note.getId() %>" class="btn btn-danger">Delete</a>
  
    <a href="Editpage.jsp?note_id=<%=note.getId()%> " class="btn btn-primary">Update</a> </div>
  </div>
</div>
 
 <%
   }
   s.close();
   
   %>
 
   
   </div>
   
   </div>
   
   
     
   </div>

</body>
</html>