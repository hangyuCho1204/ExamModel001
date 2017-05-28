<%@ page import="mypackage.Member" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	로그인 성공<br>
	<%
		Member member = (Member)session.getAttribute("loginfo");
	%>
	<a href="detail.jsp?id=<%=member.getId() %>">내 정보 보기</a>
</body>
</html>