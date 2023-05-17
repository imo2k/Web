<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page session="true" %>
    <%@ page import = "java.util.Date"%>
<%@ page import = "java.text.SimpleDateFormat"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = (String) session.getAttribute("name"); 
%>  
<%
	String q4 = request.getParameter("q4");
	session.setAttribute("q4", q4);
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
		
		<form action="result.jsp" method="post">
   		<p>5. 다음 빈 칸에 들어갈 말로 알맞은 것은?</p>
   		<p>  The first bus ___ to the bus stop at 5 a.m every morning.</p>
        <input type="radio" name="q5" value="1"> ① come<br>
        <input type="radio" name="q5" value="2"> ② comes<br>
        <input type="radio" name="q5" value="3"> ③ came<br>
        <input type="radio" name="q5" value="4"> ④ will come<br>
        <input type="hidden" name="q4" value="<%=q4 %>">
        <input type="submit" value="다음">
        </form>
        <div class="footer" style="text-align: right;">
		<p> 컴퓨터소프트웨어공학부 201894005 고욱현      </p>
		</div>
</body>
</html>