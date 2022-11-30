<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <title>SEOUL TRIP 전통시장</title>
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
    <h1 style="text-align: center; margin-top:60px; font-size:60px;">서울의 전통시장</h1>
    <div style="margin-top:40px; text-align: center;">
        <img src="${pageContext.request.contextPath}/_image/area1/market.jpg" width="1300px;" height="500px;" />
    </div>
    <div style="width:950px; margin-top:25px;">
    <a1 style="font-size:1.4rem; text-align:center; margin-top:20px; font-weight:bold; line-height:200%;">
많은 여행객들이 한국의 전통 음식과 문화를 느끼기 위해서 해마다 서울의 전통시장들을 찾는다. 그러나 계속해서 생겨나는 대형할인매장이나 인터넷 유통, 홈쇼핑 등으로 한국의 전통시장들은 점점 사라져가는 추세이다. 하지만 그 가운데에서도 변함없이 오랜 전통을 보여주며 수많은 시장과는 다른 특색으로 꾸준히 인기를 유지하는 시장이 있다.
        <h2>전통시장 순위</h2>
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
              <td>광장시장</td>
              <td><a href="http://www.kwangjangmarket.co.kr/" target='_blank'>홈페이지 이동</a></td>
              <td><a href="https://map.naver.com/v5/search/%EA%B4%91%EC%9E%A5%EC%8B%9C%EC%9E%A5/place/21075936?c=14136538.9328212,4518881.3908988,15,0,0,0,dh&placePath=%3Fentry%253Dpll" target='_blank'>지도 보기</a></td>
            </tr>
            <tr>
              <th scope="row">2</th>
              <td>망원시장</td>
              <td><a href="https://mangwonsijang.modoo.at/" target='_blank'>홈페이지 이동</a></td>
              <td><a href="https://map.naver.com/v5/search/%EB%A7%9D%EC%9B%90%EC%8B%9C%EC%9E%A5/place/13305251?c=14126184.9400029,4516968.5059888,15,0,0,0,dh&placePath=%3Fentry%253Dpll" target='_blank'>지도 보기</a></td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td>용문시장</td>
              <td><a href="http://www.yongmunsijang.kr/" target='_blank'>홈페이지 이동</a></td>
              <td><a href="https://map.naver.com/v5/search/%EC%9A%A9%EB%AC%B8%EC%A0%84%ED%86%B5%EC%8B%9C%EC%9E%A5/place/13304311?c=14132202.2037585,4514089.4176895,15,0,0,0,dh&placePath=%3Fentry%253Dpll" target='_blank'>지도 보기</a></td>
            </tr>
          </tbody>
        </table>
      </div>
   </div>

    <div class="main-buttoncontainer"  style="margin-top:30px">

        <input type="button" style="margin-right:5%" class="memberJ-buttoncontainer__input--black" value="<-이전 관광하기" onclick="location.href='/sungsu'">
        <input type="button" style="margin-left:5%"class="memberJ-buttoncontainer__input--black" value="메인페이지" onclick="location.href='/'">
    </div>

     <div>
        <jsp:include page="../footer.jsp"/>
    </div>

</body>


