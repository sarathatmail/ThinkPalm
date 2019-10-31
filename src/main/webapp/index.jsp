<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML >
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Echoing HTML Request Parameters</title>
</head>
     
<body>
  <h2>Choose sports person:</h2>
  <form method="get">
    <input type="checkbox" name="author" value="Valentino Rossi">Rossi
    <input type="checkbox" name="author" value="Sachin Tendulkar">Jishnu
    <input type="checkbox" name="author" value="Leonel Messi">Messi
    <input type="checkbox" name="author" value="Rafael Nadal">Nadal
    <input type="submit" value="Query">
  </form>
  
  <% 
  String[] authors = request.getParameterValues("author");
  if (authors != null) {
  %>
    <h3>You have selected author(s):</h3>
    <ul>
      <%
      for (String author : authors) { 
      %>
        <li><%= author %></li>
      <%
      }
      %>
    </ul>
  <%
  }
  %>
  <br /><a href="<%= request.getRequestURI() %>">BACK</a> 
<body>
</html>
