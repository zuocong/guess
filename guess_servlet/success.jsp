<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>简单猜数字游戏</title>
</head>
<body background="bg6.png">
<div class="text" style=" text-align:center;">
<%
   long startTime = session.getCreationTime();
   long endTime = session.getLastAccessedTime();
   int count = (Integer)session.getAttribute("count");
   int random = (Integer)session.getAttribute("random");
   %>
   <p>恭喜你，猜对了
   <br>
   <p>你共猜了<%=count%>次
   <p>用时<%=(endTime-startTime)/1000%>秒.
   <p>这个数字就是<%=random %>
<%session.invalidate();
 %>
   <p><a href="index.jsp">重新开始</a>
</div>
</body>
</html>
