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
<h1>Add Book</h1>
<form action="addBook" method="post">
   <table style="with: 50%" border="2">
    <tr>
     <td>Book Id</td>
     <td><input type="text" name="bookid" /></td>
    </tr>
    <tr>
     <td>Book Name</td>
     <td><input type="text" name="bookname" /></td>
	</tr>
	<tr>
     <td>Author</td>
     <td><input type="text" name="author" /></td>
	</tr>
	<tr>
	 <td colspan="2" align="center"><input type="submit" value="Add Book"/></td>
	</tr>
	
   </table>
   
   
</form>

<br><br>
   <table style="with: 50%" border="2">
   
   <tr>
	 <td>Book Id</td>
     <td>Book Name</td>
     <td>Author</td>
     
    
    </tr>
  <c:forEach items="${booklist}" var="book">
   
   
    <tr>
     <td>${book.bookid}</td>
     <td>${book.bookname}</td>
     <td>${book.author}</td>
     <td><a href="deleteBook?bookid=${book.bookid}"><button>Delete</button></a></td>
     <td><a href="getBook/${book.bookid}"><button>Get Info</button></a></td>
     <td><a href="updateBook?bookid=${book.bookid}"><button>Update</button></a></td>
     
    </tr>

	</c:forEach>
   </table>
   
