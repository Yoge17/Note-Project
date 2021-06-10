<!doctype html>
<html lang="en">
  <head>
  
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   

    <title>Home Page</title>
        <%@include file="all_js_css.jsp"%> 
  </head>
  <body>
   <div class ="container-fluid p-0 m-0">
     <%@include file="navbar.jsp"%> 
   
   </div>
   <br>
   <div class="card" mt-2 pt-2>
   <img alt= " " class="img-fluid mx-auto" style="max-width:400px" src ="image/pencil.png">
   <h1 class="text-primary text-uppercase text-center mt-3" >Start your Notes</h1>
    <div class = "container text-center">
   <button class = "btn btn-outline-primary text-center" onclick="window.location.href='add_notes.jsp'">Start here</button>
  
   </div>
   
   </div>
   
   
   
   
   
    </body>
</html>