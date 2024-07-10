<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container-fluid p-0 m-0">
<%@include file="navbar.jsp" %>
<h1>Edit Your Note.</h1>
<br>
</div>
<%
int noteId = Integer.parseInt(request.getParameter("note_id").trim());
Session s = FactoryProvider.getFactory().openSession();
Note note = s.get(Note.class,noteId);


%>
<form action="UpdateServlet" method="post">
  <div class="form-group">
  <input value="<%=note.getId() %>" name="id"/>
  <br>
    <label for="title">Note Title</label>
    <input type="text" 
    		class="form-control" 
    		id="title" 
    		name="title"
    		required aria-describedby="emailHelp"
    		placeholder="Enter Note Title"
    		value="<%=note.getTitle()%>">
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
	<textarea id="content" name="content"  required class="form-control" placeholder="Enter Note Content" style="min-height: 150px"><%=note.getContent() %></textarea>
  </div>
  <div class="container text-center">
    <button type="submit" class="btn btn-success">Save Your Note</button>
  
  </div>
</form>
</div>


</body>
</html>