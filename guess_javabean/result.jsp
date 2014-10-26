<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="bean.GuessBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>简单猜数字游戏</title>
</head>
<body>
<jsp:useBean id="myBean" scope="session" class="bean.GuessBean" />
<jsp:setProperty name="myBean" property="guess" value="<%=request.getParameter(\"guess\")%>"/>
<%
	String result = myBean.compare();
	response.sendRedirect(result);
%>

</body>
</html>
