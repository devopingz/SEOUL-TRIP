<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SEOUL TRIP 미니프로필</title>
    <script>
        window.onload = function () {
            if(${member != null}){
                document.getElementById('header-miniprofileBox__guest').style.display = "none";
                document.getElementById('header-miniprofileBox').style.display = "block";
            }else{
                document.getElementById('header-miniprofileBox__guest').style.display = "block";
                document.getElementById('header-miniprofileBox').style.display = "none";
            }
        }
    </script>
</head>
<body>


<!--미니프로필-->
<div id="header-miniprofile">
	
    <!--로그인 후 화면-->
    <div id="header-miniprofileBox">
        
        <div id="header-miniprofile__info">
            <span style="color:#37FFEB;" id="header-miniprofile__span--nickname">${member.id}</span><span id="header-miniprofile__span--white">님 안녕하세요</span>
        </div>

        <%-- 버튼 박스 : 로그아웃, 마이 페이지 --%>
        <div id="header-miniprofile__button">
            <button id="header-button__b1" type="button" onclick="location.href='${pageContext.request.contextPath}/logout'">로그아웃</button>
            <button id="header-button__b2" type="button" onclick="location.href='${pageContext.request.contextPath}/mypageD'">내 정보</button>
        </div>
    </div>

    <!--로그인 전 화면-->
    <div id="header-miniprofileBox__guest">
        <button id="header-button__b1" type="button" onclick="location.href='${pageContext.request.contextPath}/memberL'">로그인</button>
        <button id="header-button__b2" type="button" onclick="location.href='${pageContext.request.contextPath}/memberJ'">회원가입</button>
    </div>
  
</div>

</body>
</html>