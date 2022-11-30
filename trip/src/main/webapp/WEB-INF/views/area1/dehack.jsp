<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <title>SEOUL TRIP 대학로</title>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/_css/mainStyle.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://davidlynch.org/projects/maphilight/jquery.maphilight.min.js"></script>

   <div>
        <jsp:include page="../header.jsp"/>
    </div>

<style>
    div{
        text-align:center;
        margin-left:auto;
        margin-right:auto;
    }
    table {
        margin-left:auto;
        margin-right:auto;
    }
    td{
    font-size:22px;
    font-weight:bold;
    }

    th{
    font-size:22px;
    font-weight:bold;
    }
</style>
</head>
<body>
    <h1 style="text-align: center; margin-top:60px; font-size:60px;">서울의 연극거리 대학로에 대해</h1>
    <div style="margin-top:40px; text-align: center;">
        <img src="${pageContext.request.contextPath}/_image/area1/dahack.jpg" width="1300px;" height="500px;" />
    </div>
    <div style="width:950px; margin-top:25px;">
    <a1 style="font-size:1.4rem; text-align:center; margin-top:20px; font-weight: bold; line-height:200%;">
대학로는 대한 제국기에 대한의원, 일제강점기의 경성공업전문학교와 경성제국대학을 거쳐 서울대학교가 자리 잡았고, 지금도 서울대학교 의과대학과 한국방송통신대학교가 있어 관학의 명맥을 잇고 있지만, 이제는 명실 상부한 젊음의 거리이고 문화의 메카입니다. 본 코스는 대학로에 위치한 근현대 건축물을 탐방하며 우리의 현대사를 돌아볼 수 있는 코스입니다.
    <h2>대학로 근처 맛집</h2>
    </div>

    <div id="main_crew--bcp" style = "margin-top:-2px; margin-left:20%; width:1100px;">
       <div id="main_crew--bcp--table">

        <table class="table" style="width: 1000px; height: 250px; border-collapse: collapse">
          <thead>
            <tr style="height:35px; line-height: 40px; text-align:center; color: white; font-size: 18px; background-color: #000000;">
              <th scope="col">순위</th>
              <th scope="col">이름</th>
              <th scope="col">홈페이지 링크</th>
              <th scope="col">지도 링크</th>
            </tr>
          </thead>
          <tbody style="text-align: center; font-family: nanumB; font-size: 16px">
            <tr>
              <th scope="row">1</th>
              <td>정돈 대학로본점</td>
              <td><a href="https://blog.naver.com/jungdon0916" target='_blank'>홈페이지 이동</a></td>
              <td><a href="https://map.naver.com/v5/search/%EB%8C%80%ED%95%99%EB%A1%9C%EB%A7%9B%EC%A7%91/place/37126807?placePath=%3Fentry=pll%26from=nx%26fromNxList=true&c=14136767.6498468,4520515.6923107,15,0,0,0,dh" target='_blank'>지도 보기</a></td>
            </tr>
            <tr>
              <th scope="row">2</th>
              <td>핏젯리아오 대학로 본점</td>
              <td><a href="http://pizzeriao.com/" target='_blank'>홈페이지 이동</a></td>
              <td><a href="http://map.naver.com/v5/search/%EB%8C%80%ED%95%99%EB%A1%9C%EB%A7%9B%EC%A7%91/place/33646740?placePath=%3Fentry=pll%26from=nx%26fromNxList=true" target='_blank'>지도 보기</a></td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td>순대실록</td>
              <td><a href="https://smartstore.naver.com/heestoryfood" target='_blank'>홈페이지 이동</a></td>
              <td><a href="https://map.naver.com/v5/search/%EB%8C%80%ED%95%99%EB%A1%9C%EB%A7%9B%EC%A7%91/place/20148711?placePath=%3Fentry=pll%26from=nx%26fromNxList=true&placeSearchOption=entry=pll%26fromNxList=true" target='_blank'>지도 보기</a></td>
            </tr>
          </tbody>
        </table>
      </div>
   </div>

    <div class="main-buttoncontainer"  style="margin-top:30px">

        <input type="button" style="margin-right:5%" class="memberJ-buttoncontainer__input--black" value="<-이전 관광하기" onclick="location.href='kun'">
        <input type="button" style="margin-left:5%"class="memberJ-buttoncontainer__input--black" value="다음 관광하기->" onclick="location.href='/ziro'">
    </div>

     <div>
        <jsp:include page="../footer.jsp"/>
    </div>

</body>


