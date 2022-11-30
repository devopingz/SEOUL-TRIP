<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <title>SEOUL TRIP 건대</title>
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
    <h1 style="text-align: center; margin-top:60px; font-size:60px;">서울의 신흥강자 건대에 대해</h1>
    <div style="margin-top:40px; text-align: center;">
        <img src="${pageContext.request.contextPath}/_image/area1/kun.jpg" width="1300px;" height="500px;" />
    </div>
    <div style="width:950px; margin-top:25px;">
    <a1 style="font-size:1.4rem; text-align:center; margin-top:20px; font-weight:bold; line-height:200%;">
건대거리는 크게 건대 맛의 거리, 로데오 패션거리, 양꼬치 거리 총 3개의 거리로 이루어져 있다. 아무래도 인근의 건국대, 세종대, 한양대와 서울 지하철 7호선으로 연결된 노원구에 서울여대, 광운대, 서울과기대 등의 대학생들이 많이 방문하지만, 인근에 중고등학교들이 몰려있어 청소년도 꽤 있고 중장년층도 간간이 보인다. 특히 2010년대 들어 크게 성장하였는데, 서울의 서쪽에 홍대거리가 있다면, 동쪽엔 건대거리가 있다는 말도 나올 정도로 서울 대학 상권에선 홍대거리 다음가는 위치를 차지하는 수준까지 올라섰다. 물론 홍대에는 있는 특이 업종의 경우, 건대에는 아직 없거나 간간이 찾을 수 있는 정도지만 지나치게 활성화되어 가격도 맛도 대학거리의 모습과는 다소 멀어저버린 홍대거리와는 달리 건대는 아직 대학가다운 가성비 술집이나 고깃집들이 활성화 되어 있기 때문에 오히려 음주를 위한 만남으로는 홍대거리보다 건대거리를 더 높게 쳐주는 사람도 많이 보인다.
<h2>건대 근처 맛집 리스트</h2>
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
              <td>마초쉐프 건대점</td>
              <td><a href="http://www.macho-chef.com/" target='_blank'>홈페이지 이동</a></td>
              <td><a href="https://map.naver.com/v5/search/%EA%B1%B4%EB%8C%80%EB%A7%9B%EC%A7%91/place/605585253?placePath=%3Fentry=pll%26from=nx%26fromNxList=true&c=14144591.5737935,4514946.2436894,15,0,0,0,dh" target='_blank'>지도 보기</a></td>
            </tr>
            <tr>
              <th scope="row">2</th>
              <td>송화산시도삭면</td>
              <td><a href="https://www.instagram.com/explore/locations/144822052872398/" target='_blank'>홈페이지 이동</a></td>
              <td><a href="https://map.naver.com/v5/search/%EA%B1%B4%EB%8C%80%EB%A7%9B%EC%A7%91/place/1359051109?placePath=%3Fentry=pll%26from=nx%26fromNxList=true&c=14144045.1043437,4514349.9954937,15,0,0,0,dh" target='_blank'>지도 보기</a></td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td>로니로티 건대점</td>
              <td><a href="https://blog.naver.com/lottiekun" target='_blank'>홈페이지 이동</a></td>
              <td><a href="https://map.naver.com/v5/search/%EA%B1%B4%EB%8C%80%EB%A7%9B%EC%A7%91/place/33451555?placePath=%3Fentry%253Dpll&c=14144045.1043437,4514349.9954937,15,0,0,0,dh" target='_blank'>지도 보기</a></td>
            </tr>
          </tbody>
        </table>
      </div>
   </div>

    <div class="main-buttoncontainer"  style="margin-top:30px">

        <input type="button" style="margin-right:5%" class="memberJ-buttoncontainer__input--black" value="<-이전 관광하기" onclick="location.href='/hong'">
        <input type="button" style="margin-left:5%"class="memberJ-buttoncontainer__input--black" value="다음 관광하기->" onclick="location.href='/dehack'">
    </div>

     <div>
        <jsp:include page="../footer.jsp"/>
    </div>

</body>


