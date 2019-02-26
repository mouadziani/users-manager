<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page
	import="javax.naming.Context"
	import="javax.naming.InitialContext"
	import="javax.sql.DataSource"
	%>
	<%
	Context ctx;
	try {
		ctx = new InitialContext();
		DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/gestion");
		ds.getConnection();
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	System.out.println("Test");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CRUD APP - USERS</title>
</head>
<body>

<form method="post" action="/GestionUsers/GererUsers?action=add">

cin <input type="text" name="cin" ><br>
Nom <input type="text" name="nom" ><br>
Prenom <input type="text" name="prenom" ><br>
Adresse <input type="text" name="adresse" ><br>
<input type="submit" value="Ajouter">

</form>

<table border="1">
	<tr>
		<th>CIN</th>
		<th>Nom</th>
		<th>Prenom</th>
		<th>Adresse</th>
		<th>Action</th>
	</tr>
</table>
</body>
</html>