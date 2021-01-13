<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/test1?serverTimezone=UTC";
	String uname = "root";
	String password = "12061";
	String sql = "select * from students";
	
	Connection con = DriverManager.getConnection(url, uname, password);
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery(sql);
	
	%>
	
	<%
	while(rs.next()) { %>
		Student   id: <%= rs.getString(1) %> <br>
		Student name: <%= rs.getString(2) %> <br>
		Student city: <%= rs.getString(3) %> <br><br>
	<% } %>
	
	
	
</body>
</html>