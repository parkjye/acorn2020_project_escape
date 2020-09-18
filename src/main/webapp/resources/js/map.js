/**
 * 
 */

var container = document.getElementById('map');
var options = {
	center: new kakao.maps.LatLng(37.553419, 126.920605),
	draggable: false,
	level: 3
};
var map = new kakao.maps.Map(container, options);

var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

var markerPosition = new kakao.maps.LatLng(37.553419, 126.920605);

var marker = new kakao.maps.Marker({
    position: markerPosition
});

marker.setMap(map);

var iwContent = '<div style="padding:5px;"><h1><span class="badge badge-info">ACORN 이스케이프 홍대점</span></h1><br/><img src="../resources/images/unnamed.png" /><br/><h5 class="text-center" style="color:black;">지금 바로 탈출해 보세요!</h5> </div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    iwPosition = new kakao.maps.LatLng(37.553419, 126.920605); //인포윈도우 표시 위치입니다

var infowindow = new kakao.maps.InfoWindow({
    position : iwPosition, 
    content : iwContent 
});

infowindow.open(map, marker); 