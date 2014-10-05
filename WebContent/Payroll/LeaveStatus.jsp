<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/WEB-INF/TLD/struts-html.tld"	prefix="html"%>
<%@ taglib uri="/WEB-INF/TLD/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/TLD/struts-bean.tld" prefix="bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Leave Status</title>
<link href="css/Payroll_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="main">

<div id="header">
<div id="header1">

<a href="Logout.do"><img src="images/MasterData_logout.png" alt="logout" border="0" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="admhome.jsp"><img src="images/MasterData_home.png" alt="Home" border="0"  /></a>
</div><!--header1-->

<table width="1000" align="center" cellpadding="0" cellspacing="0" class="para">

<tr>
<td width="255" height="70"></td>
<td width="402"></td>
<td width="341"></td>
</tr>
<tr>
<td align="left" style="padding-left:20px;"> Welcome to  <%
			Object ob = (Object) session.getAttribute("username").toString();
			if (ob != null) {
		%> <%=ob%> <%
 	}
 %></td>
<td align="center"><img src="images/leavestatus_payroll.png" /></td>
<td align="right"><%=new java.util.Date()%></td>
</tr>
</table>


</div><!--header-->


<div id="content">

<div id="cont2">

<br />

<table width="950" cellpadding="0" cellspacing="0" align="center" class="para" border="1" rules="all">
 
  
 </tr>
 <tr bgcolor="#999999" height="30" align="center" >
 <td width="134"><b> Employee Name</b></td>
 <td width="286"><b>Balance Leave</b></td>
 <td width="227"><b>Applied Leave</b></td>
 <td width="227"><b>Approval</b></td>
 <td width="227"><b>Rejected</b></td>
 
 </tr>
 <tr align="center" height="25">
 <td align="center"><logic:notEmpty name="username" scope="request">
					<input name="username" align="center" id="username" value="<bean:write name="username" scope="request" />"  readonly="readonly" style="background:#93d1a8; border:none;"/>
				</logic:notEmpty></td>
 <td><logic:notEmpty name="bal" scope="request">
					<input name="bal" align="center" id="bal" value="<bean:write name="bal" scope="request" />"  readonly="readonly" style="background:#93d1a8; border:none;"/>
				</logic:notEmpty></td>
 <td><logic:notEmpty name="bal1" scope="request">
					<input name="bal1" align="center" id="bal1" value="<bean:write name="bal1" scope="request" />"  readonly="readonly" style="background:#93d1a8; border:none;"/>
				</logic:notEmpty></td>
 
 <td><logic:notEmpty name="app" scope="request">
					<input name="app" align="center" id="app" value="<bean:write name="app" scope="request" />"  readonly="readonly" style="background:#93d1a8; border:none;"/>
				</logic:notEmpty></td>
  <td><logic:notEmpty name="rej" scope="request">
					<input name="rej" align="center" id="rej" value="<bean:write name="rej" scope="request" />"  readonly="readonly" style="background:#93d1a8; border:none;"/>
				</logic:notEmpty></td>

 </tr>

 
 

 </table>

</div><!--cont1-->
</div><!--content-->
</div><!--main-->

<div style="clear:both"></div>
<div id="footer">
<p align="left" class="style2">Copyright � 2013 itech Solutions. All rights reserved.</p>
</div>
<!--footer-->


</body>
</html>