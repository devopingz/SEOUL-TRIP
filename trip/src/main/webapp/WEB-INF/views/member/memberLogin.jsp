<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SEOUL TRIP 로그인</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/_css/mainStyle.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/_js/mainJs.js"></script>
    
	<script type="text/javascript">	
		$(document).ready(function () {
            if(${result == "loginx"}){
                alert("아이디나 비밀번호가 맞지 않습니다.");
            }
            return false;
        });
	</script>	
        <!-- 
       </script>  
           if (getCookie("id")) {
                document.getElementById('login_id').value = getCookie("id");
                document.getElementById('remember_id').checked = true;
            }

            function getCookie(Name) { // 쿠키 불러오는 함수
                var search = Name + "=";
                if (document.cookie.length > 0) { // if there are any cookies
                    offset = document.cookie.indexOf(search);
                    if (offset != -1) { // if cookie exists
                        offset += search.length; // set index of beginning of value
                        end = document.cookie.indexOf(";", offset); // set index of end of cookie value
                        if (end == -1)
                            end = document.cookie.length;
                        return unescape(document.cookie.substring(offset, end));
                    }
                }
            }

        });
    </script> -->	
	     
</head>
<body>
    <!-- header  -->
    <div class="memberL-header__div">
        <jsp:include page="../header.jsp"/>
    </div>
    
    <!-- login image  -->
    <div id="login_img--seoul" style="text-align:center; margin-top:2%; margin-bottom:-4%; margin-left:-1%">
            <img src="${pageContext.request.contextPath}/_image/main/seoul/seoul.png" width="400px;" height="100px;">
    </div>

    <!-- loginForm -->
    <div id="memberL-container">

        <form action="${pageContext.request.contextPath}/login" method="post" name="loginForm" onsubmit="return loginCheck()">
            <div>
                <input id="login_id" class="memberL-container__input--big" type="text" name="id" size="30"
                       placeholder="아이디"> <br/>
                <input id="login_pw" class="memberL-container__input--big" type="password" name="pw1" size="40"
                       placeholder="비밀번호"> <br/>
            </div>
        
            <label class="memberL-container__label--move">
                <input id="remember_id" type="checkbox" name="remember_id" value="y"> 아이디 기억하기
            </label>

            <div id="memberL-btncontainer">
                <input type="submit" class="memberL-btncontainer__input-big" value="로그인">
                <input type="button" class="memberL-btncontainer__input-big" value="회원가입"
                       onclick="location.href='${pageContext.request.contextPath}/memberJ'">
            </div>
        </form>
    </div>

    <!-- footer  -->
    <div class="memberL-footer">
        <%@ include file="../footer.jsp" %>
    </div>
    <!-- // footer  -->
</body>
</html>
