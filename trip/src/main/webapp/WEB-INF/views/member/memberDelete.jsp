<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SEOUL TRIP 회원탈퇴 완료</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/_css/mainStyle.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
    </style>	
    
</head>
<body>

    <div class="memberL-header__div">
        <jsp:include page="../header.jsp"/>
    </div>

    <div class="memberJR-container">
        <p class="memberJR-container__p1-bold">회원탈퇴가 완료되었습니다.</p>
        <p class="memberJR-container__p2-bold">
                그동안 이용해 주셔서 감사합니다.<br />
        </p>
        <p>
            서울탐방서비스는 항상 회원님들의 입장에서<br />
            보다 좋은 서비스를 제공할 수 있도록 노력하겠습니다.<br />
            감사합니다.
        </p>
        <button class="memberJR-container__button-blue" onclick="location.href='${pageContext.request.contextPath}/'">메인페이지로 가기</button>
    </div>

    <!-- footer -->
    <div class="memberL-footer">
        <%@ include file="../footer.jsp" %>
    </div>
    <!-- // footer -->
</body>
</html>
