<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <title>SEOUL TRIP 광화문</title>
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
    <h1 style="text-align: center; margin-top:60px; font-size:60px;">서울의 중심 광화문에 대해</h1>
    <div style="margin-top:40px; text-align: center;">
        <img src="${pageContext.request.contextPath}/_image/area1/moon.jpg" width="1300px;" height="500px;" />
    </div>
    <div style="width:950px; margin-top:25px;">
    <a1 style="font-size:1.4rem; text-align:center; margin-top:20px; font-weight: bold; line-height:200%;">
        광화문(光化門)은 경복궁의 남쪽에 있는 정문이다. ‘임금의 큰 덕(德)이 온 나라를 비춘다’는 의미이다. 1395년에 세워졌으며, 2층 누각인 광화문 앞의 양쪽에는 한 쌍의 해치 조각상이 자리잡고 있다. 광화문의 석축부에는 세 개의 홍예문(虹霓門, 아치문)이 있다. 가운데 문은 임금이 다니던 문이고, 나머지 좌우의 문은 신하들이 다니던 문이었는데 왼쪽 문은 무신이, 오른쪽 문은 문신이 출입했다. 광화문의 가운데 문 천장에는 주작이 그려져 있고, 왼쪽 문에는 거북이가, 오른쪽 문에는 천마가 그려져 있다. 경복궁 근정전으로 가기 위해 문 3개를 지나야 하는데, 그 중 첫째가 광화문이고 둘째는 흥례문, 셋째는 근정문이다. 광화문은 한국 전쟁으로 두 차례 소실되었으며, 월대와 해태 등을 제외한 일부 복원공사가 완료되어 2010년 8월 15일에 공개되었다.


        <h2>광화문 근처 맛집 리스트</h2>
    </div>

    <div id="main_crew--bcp" style = "margin-top:-2px; margin-left:21%; width:1100px;">
       <div id="main_crew--bcp--table">

        <table class="table" style="width: 1000px; height: 250px; border-collapse: collapse; text-align:center">
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
              <td>호호식당</td>
              <td><a href="https://www.instagram.com/hohosikdang/" target='_blank'>홈페이지 이동</a></td>
              <td><a href="https://map.naver.com/v5/search/%EA%B4%91%ED%99%94%EB%AC%B8%EB%A7%9B%EC%A7%91/place/1765213815?placePath=%3Fentry=pll%26from=nx%26fromNxList=true&c=14135578.9264416,4519283.1407236,15,0,0,0,dh" target='_blank'>지도 보기</a></td>
            </tr>
            <tr>
              <th scope="row">2</th>
              <td>디라이프스타일키친 광화문점</td>
              <td><a href="https://pf.kakao.com/_WHZxlT" target='_blank'>홈페이지 이동</a></td>
              <td><a href="https://map.naver.com/v5/search/%EA%B4%91%ED%99%94%EB%AC%B8%EB%A7%9B%EC%A7%91/place/1726866251?placePath=%3Fentry%253Dpll&c=14134223.5987317,4518636.8049077,15,0,0,0,dh" target='_blank'>지도 보기</a></td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td>온천집</td>
              <td><a href="http://www.glowseoul.co.kr/layout.php?f=home" target='_blank'>홈페이지 이동</a></td>
              <td><a href="https://map.naver.com/v5/search/%EA%B4%91%ED%99%94%EB%AC%B8%EB%A7%9B%EC%A7%91/place/1113085292?placePath=%3Fentry%253Dpll&c=14135507.0568012,4519435.5260760,15,0,0,0,dh" target='_blank'>지도 보기</a></td>
            </tr>
          </tbody>
        </table>
      </div>
   </div>

    <div class="main-buttoncontainer"  style="margin-top:30px">

        <input type="button" style="margin-right:5%" class="memberJ-buttoncontainer__input--black" value="메인페이지로 돌아가기" onclick="location.href='/'">
        <input type="button" style="margin-left:5%"class="memberJ-buttoncontainer__input--black" value="다음 관광하기->" onclick="location.href='/namsan'">
    </div>

     <div>
        <jsp:include page="../footer.jsp"/>
    </div>

</body>


