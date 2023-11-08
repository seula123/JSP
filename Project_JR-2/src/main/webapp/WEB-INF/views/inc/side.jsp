<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <style>
  	
  	#side {
  		transform: translate;
  		position: fixed;
  		width: 200px;
	    top: 295px; 
	    left: 0; 
	    background-color: lightblue;
	    padding: 10px;
	    border: 1px solid #000;
  	}
  	
  
  	
  </style>
  
  <div id="side">
  	<div class="accordion" id="accordionExample">
 	 <div class="accordion-item">
	    <h2 class="accordion-header">
	      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
	        자격증 조회
	      </button>
	    </h2>
	    <div id="collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
	      <div class="accordion-body">
	        <strong>1</strong> 
	        <code>.accordion-body</code>
	      </div>
	    </div>
	  </div>
	  
	  <div class="accordion-item">
	    <h2 class="accordion-header">
	      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
	        자격증 추천
	      </button>
	    </h2>
	    <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
	      <div class="accordion-body">
			<strong>2</strong> 
	        <code>.accordion-body</code>
	      </div>
	    </div>
	  </div>
	  
	  <div class="accordion-item">
	    <h2 class="accordion-header">
	      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
	        교재 조회 및 맞춤 추천
	      </button>
	    </h2>
	    <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
	      <div class="accordion-body">
	        <strong>3</strong> 
	        <code>.accordion-body</code>
	      </div>
	    </div>
	  </div>
	  
	  <div class="accordion-item">
	    <h2 class="accordion-header">
	      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse4" aria-expanded="false" aria-controls="collapse4">
	        학원 및 우리동네 학원
	      </button>
	    </h2>
	    <div id="collapse4" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
	      <div class="accordion-body">
	      	<strong>4</strong> 
	        <code>.accordion-body</code>
	      </div>
	    </div>
	  </div>
	
  	<div class="accordion-item">
	    <h2 class="accordion-header">
	      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse5" aria-expanded="false" aria-controls="collapse5">
	        직업 정보
	      </button>
	    </h2>
	    <div id="collapse5" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
	      <div class="accordion-body">
	      	<strong>5</strong> 
	        <code>.accordion-body</code>
	      </div>
	    </div>
	  </div>
	  
  	  <div class="accordion-item">
	    <h2 class="accordion-header">
	      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse6" aria-expanded="false" aria-controls="collapse6">
	        자유 게시판
	      </button>
	    </h2>
	    <div id="collapse6" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
	      <div class="accordion-body">
	      	<strong>6</strong> 
	        <code>.accordion-body</code>
	      </div>
	    </div>
	  </div>
	 </div>
  </div>
  
  
  <script>

  $(document).ready(function() {
	    // 초기 로드 시와 창 크기 변경 시에 함수를 실행
	    sideBar();

	    // 창 크기 변경 이벤트를 모니터링
	    $(window).on("resize", function() {
	    	sideBar();
	    });

	    function sideBar() {
	        var windowWidth = $(window).width();
	        var currentURL = window.location.href;

	        
	        
	        if (windowWidth <= 1500 || currentURL == "http://localhost:8090/jr/index.do") {
	            // id="ad"인 div 태그 숨김 또는 제거
	            $("#side").hide();
	            // 또는 $("#ad").remove();
	        } else {
	            // 창의 너비가 1700px 이상이거나 URL이 "http://localhost:8090/jr/index.do"와 일치하면 id="ad"인 div 태그 다시 표시
	            $("#side").show();
	        }
	    }
	});
  
  
  

  </script>