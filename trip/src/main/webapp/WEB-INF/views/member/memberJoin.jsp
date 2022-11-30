<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SEOUL TRIP 회원가입</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/_css/mainStyle.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/_js/mainJs.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            var form_id = document.getElementById("id");

            form_id.addEventListener("focusout", function(event) {
                var id = $('#id').val();
                $.ajax({
                    async: true,
                    url: "${pageContext.request.contextPath}/member/checkId", /* requestMapping*/
                    type: "post",
                    data: id,
                    dataType : "json",
                    contentType: "application/json; charset=UTF-8",
                    success: function (data) {
                        if (data.result == 1) {
                            document.joinFrm.check_id.value = "y";
                            document.getElementById('validate_id').innerText = "";
                        } else if(data.result == 0){
                            document.joinFrm.check_id.value = "";
                            document.getElementById('validate_id').innerText = "중복된 아이디가 있습니다.";
                        }
                    }
                });
            });

            var form_nickname = document.getElementById("nickname");

            form_nickname.addEventListener("focusout", function(event) {
                var nickname = $('#nickname').val();
                $.ajax({
                    async: true,
                    url: "${pageContext.request.contextPath}/member/checkNickname", /* requestMapping*/
                    type: "post",
                    data: nickname,
                    dataType : "json",
                    contentType: "application/json; charset=UTF-8",
                    success: function (data) {
                        if (data.result == 1) {
                            document.joinFrm.check_nickname.value = "y";
                            document.getElementById('validate_nickname').innerText = "";
                        } else if(data.result == 0){
                            document.joinFrm.check_nickname.value = "";
                            document.getElementById('validate_nickname').innerText = "중복된 닉네임이 있습니다.";
                        }
                    }
                });
            });
        });
    </script>
</head>
<body style="background-color: #f2f2f2;">


    <!-- container -->
    <form action="${pageContext.request.contextPath}/memberJoinResult" method="post" enctype="multipart/form-data" name="joinFrm" onsubmit="return joinCheck()">
    <div id="memberJ-container" style=margin-top:1%>
	    <h1> 서울탐방 회원가입</h1>
        <!-- 아아디, 비밀번호 입력 -->
        <div id="memberJ-idcontainer">
            <h4 class="memberJ-container__h4--big">아이디</h4>
            <input type="text" name="id" id="id" class="memberJ-container__input--big" maxlength="20"> <!-- pattern="^([a-z0-9]){4,20}$" placeholder="4~20자 영문, 숫자를 사용하세요" -->
            <input type="hidden" name="check_id">
            <div class="msg" id="validate_id"></div>

            <h4 class="memberJ-container__h4--big" style=margin-top:-1%>비밀번호</h4>
            <div id="drop">
                <input type="password" class="memberJ-container__input--big" id="pw1" name="pw1" maxlength="30" onkeyup="pwCheck()">
                <input type="hidden" name="check_pw">
            </div>
            <div class="msg" id="validate_pw1"></div>

            <h4 class="memberJ-container__h4--big" style=margin-top:-1%>비밀번호 확인</h4>
            <div id="drop2">
                <input type="password" class="memberJ-container__input--big" id="pw2" name="pw2" maxlength="30" onkeyup="pw2Check()">
                <input type="hidden" name="check_pw2" >
            </div>
            <div class="msg" id="validate_pw2"></div>
        </div>
        <!-- // 아아디, 비밀번호 입력 -->

        <!-- 이름, 닉네임, 생년월일,성별 입력-->
        <div id="memberJ-namecontainer" style=margin-top:-4.5%>
            <h4 class="memberJ-container__h4--big">이름</h4>
            <input type="text" class="memberJ-container__input--big" id="name" name="name" maxlength="20">
            <div class="msg" id="validate_name"></div>

            <h4 class="memberJ-container__h4--big" style=margin-top:-1%>닉네임</h4>
            <input type="text" class="memberJ-container__input--big" id="nickname" name="nickname" maxlength="20">
            <input type="hidden" name="check_nickname">
            <div class="msg" id="validate_nickname"></div>

            <h4 class="memberJ-container__h4--big" style=margin-top:-1%>생년월일(8자리)</h4>
            <input type="text" class="memberJ-container__input--big" id="birth" name="birth" maxlength="20" placeholder="ex) 20020405">
            <input type="hidden" name="check_birth">
            <div class="msg" id="validate_birth"></div>

            <!-- 성별 입력하는 구역 -->
            <h4 class="memberJ-container__h4--big" style=margin-top:-1%>성별</h4>
            <select id="gender" class="memberJ-namecontainer__gender--blue" name="gender">
                <option value="">성별</option>
                <option value="남자">남자</option>
                <option value="여자">여자</option>
                <option value="선택 안함">선택 안함</option>
            </select>
            <!-- // 성별 입력하는 구역 -->

            <div class="msg" id="validate_gender"></div>
        </div>
        <!-- // 이름, 닉네임, 생년월일, 성별  입력-->


        <!-- 이메일, 전화번호 입력 -->
        <div class="memberJ-emailcontainer" style=margin-top:-3%>
            <h4 class="memberJ-container__h4--big" style=margin-top:-2%>이메일</h4>
            <input type="email" class="memberJ-container__input--big" id="email" name="email" maxlength="50" placeholder="ex) codepresso@co.kr">
            <div class="msg" id="validate_email"></div>

            <h4 class="memberJ-container__h4--big" style=margin-top:-2%>휴대폰번호</h4>
            <input type="tel" class="memberJ-container__input--big" id="phone" name="phone" maxlength="30" value="" pattern="[0-9]{11}" placeholder="-없이 입력해주세요.">
        </div>
        <!-- // 이메일, 전화번호 입력 -->

        <div class="memberJ-buttoncontainer" style=margin-top:-1%>
            <input type="submit" class="memberJ-buttoncontainer__input--blue" value="회원가입">
            <input type="hidden" name="crleader" value="n">
        </div>
        <div class="main-buttoncontainer">
            <input type="button" class="memberJ-buttoncontainer__input--blue" value="메인페이지" onclick="location.href='/'">
        </div>

    </div>
    </form>
    <!-- // container -->

</body>
</html>
