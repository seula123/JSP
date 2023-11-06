<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<style>
   
</style>
</head>
<body>
   <!-- ex01.jsp -->
   
   <h1>Map <small>지도 좌표 이동하기 + 레벨 바꾸기</small></h1>
   
   <div id="map" style="width:768px;height:400px;"></div>
   
   
   		<input type="button" value="종각역으로 이동하기" id="btn1">
   		<input type="button" value="역삼역으로 이동하기" id="btn2">
   		<input type="button" value="잠실역으로 이동하기" id="btn3">
   </div>
 
   <div>
   		<input type="button" value="확대" id="btn4">
   		<input type="button" value="축소" id="btn5">
   </div>
   <div>
   		<input type="button" value="이동 제어" id="btn6">
   		<input type="button" value="확대/축소 제어" id="btn7">
   
   
 
   
   
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a7f04519044cbce5ff84baa5d3c4ea13"></script> <!-- 지도 불러오는 코드(순서 중요) -->
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
   <script src="http://pinnpublic.dothome.co.kr/cdn/example-min.js"></script>
   <script>
   
   //지도를 담을 영역의 DOM 레퍼런스
   const container = document.getElementById('map');
   
   //지도를 생성할 때 필요한 기본 옵션
   const options = {
      center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표(위, 경도)
      level: 3 //지도의 레벨(확대, 축소 정도)
   };

   const map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
   
   //한독 > 37.499316, 127.033192
   //종각 > 37.570180, 126.983029
   //역삼 > 37.500612, 127.0362777
   //잠실 > 37.513251, 127.099935
   
   $('#btn1').click(function(){
	 
	   const p1 = new kakao.maps.LatLng(37.570180, 126.983029);
	 //  map.setCenter(p1);  //순간 이동
	   map.panTo(p1);		//스크롤 이동
   });
   $('#btn2').click(function(){
	 
	   const p1 = new kakao.maps.LatLng(37.500612, 127.0362777);
	   map.setCenter(p1);
	   
   });
   $('#btn3').click(function(){
	 
	   const p1 = new kakao.maps.LatLng(37.513251, 127.099935);
	   map.setCenter(p1);
	   
   });
   $('#btn4').click(function(){
	 
	   const p1 = new kakao.maps.LatLng(37.513251, 127.099935);
	   map.setLevel(map.getLevel() -1);
	   
   });
   $('#btn5').click(function(){
	 
	   const p1 = new kakao.maps.LatLng(37.513251, 127.099935);
	   map.setLevel(map.getLevel() +1);
   });
   
   map.setDraggable(false);
   
   $('#btn6').click(function(){
	   //토글 버튼(드래그 On/Off)
	   
	   if(map.getDraggable()){
		   map.setDraggable(false);
		   $(this).css('backgroud-color','#EFEFEF');
	   }else {
		   map.setDraggable(true);
		   $(this).css('backgroud-color','gold');
		   
	   }
	   
   });

   map.setZoomable(false);
   $('#btn7').click(function(){
		 //토글 버튼 (On/Off)
		 if(map.getZoomable()){
			 map.setZoomable(false);
			 $(this).css('background-color','#EFEFEF')
		 }else {
			 map.setZoomable(true);
			 $(this).css('background-color','gold');
		 }
		 
   });
   
   
   
   </script>
</body>
</html>