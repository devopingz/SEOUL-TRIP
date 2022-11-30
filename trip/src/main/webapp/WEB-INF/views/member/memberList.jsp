<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/_css/mainStyle.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/_js/mainJs.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<title>SEOUL TRIP 회원 목록</title>
    <div>
        <jsp:include page="../header.jsp"/>
    </div>
</head>
<body style="text-align:center">

<div id="main_member--bcp">
 <div id="main_member--bcp--table">
 
 	<div>
	<h2 style="margin-left:-10%">SEOUL TRIP'S MEMBER</h2>
	</div>
 	
	<table width="1200px" style="border-collapse: collapse">
		<tr style="height:35px; line-height: 40px; text-align:center; color: black; font-size: 18px; background-color: #E6E4E6; border-bottom:2px solid #DBDBDB">
			<th>아이디</th>	
			<th>이름</th>
			<th>닉네임</th>
			<th>성별</th>
			<th>이메일</th>
		</tr>
		<c:forEach var="member" items="${memberList}">
		<tr style="height:30px; line-height: 30px; text-align:center; font-size: 14px; border-left: hidden; border-bottom:2px solid #DBDBDB">
			<td>${member.id}</td>
			<td>${member.name}</td>
			<td><a href="${path}/boardMy?nickname=${member.nickname}">${member.nickname}</a></td>
			<td>${member.gender}</td>
			<td>${member.email}</td>
		</tr>	
		</c:forEach>
	</table>
	</div>
</div>
	
</body>
	<div>
   		<jsp:include page="../footer.jsp"/>
    </div>

</html>
