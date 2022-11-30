<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/_css/mainStyle.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://davidlynch.org/projects/maphilight/jquery.maphilight.min.js"></script>
    <script type="text/javascript">
    
        $(document).ready(function () {
            if(${result == "logout"}){
                alert("로그아웃되었습니다.");
            }
            
            if(${result == "modifyok"}){
                alert("회원정보가 수정되었습니다. 다시 로그인하여 주세요.");
            }    
            return false;
        });
        
    </script>

    <title>SEOUL TRIP</title>
</head>
<body>
    <!--헤더-->
    <div>
        <jsp:include page="header.jsp"/>
    </div>
    <div id="main_container">

        <!--배경사진-->
        <div id="main_img--seoul">
            <img src="${pageContext.request.contextPath}/_image/main/seoul/seoul4	.png" width="1600px;" height="500px;">
        </div>

        <!--지도-->
        <div id="main_map--text" style = "margin-top: 40px">
            <p>서울 지역</p>
        </div>

        <div>
            <jsp:include page="kakaoMap.jsp"/>
        </div>

        <hr style=" width:100%; color:#bac8d9; margin-top: 40px">

        <!--인기크루-->
        <div id="main_crew" style = "margin-top: 15px">
            <div>
                <div id="main_crew--text">

                    <div id="main_crew--text2">
                        <p style="margin-top:3px; color:white">최신글</p>
                    </div>
                </div>

            </div>
                	<div style="text-align:center; margin-top:2%">
						<table width="1600px" style="border-collapse: collapse; border-bottom:1px solid #DBDBDB">
						<tr style="height:35px; line-height: 40px; color: black; font-size: 18px; background-color: #E6E4E6; border-bottom:1px solid #DBDBDB">
							<th style="width:100px">번호</th>	
							<th style="width:800px">제목</th>
							<th style="width:300px">작성자</th>
							<th style="width:300px">닉네임</th>
							<th style="width:500px">이메일</th>
							<th style="width:150px">작성일</th>
						</tr>
						<c:forEach var="board" items="${boardList}">
						<tr>
						<td>${board.num}</td>
						<td><a href="/boardread?num=${board.num}">${board.title}</a></td>
						<td>${board.id}</td>
						<td>${board.nickname}</td>
						<td>${board.email}</td>
						<td><fmt:formatDate pattern="yyyy/MM/dd" value="${board.date}"/><td>
						</tr>
						</c:forEach>
						</table>
					</div>
            </div>
            
            <hr style=" width:100%; color:#bac8d9; margin-top: 40px">
 
        
<!--추천코스-->
        <div id="main_bestcourse" style = "margin-top: 15px; text-align: center">
            <p>그외의 지역</p>
            <img id="img1" src="${pageContext.request.contextPath}/_image/main/etcarea/pusan.jpg" width="300px" height="250px">
            <img id="img2" src="${pageContext.request.contextPath}/_image/main/etcarea/yangpyeong.jpg" width="300px" height="250px"
                 style="margin-left: 40px; margin-right: 0px;">
            <img id="img3" src="${pageContext.request.contextPath}/_image/main/etcarea/kang.jpg" width="300px" height="250px"
                 style="margin-left: 40px; margin-right: 40px;">
            <img id="img4" src="${pageContext.request.contextPath}/_image/main/etcarea/jun.jpg" width="300px" height="250px">
        </div>

			<ul style="align=center; margin-top: -3%; margin-right: -20%";>
            <li style="display: inline-block; margin-left: 11%;"><h2><p>부산</p></h2></li>
            <li style="display: inline-block; margin-left: 15.5%;"><h2><p>경기도</p></h2></li>
            <li style="display: inline-block; margin-left: 14.5%;"><h2><p>강원도</p></h2></li>
            <li style="display: inline-block; margin-left: 15%;"><h2><p>전라도</p></h2></li>
         	</ul>
    </div>
    
  </div>   
	
    <!--푸터-->
    <div>
        <jsp:include page="footer.jsp"/>
    </div>
    <script type="text/javascript" src="${pageContext.request.contextPath}/_js/mainUtil.js"></script>
</body>
</html>
