<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <%@include file="all_js_css.jsp"%> 
<title>Edit Page</title>
</head>
<body>
<div class ="container-fluid p-0 m-0">
     <%@include file="navbar.jsp"%> 
     <h1>This is Edit page </h1>
   <% 
   int noteId=	Integer.parseInt(request.getParameter("note_id").trim());
   Session s= FactoryProvider.getFactory().openSession();

  Note note=(Note)s.get(Note.class, noteId);
   
  
  
   
   %>
   <form action="UpdateServlet" method="post">
  
  <input value= "<%= note.getId() %> " name="noteid" type= "hidden">
  <div class="form-group">
    <label for="Title"> Edit Your Note</label>
    <input required type="text" 
    class="form-control" 
    id="title"  
    placeholder="Enter Here"
    name="title"
    value="<%= note.getTitle() %>"
    >
    
    
  </div>
  
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea required id="NoteContent" 
    placeholder="Enter your content"   
    class= "form-control"  
    style = "height:300px";
    name="content"  
    ><%= note.getContent()%>
    </textarea> 
  </div>
  
<div class ="container text-center">
  <button type="submit" class="btn btn-success">Save</button>
   </div>  

</form>
   
   </div>
   
   
</body>
</html>