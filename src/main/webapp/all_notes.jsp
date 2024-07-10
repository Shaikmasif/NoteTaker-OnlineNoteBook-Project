<%@page import="jakarta.persistence.TypedQuery"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="java.util.*"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_js_css.jsp"%>
<title>All Notes</title>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<h1 class="text-uppercase">All Notes:</h1>
	<div class="row">
		<div class="col-12">
			<%
			Session s = FactoryProvider.getFactory().openSession();
			TypedQuery<Note> q = s.createQuery("from Note", Note.class);
			List<Note> list = q.getResultList();
			for (Note note : list) {
			%>
			<div class="card mt-3" >
				<img class="card-img-top px-6" style="width:60px;" src="img/pencil.png" alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title"><%=note.getTitle() %></h5>
					<p class="card-text px-6"><%=note.getContent() %></p>
					<p><b class="text-primary"><%=note.getAddedDate().toLocaleString() %></b></p>
					<a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
					<a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
				</div>
			</div>
			<%
			}
			s.close();
			%>

		</div>
	</div>

</body>
</html>