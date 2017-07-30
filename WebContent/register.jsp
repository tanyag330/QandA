<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="images/Azulmedia.css" type="text/css" />
<title>Azulmedia</title>
<script type="text/javascript" src="js/RegValidation.js"></script>
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
       
      </ul>
    </div>
  </div>
  <div id="content-wrap">
    <div id="sidebar" >
      <h1 class="clear">Sidebar Menu</h1>
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
       <center>
		<div>
		<h1>&nbsp;</h1>
		<h1>&nbsp;</h1>
		<h1>User Register</h1>
		<form method="post" action="Registration" name="reg" onsubmit="return  regvalidate()">
		<table width="335" height="127" border="0" >
		<tr><td width="133" height="40">UserName</td>
		<td width="192"><input type="text" name="username" /></td></tr>
		<tr><td width="133" height="40">Password</td>
		<td width="192"><input type="password" name="password" /></td></tr>
		<tr><td width="133" height="40">Email</td>
		<td width="192"><input type="text" name="email" /></td></tr>
		<tr><td width="133" height="40">Age</td>
		<td width="192"><input type="text" name="age" /></td></tr>
		<tr><td width="133" height="40">City</td>
		<td width="192"><select name="city">
		  <option value="jaipur">jaipur</option>
		  <option value="delhi">delhi</option>
		  <option value="agra">agra</option>
		  <option value="rudrapur">rudrapur</option>
		  <option value="nainital">nainital</option>
		  <option value="kashipur">kashipur</option>
		  <option value="mumbai">mumbai</option>
		  <option value="noida">noida</option>
		</select></td></tr>
		
		<tr><td width="133" height="40">Date of Birth</td>
		<td width="192"><input type="date" name="dob" /></td></tr>
		
		
		
		<tr><td height="32">		</td>
		  <td><input name="submit" type="submit" value="Register"  style="float:right; margin-right:60px; width:140px;" /></td>
		</tr>
		</table>
		
		</form >
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		</div>
		</center>
      </div>
      <a name="SampleTags"></a>
      <div class="box">
        <h1>
          <label></label>
        </h1>
        <br />
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
