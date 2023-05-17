<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ page import = "java.util.Date"%>
<%@ page import = "java.text.SimpleDateFormat"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = (String) session.getAttribute("name");
%>
<%
	String q5 = request.getParameter("q5");
	session.setAttribute("q5", q5);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영어 레벨 테스트</title>
<style>
	table {
	border: 1px solid black;
	border-collapse: collapse;
	}
	th,
	td {
	border: 1px solid black;
	paddig: 25px;
	}
</style>
</head>
<body>
	<div style="text-align: center;" style="height: 400px">
		<h1>영어 레벨 테스트</h1>
		<div style="text-align: right;">
        <p>반갑습니다.  <%= name %>님!....</p>
        </div>
        <hr>
	</div>
	<div style="text-align: center;" style="height: 400px">
		<h1>영어 레벨 테스트:</h1>
	</div>
	<div>
	<%
			String q1 = (String) session.getAttribute("q1");
			String q2 = (String) session.getAttribute("q2");
			String q3 = (String) session.getAttribute("q3");
			String q4 = (String) session.getAttribute("q4");
			
			String correctAnswer1 = "4";
		    String correctAnswer2 = "2";
		    String correctAnswer3 = "4";
		    String correctAnswer4 = "3";
		    String correctAnswer5 = "2";
		%>
		<div style="text-align: center;" style="height: 400px">
		<table style="margin-left:auto;margin-right:auto;width: 40%;">
			<tr>
				<th>문항</th>
				<th>응답</th>
				<th>정답</th>
				<th>결과</th>
			</tr>
			<tr>
				<td>문항1</td>
				<td><%=q1 %></td>
				<td><%= correctAnswer1 %></td>
				<td><%= (q1 != null && q1.equals(correctAnswer1)) ? "맞음" : "틀림" %></td>
			</tr>
			<tr>
				<td>문항2</td>
				<td><%= q2 %></td>
				<td><%= correctAnswer2 %></td>
				<td><%= (q2 != null && q2.equals(correctAnswer2)) ? "맞음" : "틀림" %></td>
			</tr>
			<tr>
				<td>문항3</td>
				<td><%= q3 %></td>
				<td><%= correctAnswer3 %></td>
				<td><%= (q3 != null && q3.equals(correctAnswer3)) ? "맞음" : "틀림" %></td>
			</tr>
			<tr>
				<td>문항4</td>
				<td><%= q4 %></td>
				<td><%= correctAnswer4 %></td>
				<td><%= (q4 != null && q4.equals(correctAnswer4)) ? "맞음" : "틀림" %></td>
			</tr>
			<tr>
				<td>문항5</td>
				<td><%= q5 %></td>
				<td><%= correctAnswer5 %></td>
				<td><%= (q5 != null && q5.equals(correctAnswer5)) ? "맞음" : "틀림" %></td>
			</tr>
			</table>
			</div>
	</div>
  <div style="text-align: center;" style="height: 400px">
  <form action="start.jsp" method="post">
  <br>
  <br>
  	<input type="submit" value="다시하기">
  </form>
  </div>
  <div class="footer" style="text-align: right;">
		<p> 컴퓨터소프트웨어공학부 201894005 고욱현      </p>
		</div>
</body>
</html>