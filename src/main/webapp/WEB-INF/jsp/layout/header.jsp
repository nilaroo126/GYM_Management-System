<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.java.util.common" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Admin Dashboard </title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
 <link href="${common.url}assets/gym-img/logo.png" rel="icon">
  <link href="${common.url}assets/gym-img/logo.png" rel="icon">
  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${common.url}admin_assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${common.url}admin_assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="${common.url}admin_assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${common.url}admin_assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="${common.url}admin_assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="${common.url}admin_assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="${common.url}admin_assets/vendor/simple-datatables/style.css" rel="stylesheet">
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  

  <!-- Template Main CSS File -->
  <link href="${common.url}admin_assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: Aug 30 2023 with Bootstrap v5.3.1
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center" style="background-color:#444444;">

    <div class="d-flex align-items-center justify-content-between">
      <a href="dashboard" style=" color:black;" class="logo d-flex align-items-center me-auto me-lg-0">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <img src="${common.url}assets/gym-img/logo.png" alt="">
       	
      </a>
    <i class="fa fa-bars toggle-sidebar-btn"  style="color:white;"></i>
    

    </div><!-- End Logo -->

    
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

       !-- End Search Icon-->

        <!-- End Notification Nav -->

        <!-- End Messages Nav -->

        <li class="nav-item dropdown pe-3">

           <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
           
            <c:forEach var="adm" items="${admininfo}">
             
            <img  alt="" src="data:image/jpg;base64,${adm.image}"  alt="Profile" class="rounded-circle">
            </c:forEach>
            
            
            <span class="d-none d-md-block dropdown-toggle ps-2" style="color:#F36100">Adladin</span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
            <c:forEach var="adm" items="${admininfo}">
             
            <img  alt="" src="data:image/jpg;base64,${adm.image}"  alt="Profile" class="rounded-circle">
            </c:forEach>
              <h6>Aladin</h6>
              <span>Admin</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="${common.url}adminprofile">
                <i class="fa fa-user-o" aria-hidden="true"></i>
                <span>My Profile</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="${common.url}adminprofile">
               <i class="fa fa-cog" aria-hidden="true"></i>

                <span>Account Settings</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

          
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="${common.url}logout">
                <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar" style="background-color:#444444;">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item" >
        <a class="nav-link " href="${common.url}dashboard">
          <i class="fa fa-home" aria-hidden="true"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->
      <li class="nav-item" id="myTable">
        <a class="nav-link collapsed" href="${common.url}plan">
         <i class="fa fa-square" aria-hidden="true"></i>
<span>Plan</span>
        </a>
       
      </li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="${common.url}trainer">
         <i class="fa fa-user" aria-hidden="true"></i><span>Trainer</span>
        </a>
       
      </li><!-- End Components Nav -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="${common.url}member">
           <i class="fa fa-user" aria-hidden="true"></i><span>Member</span>
        </a>
      
      </li><!-- End Components Nav -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="${common.url}class">
        <i class="fa fa-snowflake-o" aria-hidden="true"></i><span>Classes</span>
        </a>
        
      </li>
       <li class="nav-item">
        <a class="nav-link collapsed" href="${common.url}photo">
        <i class="fa fa-picture-o" aria-hidden="true"></i><span>Gallery</span>
        </a>
        
      </li>
	</li>
       <li class="nav-item">
        <a class="nav-link collapsed" href="${common.url}message">
        <i class="fa fa-commenting-o" aria-hidden="true"></i>
		<span>Message</span>
        </a>
        
      </li>


      <li class="nav-item">
        <a class="nav-link collapsed" href="${common.url}adminprofile">
         <i class="fa fa-user-circle-o" aria-hidden="true"></i>
          <span>Profile</span>
        </a>
      </li>
       <li class="nav-item">
        <a class="nav-link collapsed" href="${common.url}logout">
        <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
          <span>Logout</span>
        </a>
      </li>
      
      <!-- End Profile Page Nav -->
      </ul>

  </aside><!-- End Sidebar-->


