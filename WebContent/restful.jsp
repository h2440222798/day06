<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <form action="users" method="post">
  	<input type ="text" name = "name"><br>
  	<input type="submit" value="add">
 </form>
  <form action="users" method="get">
  	<input type ="text" name = "name"><br>
  	<input type="submit" value="select">
 </form>
 <hr>
 <!--
    查询指定用户是1的的数据 
  -->
<form action="users/1" method="get">
<!--   	<input type ="text" name = "name"><br> -->
  	<input type="submit" value="selectbyid">
</form>
<hr>
   <!--修改
    -->
  <form action="users/10" method="post">
   <input type="hidden" name="_method" value="put" /><br>
  	<input type ="text" name = "name"><br>
  	<input type="submit" value="change">
 </form>

 <!--删除 
  -->
  <form action="users/1" method="post">
   <input type="hidden" name="_method" value="delete" /><br>
  	<input type ="text" name = "name"><br>
  	<input type="submit" value="delete">
 </form>  
</body>
</html>