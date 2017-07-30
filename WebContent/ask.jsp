<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="images/Azulmedia.css" type="text/css" />
<title>SpiceWorks</title>

<script>
function showCustomer(str)
{
var xmlhttp;    
if (str=="")
  {
  document.getElementById("txtHint").innerHTML="";
  return;
  }
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// s
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","allQ.jsp?q="+str,true);
xmlhttp.send();
}


function showCus(str)
{

var xmlhttp;    
if (str=="")
  {
  document.getElementById("txtHint").innerHTML="";
  return;
  }
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","myQ.jsp?q="+str,true);
xmlhttp.send();
}
</script>
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
      <h1 class="clear"><h1 class="clear">Welcome
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
      <%
      
      if(session.getAttribute("username")==null)
		{
			
			response.sendRedirect("login.jsp");
		}
		%>
      
   
        
		<div>
		   <div ><table border="0" ><tr><td><img src="images/chat.jpg" height="100px;" width="100px;" /></td><td><h2>Welcome</h2><h3>Problem Shared is Problem Solved</h3></td></tr></table></div>
		   </div>
		   
		        <form method="post" action="Asking">
		        <table border="0" >
		   		<tr><td><input type="text" name="question" style="width:400px; height:30px;" value="ask your Question" /></td></tr>
		   		<tr><td><textarea cols="500" rows="50" name="details" style="margin-top:20px; width:400px;">Provide Qusetion Details Here</textarea></td></tr>
				<tr><td><input type="submit" value="ASK!"  style="width:200px; margin-top:20px; height:30px;" /></td></tr>
				</table>
				</form>
				
				<%
				   if(request.getAttribute("msg")!=null)
				   {
				out.println("<font color='yellow'>"+request.getAttribute("msg"));	   
					   
				   }
				
				%>
		   
		   </div>
		   <div>
		   <table border="0"><tr>
		   <td><a href="#"><label onclick="showCustomer(this.value)">All Questions |</label></a></td>
		   <td><a href="#"><label onclick="showCus(this.value)">My Questions</label></a></td>
		   </tr></table>
		   </div>
		
		
		</div>
		
		
		
		
		
		
		
      </div>
      <a name="SampleTags"></a>
      <div class="box" id="txtHint">
        
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
