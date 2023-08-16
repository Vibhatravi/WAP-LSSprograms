<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<%@  include file="db.jsp" %>
<title>Untitled Document</title>
<style>

input[type=email] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}



.logindiv {
  border-radius: 5px;
  background-color: #999999;
  padding: 20px;
  margin-left:30%;
  margin-right:30%;
}
body {
	background-color: #000000;
}
.style2 {font-family: Arial, Helvetica, sans-serif}
.style3 {color: #000000}
</style>
<body>
<h2 align="left" class="style2" style="color:#FFFFFF">&nbsp; </h2>
<h2 align="left" class="style2" style="color:#FFFFFF"><u>Green House Monitoring</u></h2>
<h2 align="center" class="style2" style="color:#FFFFFF">&nbsp; </h2>
<h2 align="center" class="style2" style="color:#FFFFFF">LOGIN PAGE </h2>
<div class="logindiv">
  <form action="" method="post">
    <label for="fname">Email</label>
    <p>       
    <input type="email"  name="username" placeholder="Username"  required />
    </p>
    <label for="lname">Password</label>
    <input type="password"  name="password" placeholder="Your Password." pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required />
    <input name="Submit" type="submit" class="style2" value="Submit" />
  </form>
</div>
<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("username");
String s2=request.getParameter("password");



rst=stmt.executeQuery("select * from login where username='"+s1+"' and password='"+s2+"'");
if(rst.next()){
%>
<script>

alert("login Successfull");
window.open("index.html","_self");
</script>
<%
}else{
%>
<script>

alert("login Failed");

</script>
<%
}
}


%>
</body>

</html>
