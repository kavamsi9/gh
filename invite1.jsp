<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,com.eResorts.MyFunctions"%>
<% Integer f=(Integer)session.getAttribute("flag");
int flag=f.intValue();
%>
<HEAD>
	<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>
	<LINK href="styles.css" type="text/css" rel="stylesheet">
</HEAD>
<BODY class="SC">
<h3 align=center>Invite A Guest</h3>
<%
if( flag > 0)	{
				%><P align=center><h6 align=center>Invites Added successfully</h6>
				<%
			}
			else{
				%><P align=center><h6 align=center>Error in updating..please try again</h6>
 				 <A HREF="Invite0.jsp">Back</A></P>
				<% 
			}
			
	
%>
</BODY>