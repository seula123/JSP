<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Logis Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="<%=request.getContextPath() %>/resources/img/favicon.png" rel="icon">
  <link href="<%=request.getContextPath() %>/resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="<%=request.getContextPath() %>/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/resources/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="<%=request.getContextPath() %>/resources/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Logis
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/logis-bootstrap-logistics-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

  
  <%@ include file="/WEB-INF/views/inc/asset.jsp" %>
</head>

<body>

  <%@ include file="/WEB-INF/views/inc/header.jsp" %>

  <!-- ======= <main id="main"> 여기부터 집어넣기 ======= -->
  
    <main id="main">
    

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs">
      <div class="page-header d-flex align-items-center" style="background-image: url('<%=request.getContextPath() %>/resources/img/page-header.jpg');">
        <div class="container position-relative">
          <div class="row d-flex justify-content-center">
            <div class="col-lg-6 text-center">
              <h2>로그인</h2>
            </div>
          </div>
        </div>
      </div>
      <nav>
        <div class="container">
          <ol>
            <li><a href="/jr/index.do">Home</a></li>
            <li>로그인</li>
          </ol>
        </div>
      </nav>
    </div><!-- End Breadcrumbs -->
	

	
    <!-- ======= Get a Quote Section ======= -->
    <section id="get-a-quote" class="get-a-quote">
    
      <div class="container" data-aos="fade-up" >

        <div class="row g-0" style="display: flex; justify-content: center;">
		
          <%-- <div class="col-lg-5 quote-bg" style="background-image: url(<%=request.getContextPath() %>/resources/img/quote-bg.jpg);"></div> --%>

          <div class="col-lg-7" style="width: 500px;">
            <form action="/jr/user/login.do" method="post" class="php-email-form">
              <h1 style="text-align: center;">로그인</h1>
              
              <div class="row gy-4">

                <div class="col-md-12">
                  <input type="text" name="id" class="form-control" placeholder="아이디를 입력해주세요" required>
                </div>

                <div class="col-md-12">
                  <input type="password" name="pw" class="form-control" placeholder="비밀번호를 입력해주세요" required>
                </div>
				
				<div style="display: flex; justify-content: right;">
					<a href="/toy/user/register.do">아이디 찾기</a> <p> &vert; </p>
					<a href="/toy/user/register.do"> 비밀번호 찾기</a>
				</div>
				
                <div class="col-md-12 text-center">
                  <div class="loading">Loading</div>
                  <div class="error-message"></div>
                  <div class="sent-message">Your quote request has been sent successfully. Thank you!</div>

                  <button type="submit">로그인</button>
                  <div><a href="/toy/user/register.do">회원가입</a></div>
                </div>

              </div>
            </form>
            
            
            
          </div><!-- End Quote Form -->

			<div>
	            <form action="/jr/user/login.do" method="post" class="php-email-form">
	            <input type="hidden" name="id" value="test1">
	            <input type="hidden" name="pw" value="1234">
	            <button type="submit">일반</button>
            	</form>
            </div>
            <div>
	            <form action="/jr/user/login.do" method="post" class="php-email-form">
	            <input type="hidden" name="id" value="admin">
	            <input type="hidden" name="pw" value="1234">
	            <button type="submit">관리자</button>
            	</form>
            </div>
        </div>

      </div>
    </section><!-- End Get a Quote Section -->



  </main><!-- End #main -->
  
  
  
  
  
  <!-- ======= </main> 까지 집어넣기 ======= -->
  
  <%@ include file="/WEB-INF/views/inc/footer.jsp" %>
  

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>

  <%@ include file="/WEB-INF/views/inc/ad.jsp" %>
  <%@ include file="/WEB-INF/views/inc/side.jsp" %>

  <Script>
  
  
  </Script>


</body>

</html>