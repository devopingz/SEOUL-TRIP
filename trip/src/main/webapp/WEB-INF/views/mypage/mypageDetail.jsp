<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SEOUL TRIP 내 정보</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/_css/mainStyle.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/_js/mainJs.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
    </style>
    
    <div>
        <jsp:include page="../header.jsp"/>
    </div>
    
</head>
<body>
	
	
    <div class="mypageD-mypagecontainer">

        <!-- 마이페이지 네비바 -->
        <div class="mypageD-listcontainer"  style="background-color:#000000">
            <ul class="mypageD-listcontainer__ul--blue">
                <li class="mypageD-listcontainer__li--big">마이 페이지</li>
                <li class="mypageD-listcontainer__li--small"><a href="${pageContext.request.contextPath}/mypageD?id=${member.id}" class="mypageD-listcontainer__a--blue">내 정보</a></li>
                <li class="mypageD-listcontainer__li--small"><a href="${pageContext.request.contextPath}/boardMy?id=${member.id}" class="mypageD-listcontainer__a--blue">내가 쓴 글</a></li>
            </ul>	
        </div>	
    
    	<!-- 마이페이지 상세 -->
    <div class="mypageD-container">
    
        <div class="mypageD-titlecontainer">
            <span class="mypageD-titlecontainer__span--big">내 정보</span>
        </div>

        <!-- 개인 정보 수정-->
        
        
        <form method="post" name="myinfoFrm" onsubmit="return myinfoCheck()" enctype="multipart/form-data">  <!-- onsubmit="return myinfoCheck()" name="myinfoFrm" enctype="multipart/form-data"*/ -->
            <div class="mypageD-infocontainer">
                <div class="mypageD-userbox">

                    <div class="mypageD-infobox">
                        <span class="mypageD-infocontainer__span--move">아이디</span>
                        <input type="text" name="id" id="id" class="mypageD-infocontainer__input--big" value="${member.id}" readonly>
                    </div>

                    <div class="mypageD-infobox">
                        <span class="mypageD-infocontainer__span--move">이름</span>
                        <input type="text" name="name" id="name" class="mypageD-infocontainer__input--big" value="${member.name}" readonly>
                    </div>

                    <div class="mypageD-infobox">
                        <span class="mypageD-infocontainer__span--move">닉네임</span>
                        <input type="text" name="nickname" id="nickname" class="mypageD-infocontainer__input--big" value="${member.nickname}">
                    </div>

                    <div class="mypageD-infobox">
                        <span class="mypageD-infocontainer__span--move">이메일</span>
                        <input type="text" name="email" id="email" class="mypageD-infocontainer__input--big" value="${member.email}">
                    </div>

                </div>

               <div class="mypageD-userbox2">

                   <div class="mypageD-infobox">
                       <span class="mypageD-infocontainer__span--move">비밀번호</span>
                       <input type="password" name="pw1" id="pw1" class="mypageD-infocontainer__input--big" value="${member.pw1}">
                   </div>

                   <div class="mypageD-infobox">
                       <span class="mypageD-infocontainer__span--move" id="mypageD-infobox__span--move">비밀번호 확인</span>
                       <input type="password" class="mypageD-infocontainer__input--big" name="pw2" id="pw2" value="${member.pw2}">
                   </div>	

                   <div class="mypageD-infobox" style="margin-top:8%">
                       <span class="mypageD-infocontainer__span--move">생년월일</span>
                       <input type="text" name="birth" id="birth" class="mypageD-infocontainer__input--big" value="${member.birth}">                  
                   </div>

                   <div class="mypageD-infobox">
                       <span class="mypageD-infocontainer__span--move">성별</span>
						
                       <select name="gender" class="mypageD-infocontainer__span--big" id="gender">
                           <option value="">성별</option>
                           <option value="남자">남자</option>
                           <option value="여자">여자</option>
                           <option value="선택 안함">선택 안함</option>
                       </select>
                   </div>

                   <div class="mypageD-infobox">
                       <span class="mypageD-infocontainer__span--move">전화번호</span>
                       <input type="text" name="phone" id="phone" class="mypageD-infocontainer__input--big" value="${member.phone}" pattern="[0-9]{11}">
                   </div>

                   <div class="mypageD-buttonbox" style="margin-top:10%">
                       <input type="submit" value="수정 완료" class="mypageD-buttonbox__button--blue" style="margin-right:5%"
                       value="updateMember" onclick="javascript: form.action='/updateMember';"/>
                       
                       <input type="submit" value="회원 탈퇴" class="mypageD-buttonbox__button--gray"
                       value="deleteMember" onclick='return member_delete(this.form);'/>
                       
                   </div>                
               </div>
            </div>
        </form>
    
    </div>
    </div>
    
    <div>
        <jsp:include page="../footer.jsp"/>
    </div>

</body>

	
</html>
