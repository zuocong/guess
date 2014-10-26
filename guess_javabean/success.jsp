<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="bean.GuessBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>简单猜数字游戏</title>
</head>
<body background="bg6.png">
<div class="text" style=" text-align:center;">
<jsp:useBean id="myBean" scope="session" class="bean.GuessBean" />
<%
   long startTime = session.getCreationTime();
   long endTime = session.getLastAccessedTime();
   %>
   <font color="red" size="10">
   <P>恭喜!</font>
   <BR>
   <P>你共猜了<jsp:getProperty name="myBean" property="count"/>次
   <P>用时<%=(endTime-startTime)/1000%>秒.
   <P>这个数字就是<jsp:getProperty name="myBean" property="random"/>
<%session.invalidate();
 %>
   <P><a href="index.jsp">重新开始</a>
</div>
</body>
</html>
