<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored ="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>MyBook</title>
</head>
<body>
<h1>Book Information</h1>

<br><br>
   <table style="with: 50%" border="2">
   
   <tr>
	 <td>Book Id</td>
     <td>Book Name</td>
     <td>Author</td>
     
    
    </tr>
    <tr>
     <td>${bookid}</td>
     <td>${bookname}</td>
     <td>${author}</td>
      
     
    </tr>

     <a href="/bookapp"> Click here to go to index page</a></td>

   </table>
   