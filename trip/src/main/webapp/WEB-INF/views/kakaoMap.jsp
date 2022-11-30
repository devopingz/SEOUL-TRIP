<!-- 지도[s] -->
    <div id="map" style="width:1600px;height:500px; margin:auto; margin-top:10px;"></div>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=42be5e09039a963ee3f9a39d4bcb5af4"></script>
    <script>
        var container = document.getElementById('map'); //지도 표시 div
        var options = {
            center: new kakao.maps.LatLng(37.5666805, 126.9784147), //지도의 중심좌표
            level: 7 //지도의 확대 레벨
        };

        var map = new kakao.maps.Map(container, options);

        // 마커가 표시될 위치
        var markerPosition  = new kakao.maps.LatLng(37.5666805, 126.9784147);

        // 마커 생성
        var marker = new kakao.maps.Marker({
            position: markerPosition
        });

        // 마커가 지도 위에 표시되도록 설정
        marker.setMap(map);

        // 아래 코드는 지도 위의 마커를 제거하는 코드
        // marker.setMap(null);

    </script>
    <!-- 지도[e] -->
