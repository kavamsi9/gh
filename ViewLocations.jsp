<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random,com.eResorts.MyFunctions"%>
<%com.eResorts.ViewLocationsBean bean=(com.eResorts.ViewLocationsBean)session.getAttribute("loc");



%>	
<HEAD>


	<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>


	<LINK href="styles.css" type="text/css" rel="stylesheet">

</HEAD>
<BODY class='SC'>

<table align=center>
<th align="center"><Img src="Images/Photos/<%=bean.getLocationImage()%>"></th>
<h3 align=center>Location Details of <%=bean.getLocationName()%></h3>
			<TR class= "row_even">
			<td align="right"><B>Location Description:</B><I> <%=bean.getLocationDesc()%></I></td></tr>
</table>
</BODY>
