<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <title>SEOUL TRIP 홍대</title>
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
    <h1 style="text-align: center; margin-top:60px; font-size:60px;">서울 젊음의 메카 홍대에 대해</h1>
    <div style="margin-top:40px; text-align: center; ">
        <img src="${pageContext.request.contextPath}/_image/area1/hong.jpg" width="1300px;" height="500px;" />
    </div>
    <div style="width:950px; margin-top:25px;">
    <a1 style="font-size:1.4rem; text-align:center; margin-top:20px; font-weight: bold; line-height:200%;">
990년대 초반 특색있는 카페가 들어서면서 시작된 "홍대앞 문화"는 1990년대 중반 드럭, 블루 데블, 재머스 등의 라이브 클럽이 생겨나고, 크라잉 넛, 델리 스파이스, 황신혜 밴드 외의 인디 밴드들이 활동하면서, "홍대앞"만의 독특한 문화를 형성하였다. 홍익대학교 정문에서 극동방송국 사이의 거리에는 다양한 술집과 펑크 락과 테크노 음악을 전문적으로 연주하는 라이브 클럽들이 모여있으며, 언더그라운드 문화의 거리로도 불렸다
     <h2>홍대 근처 맛집 리스트</h2>
    </div>


    <div id="main_crew--bcp" style = "margin-top:-2px; margin-left:21%; width:1100px;">
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
              <td>돈주는 남자</td>
              <td><a href="https://www.instagram.com/don_ju_nam/" target='_blank'>홈페이지 이동</a></td>
              <td><a href="https://map.naver.com/v5/search/%ED%99%8D%EB%8C%80%EB%A7%9B%EC%A7%91/place/34013916?placePath=%3Fentry=pll%26from=nx%26fromNxList=true%26n_ad_group_type=10%26n_query=%ED%99%8D%EB%8C%80%EB%A7%9B%EC%A7%91&n_ad_group_type=10&n_query=%ED%99%8D%EB%8C%80%EB%A7%9B%EC%A7%91&c=14137475.4994264,4521825.2420200,15,0,0,0,dh" target='_blank'>지도 보기</a></td>
            </tr>
            <tr>
              <th scope="row">2</th>
              <td>삼다코지</td>
              <td><a href="https://blog.naver.com/cafe_samdacozy" target='_blank'>홈페이지 이동</a></td>
              <td><a href="https://map.naver.com/v5/search/%ED%99%8D%EB%8C%80%EB%A7%9B%EC%A7%91/place/1412462043?placePath=%3Fentry=pll%26from=nx%26fromNxList=true&c=14127795.1875693,4516011.1837175,15,0,0,0,dh" target='_blank'>지도 보기</a></td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td>육지</td>
              <td><a href="https://www.instagram.com/yookjidotcom/" target='_blank'>홈페이지 이동</a></td>
              <td><a href="https://map.naver.com/v5/search/%ED%99%8D%EB%8C%80%EB%A7%9B%EC%A7%91/place/1287775548?placePath=%3Fentry=pll%26from=nx%26fromNxList=true&c=14127451.5720410,4516013.3135489,15,0,0,0,dh" target='_blank'>지도 보기</a></td>
            </tr>
          </tbody>
        </table>
      </div>
   </div>

    <div class="main-buttoncontainer"  style="margin-top:30px">

        <input type="button" style="margin-right:5%" class="memberJ-buttoncontainer__input--black" value="<-이전 관광하기" onclick="location.href='/namsan'">
        <input type="button" style="margin-left:5%"class="memberJ-buttoncontainer__input--black" value="다음 관광하기->" onclick="location.href='/kun'">
    </div>

     <div>
        <jsp:include page="../footer.jsp"/>
    </div>

</body>


