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
	String q3 = request.getParameter("q3");
	session.setAttribute("q3", q3);
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
		
		<form action="test05.jsp" method="post">
   		<p>4. 다음 질문에 알맞은 답은?</p>
   		<p>   Were Mrs. and Mr. Brown at home yesterday?</p>
        <input type="radio" name="q4" value="1"> ① Yes, you are.<br>
        <input type="radio" name="q4" value="2"> ② No, you aren't<br>
        <input type="radio" name="q4" value="3"> ③ No, they weren't<br>
        <input type="radio" name="q4" value="4"> ④ No, they wasn't.<br>
        <input type="hidden" name="q3" value="<%=q3 %>">
        <input type="submit" value="다음">
        </form>
      <div class="footer" style="text-align: right;">
		<p> 컴퓨터소프트웨어공학부 201894005 고욱현      </p>
		</div>
    	
</body>
</html>