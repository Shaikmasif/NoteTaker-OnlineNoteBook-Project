<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_js_css.jsp" %>
<title>Add Notes</title>
</head>
<body>
<div class="container-fluid p-0 m-0">
<%@include file="navbar.jsp" %>
<h1>Please enter your notes details</h1>

<!-- Add notes form -->
<form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input type="text" 
    		class="form-control" 
    		id="title" 
    		name="title"
    		required aria-describedby="emailHelp" placeholder="Enter Note Title">
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
	<textarea id="content" name="content" required class="form-control" placeholder="Enter Note Content" style="min-height: 150px"></textarea>
  </div>
  <div class="container text-center">
    <button type="submit" class="btn btn-primary">Add</button>
  
  </div>
</form>
</div>

</body>
</html>