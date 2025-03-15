<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%@ page import="com.java.util.common" %>
  <%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<%@ page import="java.text.ParseException" %>
  
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Gym Template">
    <meta name="keywords" content="Gym, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Gym Management</title>
	<link href="${common.url}assets/gym-img/logo.png" rel="icon">
  <link href="${common.url}assets/gym-img/logo.png" rel="icon">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald:300,400,500,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${common.url}gym_assets/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${common.url}gym_assets/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${common.url}gym_assets/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="${common.url}gym_assets/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${common.url}gym_assets/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="${common.url}gym_assets/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="${common.url}gym_assets/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${common.url}gym_assets/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    

    <!-- Offcanvas Menu Section Begin -->
    
    <div class="offcanvas-menu-wrapper">
        <div class="canvas-close">
            <i class="fa fa-close"></i>
        </div>
        <div class="canvas-search search-switch">
            <i class="fa fa-search"></i>
        </div>
        <nav class="canvas-menu mobile-menu">
           <ul>
          <li><a href="hero">Home</a></li>
         
          <li><a href="${common.url}classes">Classes</a></li>
          
          <li><a href="${common.url}Trainer">Trainer</a></li>
          <li><a href="${common.url}gallery">Gallery</a></li>
         
          <li><a href="contact">Contact</a></li>
        </ul>
        
        </nav>
       </div>
    <!-- Offcanvas Menu Section End -->

    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3">
                    <div class="logo">
                          <a href="${common.url}hero" class="logo d-flex align-items-center me-auto me-lg-0">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <img src="${common.url}assets/gym-img/logo.png" alt="">
       	
      </a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="nav-menu">
                          <ul>
          <li><a href="hero">Home</a></li>
         
          <li><a href="${common.url}classes">Classes</a></li>
         
          <li><a href="${common.url}Trainer">Trainer</a></li>
          <li><a href="${common.url}gallery">Gallery</a></li>
         
          <li><a href="contact">Contact</a></li>
        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                   
                </div>
            </div>
            <div class="canvas-open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header End -->

   

    <!-- Pricing Section Begin -->
    <section class="pricing-section service-pricing spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>Our Plan</span>
                        <h2>Choose your pricing plan</h2>
                        
                        
                    </div>
                </div>
                <c:if test="${resultflag==0}">
                  <span style="color:red">${message}</span>
                  </c:if><br><br>
            </div>
            <div class="row justify-content-center">
               	
               <c:forEach var="plan" items="${plan}">
               <c:if test="${plan.planstatus==1}">
     			<c:forEach var="classinfo" items="${classinfo}">
     			
                	
               
						
                <div class="col-lg-4 col-md-8">
                    <div class="ps-item">
                    <form:form action="${common.url}saveBooking/${plan.planid}" method="post" role="form" modelAttribute="registration" >
				<form:input path="cid" value="${cid}" hidden="true" />
                    
                    	<h3>${classinfo.classname} Class</h3>
                        <h3>${plan.planmonth} Months</h3>
                        <div class="pi-price">
                            <h2>$ ${classinfo.classprice}/per Month</h2>
                            <span>for ${classinfo.capacity} persons class</span>
                            <p>${plan.rcustomer}/${classinfo.capacity} is already Registered</p>
                            
                        </div>
                        <ul>
                        				<c:set var="starttime" value="${plan.starttime}" />
										<c:set var="endtime" value="${plan.endtime}" />
                            <li>	<%
                             	String starttime = pageContext.getAttribute("starttime").toString();

                                // Define the input and output date formats
                                SimpleDateFormat inputFormatstarttime = new SimpleDateFormat("HH:mm:ss");
                                SimpleDateFormat outputFormatstarttime = new SimpleDateFormat("h:mma");

                                try {
                                    // Parse the input time string into a Date object
                                    Date date = inputFormatstarttime.parse(starttime);

                                    // Format the Date object into the desired output format
                                    String formattedstartTime = outputFormatstarttime.format(date);
                             	 %>
                             	 
                             	<%=formattedstartTime %>
                             	
                             	<%
                                } catch (ParseException e) {
                                    e.printStackTrace();
                                }
                             	%>
                            	- 
                            <%
                             	String endtime = pageContext.getAttribute("endtime").toString();

                                // Define the input and output date formats
                                SimpleDateFormat inputFormatendtime = new SimpleDateFormat("HH:mm:ss");
                                SimpleDateFormat outputFormatendtime = new SimpleDateFormat("h:mma");

                                try {
                                    // Parse the input time string into a Date object
                                    Date date = inputFormatendtime.parse(endtime);

                                    // Format the Date object into the desired output format
                                    String formattedendTime = outputFormatendtime.format(date);
                             	 %>
                             	 
                             	<%=formattedendTime %>
                             	
                             	<%
                                } catch (ParseException e) {
                                    e.printStackTrace();
                                }
                             	%></li>
                            <li>${classinfo.equipments}</li>
                            
                            <li>${classinfo.equantity}  Items</li>
                           <li>${plan.tname}</li>
                           <li>${classinfo.classdesc}</li>
                            
                        </ul>
                        <a href="${common.url}saveBooking/${plan.planid}" class="primary-btn pricing-btn">Enroll now</a>
                        </form:form>
                    </div>
                </div>
                
             
                </c:forEach>
                </c:if>
                </c:forEach>
               
            </div>
        </div>
    </section>
    
   

    <!-- Js Plugins -->
    <script src="${common.url}gym_assets/js/jquery-3.3.1.min.js"></script>
    <script src="${common.url}gym_assets/js/bootstrap.min.js"></script>
    <script src="${common.url}gym_assets/js/jquery.magnific-popup.min.js"></script>
    <script src="${common.url}gym_assets/js/masonry.pkgd.min.js"></script>
    <script src="${common.url}gym_assets/js/jquery.barfiller.js"></script>
    <script src="${common.url}gym_assets/js/jquery.slicknav.js"></script>
    <script src="${common.url}gym_assets/js/owl.carousel.min.js"></script>
    <script src="${common.url}gym_assets/js/main.js"></script>



</body>

</html>