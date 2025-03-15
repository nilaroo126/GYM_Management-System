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
  <link href="${common.url}assets/gym-img/logo.png" rel="icon">

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
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- Template Main CSS File -->
  <link rel="stylesheet" type="text/css" href="${common.url}/assets/css/main.css" media="screen">
  

  <!-- =======================================================
  * Template Name: Yummy - v1.2.1
  * Template URL: https://bootstrapmade.com/yummy-bootstrap-restaurant-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <a href="${common.url}hero" class="logo d-flex align-items-center me-auto me-lg-0">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <img src="${common.url}assets/gym-img/logo.png" alt="">
       	
      </a>

      <nav id="navbar" class="navbar" style="margin-left:170px;">
        <ul>
          <li><a href="hero">Home</a></li>
         <li><a href="${common.url}classes">Classes</a></li>
          <!--  <li><a href="${common.url}events">Schedule</a></li>-->
          <li><a href="${common.url}Trainer">Trainer</a></li>
          <li><a href="${common.url}gallery">Gallery</a></li>
      	  <li><a href="contact">Contact</a></li>
        </ul>
        
      </nav><!-- .navbar -->
      
<nav id="navbar" class="navbar" style="margin-right: -150px;">
    <ul>
    <li class="dropdown">
    <c:if test="${sessionScope.customerid==null}">
    <img alt="" src="${common.url}/assets/gym-img/user NULL.png" style="width:50px;height:50px; border-radius:50%;">
    </c:if>
    <c:if test="${sessionScope.customerid != null}">
    <c:forEach var="customer" items="${customerinfo}">
    
    <img alt="" src="data:image/jpg;base64,${customer.image}" style="width:50px;height:50px; border-radius:50%;">
    
    
    </c:forEach>
    
    
    
    
    </c:if>
   
    
     <ul style="margin:right:100px">
     
              <li><a href="${common.url}profile">My Profile</a></li>
              
              <li><a href="${common.url}RegistrationHistory">Registration History</a></li>
              <li><a href="${common.url}myinbox">Inbox</a></li>
               <li><a href="${common.url}logout">Log Out</a></li>
            </ul>
       </li>     
 	</ul></nav>
 	
      <a class="btn-book-a-table" href="${common.url}login" >GYM Registration</a>
      
      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

    </div>
   
    

 
  </header><!-- End Header -->

 