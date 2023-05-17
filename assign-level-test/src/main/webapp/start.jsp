<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page session="true" %>
    <%@ page import = "java.util.Date"%>
<%@ page import = "java.text.SimpleDateFormat"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영어 레벨 테스트</title>
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
	<div style="text-align: center;" style="height: 400px">
		<h1>영어 레벨 테스트</h1><hr>
	</div>
	
		<div style="text-align: center;">
			<form action="test01.jsp" method="post">
				<label for="name" style="display: inline-block; width: 50px; text-align: right;">이름 :</label>
				<input type="text" id="name" name="name" style="width: 150px;">
				<br>
				<br>
				<input type="submit" value="다음">
			</form>
		</div>
		<div class="footer" style="text-align: right;">
		<p> 컴퓨터소프트웨어공학부 201894005 고욱현      </p>
		</div>
</body>
</html>