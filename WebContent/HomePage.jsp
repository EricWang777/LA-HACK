<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="HomePage.css">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js">
	
	</script>
<title>Home Page</title>
</head>
<body>
	<div id="top">
		<div id="search">		
		<form name="SearchForm" method="GET" action="SearchServlet">
			<input style="display:none" name="onPage" value="0">
			<input type="text" placeholder="Search for question" name="searchContent" id="search_box"/>
			<input title="search" src="./images/search_icon.png" name="search" type="image" id="search_icon" />
		</form>
		</div>
		
		
		
		<a title="Log out" href="Login_Page.jsp">
			<img src="./images/logout.png" alt="Log_out" width="50" height="50" id="logout">
		</a>
		<a title="View profile" href="Profile_Page.jsp" >
			<img src="./images/user.png" alt="user_icon" width="50" height="50" class="userimage" id="user">
		</a>
	</div>
	<div id="bottom">
	<div id="left">
	
	</div>
	<div id="right">
	
	</div>
	</div>
	
</body>
</html>