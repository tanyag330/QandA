<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.ibm.dao.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
	
	String sql="select * from question order by date desc";
	ResultSet rs=QConnect.allQuestion(sql);
	
	out.println("<center><table border='1'>");
	out.println("<th>UserName</th><th>Questions</th><th>date</th><th>TotalAnswer</th>");
	while(rs.next())
	{
	  out.println("<tr>");
	  out.println("<td>"+rs.getString(2)+"</td>");
	  out.println("<td><a href='Answer.jsp?qid="+rs.getString(1)+"'><font color='yellow'>"+rs.getString(3)+"</a></td>");
	  out.println("<td>"+rs.getString(5)+"</td>");
	  out.println("<td><center><b>"+rs.getString(6)+"</td>");
	  out.println("</tr>");
	}
	out.println("</table>");
	
	
}
catch(Exception e)
{
	System.out.println(e);
}

%>
</body>
</html>