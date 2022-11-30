<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<%-- jquery 충돌 해소--%>
<script>
    var $j1124 = jQuery.noConflict();
</script>

<div id="headerM-container" style="margin-top:-2%">
<a style="font-size:1.8rem; color:#d2d2d2;" href="/"><h2>서울 관광 사이트</h2><a>
</div>

<!-- 헤더 -->
<div id="header_container">
	<div id="logo_img--seoul" style="margin-left:-75%; padding-top:-2%;">
          <a href="/"><img src="${pageContext.request.contextPath}/_image/main/seoul/logo.png" width="200px;" height="150px;"></a> 
      </div>
    <!--메인 네비바-->
    <div id="header-nav">
    		
        <ul>
            <li onmouseover="document.getElementById('header-nav__area').style.display='block';">
                <a href="#">
                        <span onmouseover="this.style.color='#E0EEFF';"
                              onmouseout="this.style.color='white';">관광지</span>
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/board">
                        <span onmouseover="this.style.color='#F4B7B4';"
                              onmouseout="this.style.color='white';">게시판</span>
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/memberList">
                        <span onmouseover="this.style.color='#FF8000';"
                              onmouseout="this.style.color='white';">회원목록</span>
                </a>
            </li>
        </ul>
    </div>

    <!--미니프로필 -->
    <jsp:include page="mypage/mypageIntro.jsp"/>
			
    <!--지역 네비바(AREA에 마우스 오버시 출력)-->
    <div id="header-nav__area">
        <ul onmouseover="document.getElementById('header-nav__area').style.display='block';"
            onmouseout="document.getElementById('header-nav__area').style.display='none';">
            <li><a href="${pageContext.request.contextPath}/moon">광화문</a></li>
            <li><a href="${pageContext.request.contextPath}/namsan">남산</a></li>
            <li><a href="${pageContext.request.contextPath}/hong">홍대</a></li>
            <li><a href="${pageContext.request.contextPath}/kun">건대</a></li>
            <li><a href="${pageContext.request.contextPath}/dehack">대학로</a></li>
            <li><a href="${pageContext.request.contextPath}/ziro">을지로</a></li>
            <li><a href="${pageContext.request.contextPath}/sungsu">성수</a></li>
            <li><a href="${pageContext.request.contextPath}/market">전통시장</a></li>
        </ul>
    </div>
</div>

