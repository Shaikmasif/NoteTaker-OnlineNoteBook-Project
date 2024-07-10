<!doctype html>
<html lang="en">
  <head>
    <%@include file="all_js_css.jsp" %>
    <title>Home Page</title>
  </head>
  <body>
	<div class="container-fluid p-0 m-0">
		    <%@include file="navbar.jsp" %>
			<br>
			<div class="card ">
			<img alt="" src="img/pencil.png" class="img-fluid mx-auto" style="max-width:400px">
			<h1 class="text-uppercase text-primary text-center mt-3">Start Taking Your Notes</h1>
			<div class="container text-center">
			<button class="btn btn-outline-primary text-center" onclick="location.href='add_notes.jsp'">Start Here</button>
			
			</div>
			</div>
	</div>
    
  </body>
</html>