<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

    <%@ page import="com.java.util.common" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Gym Management">
    
    <title>Gym Management</title>
	<!-- Favicons -->
  <link href="${common.url}assets/gym-img/logo.png" rel="icon">
  <link href="${common.url}assets/img/apple-touch-icon.png" rel="apple-touch-icon">
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
    
    <link href="${common.url}assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${common.url}assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="${common.url}assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="${common.url}assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="${common.url}assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link rel="stylesheet" type="text/css" href="${common.url}/assets/css/main.css" media="screen">
  
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

  

    <!-- Header Section Begin -->
     <header id="header" class="header fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <a href="hero" class="logo d-flex align-items-center me-auto me-lg-0">
        <!-- Uncomment the line below if you also wish to use an image logo -->
         <img src="${common.url}assets/gym-img/logo.png" alt="">
      </a>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="hero">Home</a></li>
          
          <li><a href="classes">Classes</a></li>
          <li><a href="events">Schedule</a></li>
          <li><a href="Trainer">Trainer</a></li>
          <li><a href="gallery">Gallery</a></li>
          <li><a href="contact">Contact</a></li>
        </ul>
      </nav><!-- .navbar -->
      <nav id="navbar" class="navbar" style="margin-right: -150px;">
    <ul>
    <li class="dropdown">
    <img alt="" src="${common.url}/assets/gym-img/user NULL.png" style="width:50px;height:50px; border-radius:50%;">
    <i class="fa fa-angle-down" aria-hidden="true" style="font-size:30px"></i>
     <ul style="margin:right:100px">
              <li><a href="profile">My Profile</a></li>
              
              <li><a href="RegistrationHistory">Registration History</a></li>
              <li><a href="#">Log Out</a></li>
            </ul>
       </li>     
 	</ul></nav>
 	

      <a class="btn-book-a-table" href="registration">GYM Registration</a>
      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

    </div>
  </header><!-- End Header -->
<br><br>
    <!-- Header End -->

    

    <!-- Class Timetable Section Begin -->
    <section class="class-timetable-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-title">
                        
                       
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="table-controls">
                        <ul>
                            <li class="active" data-tsfilter="all">All event</li>
                            <li data-tsfilter="fitness">Fitness tips</li>
                            <li data-tsfilter="motivation">Motivation</li>
                            <li data-tsfilter="workout">Workout</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="class-timetable">
                        <table>
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Monday</th>
                                    <th>Tuesday</th>
                                    <th>Wednesday</th>
                                    <th>Thursday</th>
                                    <th>Friday</th>
                                    <th>Saturday</th>
                                    <th>Sunday</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="class-time">6.00am - 8.00am</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>WEIGHT LOOSE</h5>
                                        <span>RLefew D. Loee</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Cardio</h5>
                                        <span>RLefew D. Loee</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Yoga</h5>
                                        <span>Keaf Shen</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Fitness</h5>
                                        <span>Kimberly Stone</span>
                                    </td>
                                    <td class="dark-bg blank-td"></td>
                                    <td class="hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Boxing</h5>
                                        <span>Rachel Adam</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Body Building</h5>
                                        <span>Robert Cage</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="class-time">10.00am - 12.00am</td>
                                    <td class="blank-td"></td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Fitness</h5>
                                        <span>Kimberly Stone</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>WEIGHT LOOSE</h5>
                                        <span>RLefew D. Loee</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Cardio</h5>
                                        <span>RLefew D. Loee</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Body Building</h5>
                                        <span>Robert Cage</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Karate</h5>
                                        <span>Donald Grey</span>
                                    </td>
                                    <td class="blank-td"></td>
                                </tr>
                                <tr>
                                    <td class="class-time">5.00pm - 7.00pm</td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Boxing</h5>
                                        <span>Rachel Adam</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Karate</h5>
                                        <span>Donald Grey</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Body Building</h5>
                                        <span>Robert Cage</span>
                                    </td>
                                    <td class="blank-td"></td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Yoga</h5>
                                        <span>Keaf Shen</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Cardio</h5>
                                        <span>RLefew D. Loee</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Fitness</h5>
                                        <span>Kimberly Stone</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="class-time">7.00pm - 9.00pm</td>
                                    <td class="hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Cardio</h5>
                                        <span>RLefew D. Loee</span>
                                    </td>
                                    <td class="dark-bg blank-td"></td>
                                    <td class="hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Boxing</h5>
                                        <span>Rachel Adam</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>Yoga</h5>
                                        <span>Keaf Shen</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="motivation">
                                        <h5>Karate</h5>
                                        <span>Donald Grey</span>
                                    </td>
                                    <td class="dark-bg hover-bg ts-meta" data-tsmeta="fitness">
                                        <h5>Boxing</h5>
                                        <span>Rachel Adam</span>
                                    </td>
                                    <td class="hover-bg ts-meta" data-tsmeta="workout">
                                        <h5>WEIGHT LOOSE</h5>
                                        <span>RLefew D. Loee</span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Class Timetable Section End -->

   

    
    

    <!-- Js Plugins -->
    <script src="${common.url}gym_assets/js/jquery-3.3.1.min.js"></script>
    <script src="${common.url}gym_assets/js/bootstrap.min.js"></script>
    <script src="${common.url}gym_assets/js/jquery.magnific-popup.min.js"></script>
    <script src="${common.url}gym_assets/js/masonry.pkgd.min.js"></script>
    <script src="${common.url}gym_assets/js/jquery.barfiller.js"></script>
    <script src="${common.url}gym_assets/js/jquery.slicknav.js"></script>
    <script src="${common.url}gym_assets/js/owl.carousel.min.js"></script>
    <script src="${common.url}gym_assets/js/main.js"></script>
     <!-- Vendor JS Files -->
  <script src="${common.url}assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${common.url}assets/vendor/aos/aos.js"></script>
  <script src="${common.url}assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="${common.url}assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="${common.url}assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="${common.url}assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="${common.url}assets/js/main.js"></script>



</body>

</html>