<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page session="true" %>
    <%@ page import = "java.util.Date"%>
<%@ page import = "java.text.SimpleDateFormat"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	String name = (String) session.getAttribute("name");
%>  
<%
	String q1 = request.getParameter("q1");
	session.setAttribute("q1", q1);
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .footer {
        position: fixed;
        bottom: 0;
        left: 0;
        width: 100%;
        
        padding: 1px;
        text-align: right;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }
</style>
</head>
<body>
		<h1>영어 레벨 테스트</h1>
		<div style="text-align: right;">
        <p>반갑습니다.  <%= name %>님!....</p>
        </div>
		<hr>
		
			<form action="test03.jsp" method="post">
		<p>2. 다음 빈 칸에 들어갈 말로 알맞은 것은?</p>
   			<p>I have two nice friends. They are Ken and Joe. I like ___ . They like ___ , too.</p>
        <input type="radio" name="q2" value="1"> ① they - my<br>
        <input type="radio" name="q2" value="2"> ② them - me<br>
        <input type="radio" name="q2" value="3"> ③ their - mine<br>
        <input type="radio" name="q2" value="4"> ④ theirs - I<br>
        <input type="hidden" name="q1" value="<%=q1 %>">
		<input type="submit" value="다음">
        </form>
        <div class="footer" style="text-align: right;">
		<p> 컴퓨터소프트웨어공학부 201894005 고욱현      </p>
		</div>
		
    	
    	
</body>
</html>