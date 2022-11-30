<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <title>SEOUL TRIP 을지로</title>
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
    <h1 style="text-align: center; margin-top:60px; font-size:60px;">서울의 노포감성 을지로에 대해</h1>
    <div style="margin-top:40px; text-align: center;">
        <img src="${pageContext.request.contextPath}/_image/area1/ziro.jpg" width="1300px;" height="500px;" />
    </div>
    <div style="width:950px; margin-top:25px;">
    <a1 style="font-size:1.4rem; text-align:center; margin-top:20px; font-weight: bold; line-height:200%;">
조선 시대에는 이곳을 구리개라고 불렀으며, 일제강점기가 되어서 조선총독부가 黃金町(황금정. 독음으로는 고가네마치)이라는 이름으로 개명하였다. 그러다가 1945년 8.15 광복을 맞고 1946년 을지문덕 장군의 성씨인 을지를 따다가 을지로로 개명하였다. 구한말부터 중국인(화교)들이 밀집해 차이나타운 상권을 형성했던 곳이라, 중국인의 기세를 억누르기 위해 을지문덕 장군에서 따와 도로명을 바꾼 것이다. 역시 일본인 상권이 형성됐던 '혼마찌(本町, 본정)'를 해방 이후 일본인의 기세를 억누르기 위해 이순신 장군에서 따와 도로명을 바꾼 '충무로'와 같은 케이스.
        <h2>을지로 맛집</h2>
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
              <td>을지깐깐</td>
              <td><a href="https://www.instagram.com/eulji_canhcanh/" target='_blank'>홈페이지 이동</a></td>
              <td><a href="https://map.naver.com/v5/search/%EC%9D%84%EC%A7%80%EB%A1%9C%EB%A7%9B%EC%A7%91/place/1713855997?placePath=%3Fentry=pll%26from=nx%26fromNxList=true&c=14135647.7535056,4518260.7027819,15,0,0,0,dh" target='_blank'>지도 보기</a></td>
            </tr>
            <tr>
              <th scope="row">2</th>
              <td>진작</td>
              <td><a href="https://www.instagram.com/eulji_jinjakkk/" target='_blank'>홈페이지 이동</a></td>
              <td><a href="https://map.naver.com/v5/search/%EC%9D%84%EC%A7%80%EB%A1%9C%EB%A7%9B%EC%A7%91/place/1323525758?placePath=%3Fentry%253Dpll&c=14135647.7535056,4518260.7027819,15,0,0,0,dh" target='_blank'>지도 보기</a></td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td>장만옥</td>
              <td><a href="https://www.instagram.com/jangmanok_euljiro/" target='_blank'>홈페이지 이동</a></td>
              <td><a href="https://map.naver.com/v5/search/%EC%9D%84%EC%A7%80%EB%A1%9C%EB%A7%9B%EC%A7%91/place/1133317732?placePath=%3Fentry%253Dpll&c=14135647.7535056,4518260.7027819,15,0,0,0,dh" target='_blank'>지도 보기</a></td>
            </tr>
          </tbody>
        </table>
      </div>
   </div>

    <div class="main-buttoncontainer"  style="margin-top:30px">

        <input type="button" style="margin-right:5%" class="memberJ-buttoncontainer__input--black" value="<-이전 관광하기" onclick="location.href='/dehack'">
        <input type="button" style="margin-left:5%"class="memberJ-buttoncontainer__input--black" value="다음 관광하기 ->" onclick="location.href='/sungsu'">
    </div>

     <div>
        <jsp:include page="../footer.jsp"/>
    </div>

</body>


