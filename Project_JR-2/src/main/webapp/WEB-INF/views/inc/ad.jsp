<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <style>
  	
  	#ad {
  		position: fixed;
  		width: 200px;
	    top: 400px; 
	    right: 0; 
	    background-color: lightblue;
	    padding: 10px;
	    border: 1px solid #000;
  	}
  	
  	#ad img{
  		width: 180px;
  		background-size: cover;
  	} 
  	
  </style>
  
  <div id="ad">
  	<div><img alt="" src="<%=request.getContextPath() %>/resources/img/cat01_small.jpg"></div>
  	<div><a href="#">자격증</a></div>
  	<div><a href="#">내메뉴</a></div>
  
  </div>
  
  
  <script>
  console.log(window.location.href);

  $(document).ready(function() {
	    // 초기 로드 시와 창 크기 변경 시에 함수를 실행
	    adjustAdVisibility();

	    // 창 크기 변경 이벤트를 모니터링
	    $(window).on("resize", function() {
	        adjustAdVisibility();
	    });

	    function adjustAdVisibility() {
	        var windowWidth = $(window).width();

	        
	        
	        if (windowWidth <= 1500) {
	            // id="ad"인 div 태그 숨김 또는 제거
	            $("#ad").hide();
	            // 또는 $("#ad").remove();
	        } else {
	            // 창의 너비가 1700px 이상이거나 URL이 "http://localhost:8090/jr/index.do"와 일치하면 id="ad"인 div 태그 다시 표시
	            $("#ad").show();
	        }
	    }
	});
  
  
  

  </script>