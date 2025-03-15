<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

    <%@ page import="com.java.util.common" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>GYM Management</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="${common.url}assets/gym-img/logo.png" rel="icon">
  <link href="${common.url}assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Amatic+SC:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${common.url}assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${common.url}assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="${common.url}assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="${common.url}assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="${common.url}assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link rel="stylesheet" type="text/css" href="${common.url}/assets/css/main.css" media="screen">
  

  <!-- =======================================================
  * Template Name: Yummy - v1.2.1
  * Template URL: https://bootstrapmade.com/yummy-bootstrap-restaurant-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <style>
  /* Hide div2 by default */
  #div2 {
    display: none;
  }
  </style>
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <a href="hero" class="logo d-flex align-items-center me-auto me-lg-0">
        <!-- Uncomment the line below if you also wish to use an image logo -->
         <img src="${common.url}assets/gym-img/logo.png" alt="">
      </a>

      
    </div>
  </header><!-- End Header -->
<br><br>
    <!-- ======= Book A Table Section ======= -->
    <section id="book-a-table" class="book-a-table">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Book A GYM</h2>
          <p>Body<span>Your WorkOut</span> With Us</p>
        </div>

        <div class="row g-0">

          <div class="col-lg-6 reservation-img" style="background-image: url(assets/gym-img/gallery/gallery-3.jpg);" data-aos="zoom-out" data-aos-delay="200"></div>

          <div class="col-lg-6 d-flex align-items-center reservation-form-bg">
          
          
            <form:form action="checkUser" method="post" role="form" modelAttribute="login" class="php-email-form" data-aos="fade-up" data-aos-delay="100">
              <div class="row gy-4">
                 
                <div class="col-lg-8 col-md-6">
                  <form:input type="email" class="form-control" path="cemail" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email"/>
                  <div class="validate"></div>
                </div>
                <div class="col-lg-8 col-md-6">
                  <form:input type="password" class="form-control" path="cpassword" name="password" id="password" placeholder="Your password" data-rule="minlen:4" data-msg="Please enter at least chars"/>
                  <div class="validate"></div><br>
                  <c:if test="${resultflag==0}">
                  <span style="color:red">${message}</span>
                  </c:if>
                </div>
                
                
              <div class="text-right">
        
              
    			<button type="submit">Log in</button>
              <p style="color:white">Don't have an Account?	 <a href="registration">Sign Up	</a></p>
              </div>
              
            </div>
            </form:form>
            
          </div><!-- End Reservation Form -->
          

        </div>

      </div>
    </section><!-- End Book A Table Section -->

  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="${common.url}assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${common.url}assets/vendor/aos/aos.js"></script>
  <script src="${common.url}assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="${common.url}assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="${common.url}assets/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Template Main JS File -->
  <script src="${common.url}assets/js/main.js"></script>

</body>

</html>