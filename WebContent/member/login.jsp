<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="member" class="mypackage.Member"></jsp:useBean>
<jsp:setProperty property="*" name="member"/>
<jsp:useBean id="mdao" class="mypackage.MemberDao"></jsp:useBean>
<%

	member = mdao.GetMemberInfomation( member );
%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>����</title>
</head>
<body>
<%
	if( member == null){
%>
<script type="text/javascript">
	alert('�������� �ʴ� ȸ���Դϴ�.');
	histroy.back();
</script>
<%
	}else{
%>
<script type="text/javascript">
	alert('�α����� ���ϵ帳�ϴ�.');
</script>
<%
	session.setAttribute( "loginfo", member );
	response.sendRedirect( "result.jsp" );
	}
%>
</body>
</html>