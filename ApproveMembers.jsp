
<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,java.util.Random,java.util.*"%>

<HEAD>


	<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>


	<LINK href="styles.css" type="text/css" rel="stylesheet">

</HEAD>
<BODY class="SC">
<h4 align=center>Approve Members here</h4>


						<table align="center" width="60%">
							<tr class=row_title>
							<th align="left">UserId</th><th align="left">Member Type</th><th align="center">Click</th>
							</tr>
					<% ArrayList<com.eResorts.ApproveMembersBean> a=(ArrayList<com.eResorts.ApproveMembersBean>)session.getAttribute("appmembers");
int rCount=0;

for(int i=0;i<a.size();i++)
	{
                       com.eResorts.ApproveMembersBean b=(com.eResorts.ApproveMembersBean)a.get(i);
			
			String UserID=b.getUserID();
			String MemberType=b.getMemberType();

					%>
					<tr class= <%=(rCount%2!=0)? "row_even" : "row_odd"%>>
						<td align=center><%=UserID%></td>
						<td align=center><%=MemberType%></td>
						<td align=center><a href="approving.jsp?id=<%=UserID%>">Details</a></td>
						
					</tr>
					<%
				rCount++;
			}
			if( rCount == 0)	{%><h3 align=center>Sorry No records Found</h3><% }
			
	
%>
</BODY>

</PRE>