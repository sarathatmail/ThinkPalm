<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

	<head>
		<title><tiles:insertAttribute name="title"/></title>
    	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="icon" href="src/main/webapp/resources/favicon.ico"/>
		<link rel="stylesheet" type="text/css" href="src/main/webappresources/forge-style.css"/>
	</head>

	<body>

		<div id="container">

			<div id="navigation">
				<a id="homeLink" href="index.jsp">
					<img src="src/main/webapp/WEB-INF/resources/forge-logo.png" alt="Forge... get hammered" border="0"/>
				</a>
			</div>

			<div id="content">
				<tiles:insertAttribute name="body"/>
			</div>

			<div id="footer">
				Powered by <a href="http://jboss.org/forge">Forge</a>.  Icons by the <a href="http://everaldo.com/crystal">Crystal Project</a>
			</div>
		</div>

	</body>

</html>
