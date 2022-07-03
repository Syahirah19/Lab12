<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%-- Import all the necessary classes --%>
<%@ page import="demo.hogwarts.House" %>
<%@ page import="demo.hogwarts.HouseFacade" %>

<%
	// Get parameter value from link
	// Use request.getParameter( ).
	//It is similar practice from the Servlet.
	int houseId = Integer.parseInt(request.getParameter("id"));
	
	// Wrap into House
	House house = new House();
	house.setHouseId(houseId);
	
	// Get house. Use house Facade
	HouseFacade houses = new HouseFacade();
	house = houses.getHouse(house);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- The title bar should display the house name -->
<title>Details Information of <%=house.getName()%></title>
</head>
<body>

	<br><br><br>
	<!-- The heading should display the house name -->
	<h4>Details Information of <%=house.getName()%></h4>

	<b>Name: <%=house.getName()%></b><br><br>
	<b>Founder: <%=house.getFounder() %></b><br><br>
	
	<p>
	Click <a href="houses.jsp">here</a> to return to list of Hogwart's Houses.<br>
	Click <a href="index.jsp">here</a> to return main page.
	</p>
	
</body>
</html>