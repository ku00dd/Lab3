<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
  <%@ page import="java.util.*" %>
  <%@ page import="com.mypak.m.Det" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-5">

<title> Обчислення визначника матриці</title>
</head>
<body>
<% String s = request.getParameter("ar");
String []sp = s.trim().split(" "); 
int n=(int)Math.sqrt(sp.length);
double [][] arr=new double [n][n];
int k=0;
for(int i=0;i<n;i++){
	for(int j=0;j<n;j++){
	 arr[i][j]= Double.parseDouble(sp[k]);
	 k++;
	 }
}
%>
<%

%>
Масив =<%= s %> <br>
Визначник матриці = <%= new Det().CalculateMatrix(arr) %>

</body>
</html>