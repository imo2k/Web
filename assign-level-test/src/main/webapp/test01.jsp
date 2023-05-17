<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date"%>
<%@ page import = "java.text.SimpleDateFormat"%>

<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name"); 
	session.setAttribute("name", name);
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
</head>
<body>
        <h1>영어 레벨 테스트</h1>
        <div style="text-align: right;">
        <p>반갑습니다.  <%= name %>님!....</p>
        </div>
        <hr>


		<form action="test02.jsp" method="post">
	        <p>1. 다음 빈 칸에 들어갈 말로 알맞은 것은?</p>
	        <p>   Thomas ___ out two hours ago.</p>
	        <input type="radio" name="q1" value="1"> ① go<br>
	        <input type="radio" name="q1" value="2"> ② goes<br>
	        <input type="radio" name="q1" value="3"> ③ goed<br>
	        <input type="radio" name="q1" value="4"> ④ went<br>
	        <input type="submit" value="다음">
        </form>
        <div class="footer" style="text-align: right;">
		<p> 컴퓨터소프트웨어공학부 201894005 고욱현      </p>
		</div>
        
       
</body>
</html>