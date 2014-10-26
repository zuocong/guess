<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>简单猜数字游戏</title>
</head>
<body>
<%
int countN=0;
if(session.getAttribute("count")!=null)
	countN=(Integer)session.getAttribute("count");
countN++;
session.setAttribute("count",countN);
String guess=request.getParameter("guess");
try{
	int guessN=Integer.parseInt(guess);
	int randomN=(Integer)session.getAttribute("save");

	if(guessN>100||guessN<1)response.sendRedirect("outRange.jsp");
	else if(guessN>randomN)response.sendRedirect("large.jsp");
	else if(guessN<randomN)response.sendRedirect("small.jsp");
	else if(guessN==randomN)response.sendRedirect("success.jsp");
}catch(NumberFormatException nfe){
	response.sendRedirect("error.jsp");
}


%>

</body>
</html>
