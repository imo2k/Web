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
	String q2 = request.getParameter("q2");
	session.setAttribute("q2", q2);
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
		
		<form action="test04.jsp" method="post">
		<p>3. 다음 밑줄에 알맞은 말로 짝지은 것은?</p>
   		<p>- There ___ many singers in the studio.</p>
   		<p>- There ___ a rose in the vase.</p>
        <input type="radio" name="q3" value="1"> ① is – is<br>
        <input type="radio" name="q3" value="2"> ② goes<br>
        <input type="radio" name="q3" value="3"> ② is - are<br>
        <input type="radio" name="q3" value="4"> ④ are - is<br>
		<input type="hidden" name="q2" value="<%=q2 %>">
        <input type="submit" value="다음">
        </form>
        <div class="footer" style="text-align: right;">
		<p> 컴퓨터소프트웨어공학부 201894005 고욱현      </p>
		</div>
 
</body>
</html>