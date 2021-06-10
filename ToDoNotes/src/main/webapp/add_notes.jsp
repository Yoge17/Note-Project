<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
   <%@include file="all_js_css.jsp"%> 
</head>
<body>
<div class ="container-fluid p-0 m-0">
     <%@include file="navbar.jsp"%> 
   <br>
   <h1>Please fill your Note Details </h1>
   </div>
<!-- This is add foem  -->
<form action="SaveNoteServlet" method="post">
  
  <div class="form-group">
    <label for="Title"> Note Title</label>
    <input required type="text" 
    class="form-control" 
    id="title"  
    placeholder="Enter Here"
    name="title">
    
  </div>
  
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea required id="NoteContent" 
    placeholder="Enter your content"   
    class= "form-control"  
    style = "height:300px";
    name="content"  ></textarea> 
  </div>
  
<div class ="container text-center">
  <button type="submit" class="btn btn-primary">Add</button>
   </div>  

</form>

</body>
</html>