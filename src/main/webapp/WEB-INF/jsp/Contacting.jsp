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
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
</head>

<body>
    <!-- Page Preloder -->
    

    <!-- Offcanvas Menu Section Begin -->
    
   
    <!-- Offcanvas Menu Section End -->

    <!-- Header Section Begin -->
    <header class="header-section" style="background-color:black;">
        <div class="container-fluid">
            <div class="row" >
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
          <li style="margin-left:200px;margin-top:-50px;"><a href="hero">Home</a></li>
         
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

   <!-- Contact Section Begin -->
    <section class="contact-section spad">
   	
        <div class="container">
         <div class="section-title">
                        <h2>Contact</h2><br>
                        <span style="font-style: italic;">Need Help?Contact Us!!</span>
                        
                        
                    </div>
        <div class="map" style="height:400px;">
               <iframe style="border:0; width: 100%; height: 350px;"  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3817.7678783749525!2d96.17471827485916!3d16.887373317017552!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c19377e0a26b79%3A0x263eb19cb5088366!2sPearl%20Yadana%20Vocational%20Training%20Center!5e0!3m2!1sen!2smm!4v1693128955517!5m2!1sen!2smm" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
  		</div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-title contact-title">
                        <span>Contact Us</span>
                        <h2>GET IN TOUCH</h2>
                    </div>
                    <div class="contact-widget">
                        <div class="cw-text">
                            <i class="fa fa-home" aria-hidden="true" style="font-size:40px;color:#CE1212;"></i>
                            <p>ThaKhin Phoe Hla Gyi Street,NorthDagon,Yangon</p>
                        </div>
                        <div class="cw-text">
                            <i class="fa fa-phone-square" aria-hidden="true" style="font-size:40px;color:#CE1212;"></i>
                            <ul>
                                <li>+959794774518</li>
                                <li>+959794774518</li>
                            </ul>
                        </div>
                        <div class="cw-text email">
                            <i class="fa fa-envelope" aria-hidden="true" style="font-size:40px;color:#CE1212;"></i>
                            <p>pearlyadana@gmail.com</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="leave-comment">
                    
                    <form:form action="saveInquery"  modelAttribute ="message" method="post" role="form" >
                    <c:forEach var="c" items="${customerinfo}">
                       <form:input type="text" name="phone" path="mname" value="${c.cname}" class="form-control" id="inputName5" placeholder="Yourname" />
                      <form:input type="text" name="phone" path="memail" value="${c.cemail}" class="form-control" id="inputName5" placeholder="YourEmail"/>
                       
                         <form:input type="number" name="phone" path="cid" value="${c.cid}" class="form-control" id="inputName5" placeholder="" hidden="true"/>
                          <form:input type="text" name="phone" path="message" class="form-control" id="inputName5" style="padding: 50px 20px;" placeholder="Message" />
                            <button type="submit">Send Message</button>
                            </c:forEach>
                        </form:form>
                    </div>
                </div>
            </div>
            
        </div>
    </section>
    <!-- Contact Section End -->

    

    <!-- Footer Section Begin -->
    <section class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="fs-about">
                        <div class="fa-logo">
                            <a href="#"><img src="img/logo.png" alt=""></a>
                        </div>
                        <h4 style="color:white;">Motivations Tips</h4>
                        <p> Body maintenance--(both looking and feeling good in your body at a healthy size for your frame) </p>
                        <p> Mind maintenance--(easing anxiety and reducing stress via a healthy outlet like exercise). </p>
                        <div class="fa-social" >
                            <a href="#" ><i class="fa fa-facebook" style="color:blue;font-size:20px;"></i></a>
                            <a href="#"><i class="fa fa-twitter" style="color:blue;font-size:20px;"></i></a>
                            <a href="#"><i class="fa fa-youtube-play" style="color:red;font-size:20px;"></i></a>
                          <a href="#"><i class="fa  fa-envelope-o" style="color:blue;font-size:20px;"></i></a>
                          <a href="#"><i class="fa fa-instagram" style="color:red;font-size:20px;"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="fs-widget">
                        <h4>Useful links</h4>
                        <ul>
                            <li><a href="hero">Home</a></li>
         					<li><a href="${common.url}classes">Classes</a></li>
          					<li><a href="${common.url}Trainer">Trainer</a></li>
          					<li><a href="${common.url}gallery">Gallery</a></li>
      	  					<li><a href="contact">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="fs-widget">
                        <h4>Support</h4>
                        <ul>
                            <li><a href="${common.url}profile">My Profile</a></li>
       		  				<li><a href="${common.url}RegistrationHistory">Registration History</a></li>
              				<li><a href="${common.url}logout">Log Out</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="fs-widget">
                        <h4>Tips & Guides</h4>
                        <div class="fw-recent">
                            <h6><a>5 Fitness Tips for a Better</a> </h6>
                            <ul style="color:white;font-size:900;">
						<li>Hydration is the key! Drinking fluids in general will help you keep healthy. ...</li>
						<li>Variety is the spice of life. Combining cardio and weight training is a very effective way to keep healthy.</li>
						<li>Interval training. ...</li>
						<li>Procrastination kills. ...</li>
						<li>What motivates you?</li>
                           </ul> 
                        </div>
                       
                    </div>
                </div>
            </div>
            
        </div>
    </section>
    <!-- Footer Section End -->

    

    
    
   

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