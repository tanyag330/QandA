<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page import="com.ibm.dao.*" %>
<%@ page import="java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="images/Azulmedia.css" type="text/css" />
<title>Azulmedia</title>
</head>
<body>
<div id="wrap">
  <div id="header">
    <h1 id="logo">spiceworks community </h1>
    <h2 id="slogan">Problem Shared, Problem Solved &ndash; Q &amp; A</h2>
    <div id="menu">
      <ul>
        <li id="current"><a href="#">Home</a></li>
        <li><a href="login.jsp">Login</a></li>
        <li><a href="register.jsp">Register</a></li>
        <li><a href="ask.jsp">Ask</a></li>
         <li><a href="logout.jsp">logout</a></li>
      </ul>
    </div>
  </div>
  <div id="content-wrap">
    <div id="sidebar" >
      <h1 class="clear">Welcome
      <%  if(session.getAttribute("username")!=null)
      {
    	    out.println(session.getAttribute("username"));  
      }
      %></h1>
     <ul class="sidemenu">
        <li>
          <h3>&nbsp;</h3>
        <a href="#">Need help?</a></li>
        <li><a href="#TemplateInfo">Join in the fun &ndash; near you!</a></li>
        <li><a href="#SampleTags">Research and find IT answers</a></li>
        <li><a href="#">It careers </a></li>
        <li><a href="#"></a></li>
      </ul>
      <h1>&nbsp;</h1>
      <div class="searchform">
        <form action="#">
          <p>&nbsp;</p>
        </form>
      </div>
      </div>
    <div id="main"> <a name="TemplateInfo"></a>
      <div class="box">
      <%!         String qid="0"; %>
      <%
        qid=request.getParameter("qid");
try
{
	
	
	String sql="select * from question where qid=?";
	ResultSet rs=QConnect.AnsQuestion(sql, qid);
	
	out.println("<table border='0' style='width:800px;'>");
	
	while(rs.next())
	{
	  out.println("<tr><td><h2>"+rs.getString(2)+"</h2></td></tr>");
	  out.println("<tr><td><h1><font color='yellow'>Question :  "+rs.getString(3)+"</h1><font color='white'>&nbsp&nbsp&nbsp&nbsp<b>"+rs.getString(5)+"</td></tr>");
	  out.println("<tr><td><font color='green'><b><p style='margin-left:6px;'>"+rs.getString(4)+"</p></td></tr>");
	  
	 
	}
	out.println("</table>");
	
	
}
catch(Exception e)
{
	System.out.println(e);
}

%>
      </div>
      <a name="SampleTags"></a>
      <div class="box">
       
	   <form method="post" action="Answer">
	   <input type="hidden" value="<%=qid %>" name="qid"/>
	   <table border="0">
	   <tr><td><textarea name="answer" cols="1000" rows="50" style="width:700px;"></textarea></td></tr>
	   <tr><td><input type="submit" value="Answer" style="float:right;margin-top:20px; width:200px;"/></td></tr>
	   </table>
	   </form>
	   
	   
      </div>
	  
	  <div class="box">
	  
	  <% 
	  try
	{
	
	
	String sqlA="select * from answer where qid=? order by date desc";
	ResultSet rsA=QConnect.AnsQuestion(sqlA, qid);
	
	out.println("<table border='0' style='width:800px;'>");
	
	while(rsA.next())
	{
	  out.println("<tr><td><h2>"+rsA.getString(2)+"</h2></td></tr>");
	  out.println("<tr><td><h1><font color='yellow'>ANSWER :  "+rsA.getString(3)+"</td></tr>");
	  out.println("<tr><td><font color='green'><b><p style='margin-left:6px;color:white;'>"+rsA.getString(4)+"</p></td></tr>");
	  out.println("<tr><td><font color='green'><b><p style='margin-left:6px;color:white;'>---------------------------------------------------------------------------------</p></td></tr>");  
	
	}
	out.println("</table>");
	
	
}
catch(Exception e)
{
	System.out.println(e);
}
	  %>
	  </div>
    </div>
    <br />
  </div>
</div>
<div id="footer-wrap">
  <div class="footer-left">
    <p class="align-left"> &copy; 2006 <strong> prashant.gangwar@webteklabs.com </strong></p>
  </div>
  <div class="footer-right">
    <p class="align-right">&nbsp;</p>
  </div>
</div>
</body>
</html>
