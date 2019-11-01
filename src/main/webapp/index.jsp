<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML >
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Echoing HTML Request Parameters</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
     
<body class="container">
	<div class="col-md-8">
	<div class="panel panel-info" style="margin-top: 25px; box-shadow: 5px 5px 15px gray">
      <div class="panel-heading">
		<img src="thinkpalm.png">
	  </div>
	  
      <div class="panel-body">
		<div class="row" style="margin-bottom: 10px;">
			<div class="col-md-6">
			  <div style="font-weight:bold; font-size: 16px;">Choose sports person:</div>
			</div>
		</div>
		<div class="row">
			<form method="get">
				<div class="col-md-6">
					<ul class="list-group">
					  <a class="list-group-item"><input style="cursor: pointer;" type="checkbox" name="author" value="Valentino Rossi"> Rabeesh</a>
					  <a class="list-group-item"><input style="cursor: pointer;" type="checkbox" name="author" value="Sachin Tendulkar"> Sachin</a>
					  <a class="list-group-item"><input style="cursor: pointer;" type="checkbox" name="author" value="Leonel Messi"> Messi</a>
					  <a class="list-group-item"><input style="cursor: pointer;" type="checkbox" name="author" value="Rafael Nadal"> Rafael</a>
					</ul>
				</div>
				
				<div class="col-md-6">
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
				</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<a class="btn btn-sm btn-default" href="<%= request.getRequestURI() %>">BACK</a> 
				<input class="btn btn-sm btn-success pull-right" type="submit" value="Query">
			</div>
		</div>
			</form>
		
		
	  </div>
    </div>
	</div>
<body>
</html>
