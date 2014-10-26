<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>简单猜数字游戏</title> 
</head>
<body background="bg.gif">
<div class="text" style=" text-align:center;">
<P>随机分给了你一个1到100之间的数，猜猜看
<%
int number=(int)(Math.random()*100)+1;
session.setAttribute("count",new Integer(0));
session.setAttribute("save",new Integer(number));
%>
<br>
<p>请输入你所猜的数
<form action=result.jsp method="post" >
<input type="text" name="guess">
<input type="submit" value="猜猜看" >
</form>
</div>
</body>
</html>
