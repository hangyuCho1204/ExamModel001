<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	request.setCharacterEncoding("euc-kr");
	String id = request.getParameter("id");
%>
<jsp:useBean id="member" class="mypackage.Member"/>
<jsp:useBean id="mdao" class="mypackage.MemberDao"/>
<%
	member = mdao.GetMemberById(id);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>�� ����</h3>
<table border="1">
	<tr>
		<td>���̵�</td>
		<td><%=member.getId() %><td>
	</td>
	<tr>
		<td>�̸�</td>
		<td><%=member.getName() %></td>
	</tr>
	<tr>
		<td>���</td>
		<td><%=member.getPassword() %></td>
	</tr>
</table>
</body>
</html>