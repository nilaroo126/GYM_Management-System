<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

    <%@ page import="com.java.util.common" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<jsp:include page="customer_layout/header.jsp"/>
<style>
#id{
disabled
}
</style>
<br><br>
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Contact</h2>
          <p>Need Help? <span>Contact Us</span></p>
        </div>

        <div class="mb-3">
        <iframe style="border:0; width: 100%; height: 350px;"  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3817.7678783749525!2d96.17471827485916!3d16.887373317017552!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c19377e0a26b79%3A0x263eb19cb5088366!2sPearl%20Yadana%20Vocational%20Training%20Center!5e0!3m2!1sen!2smm!4v1693128955517!5m2!1sen!2smm" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        
        </div><!-- End Google Maps -->

        <div class="row gy-4">

          <div class="col-md-6">
            <div class="info-item  d-flex align-items-center">
              <i class="fa fa-home" aria-hidden="true" style="font-size:40px;color:#CE1212;"></i>
              <div>
                <h3>Our Address</h3>
                <p>ThaKhin Phoe Hla Gyi Street,NorthDagon,Yangon</p>
              </div>
            </div>
          </div><!-- End Info Item -->

          <div class="col-md-6">
            <div class="info-item d-flex align-items-center">
              <i class="fa fa-envelope" aria-hidden="true" style="font-size:40px;color:#CE1212;"></i>
              <div>
                <h3>Email Us</h3>
                <p>pearlyadana@gmail.com</p>
              </div>
            </div>
          </div><!-- End Info Item -->

          <div class="col-md-6">
            <div class="info-item  d-flex align-items-center">
              <i class="fa fa-phone-square" aria-hidden="true" style="font-size:40px;color:#CE1212;"></i>
              
              <div>
                <h3>Call Us</h3>
                <p>+959794774518</p>
              </div>
            </div>
          </div><!-- End Info Item -->

          <div class="col-md-6">
            <div class="info-item  d-flex align-items-center">
              <i class="fa fa-clock-o" aria-hidden="true" style="font-size:40px;color:#CE1212;"></i>
              
              <div>
                <h3>Opening Hours</h3>
                <div><strong>Mon-Sat:</strong> 10AM - 10PM;
                  <strong>Sunday:</strong> Closed
                </div>
              </div>
            </div>
          </div><!-- End Info Item -->

        </div>

        
        <form:form action="saveInquery"  modelAttribute ="message" method="post" role="form" class="php-email-form p-3 p-md-4">
          <div class="row">
            <div class="col-md-6">
                 
                  <form:input type="text" name="phone" path="mname" class="form-control" id="inputName5" placeholder="Yourname" />
                </div>
                <div class="col-md-6">
                 
                  <form:input type="text" name="phone" path="memail" class="form-control" id="inputName5" placeholder="YourEmail"/>
                </div><br><br><br>	
         
          			<div class="form-group" style="width:100%;height:100%;">
                 
                  <form:input type="text" name="phone" path="message" class="form-control" id="inputName5" placeholder="Message" />
                </div>
                <br><br><br>
         
          <div class="text-center">
          	<button type="submit">Send Message</button>
          	</div>
          </div>
        </form:form>
        
       
        
        
        
        <!--End Contact Form -->

      </div>	
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">

    <div class="container">
      <div class="row gy-3">
        <div class="col-lg-3 col-md-6 d-flex">
         <i class="fa fa-map-marker" aria-hidden="true" style="font-size:30px; color:#CE1212;"></i>&nbsp;
         
          <div>
            <h4>Address</h4>
            <p>
              ThaKhin Phoe Hla Gyi Street<br>
              NorthDagon,Yangon<br>
            </p>
          </div>

        </div>

        <div class="col-lg-3 col-md-6 footer-links d-flex">
           <i class="fa fa-envelope" aria-hidden="true" style="font-size:30px; color:#CE1212;"></i>&nbsp;
          <div>
            <h4>Reservations</h4>
            <p>
              <strong>Phone:</strong> +959794774518<br>
              <strong>Email:</strong> pearlyadana@gmail.com<br>
            </p>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 footer-links d-flex">
          <i class="fa fa-clock-o" aria-hidden="true" style="font-size:30px; color:#CE1212;"></i>&nbsp;
          <div>
            <h4>Opening Hours</h4>
            <p>
              <strong>Mon-Sat: 10AM</strong> - 10PM<br>
              Sunday: Closed
            </p>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 footer-links">
          <h4>Follow Us</h4>
          <div class="social-links d-flex">
            <a href="#" class="twitter"><i class="fa fa-twitter" aria-hidden="true" style="color:#002266;"></i></a>
            <a href="#" class="facebook"><i class="fa fa-facebook-official" aria-hidden="true" style="color:#002266;"></i></a>
            <a href="#" class="instagram"><i class="fa fa-instagram" aria-hidden="true" style="color:red;"></i></a>
            <a href="#" class="linkedin"><i class="fa fa-linkedin-square" aria-hidden="true" style="color:#002266;"></i></a>
          </div>
        </div>

      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>GYM</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/yummy-bootstrap-restaurant-website-template/ -->
        Designed by <a href="https://www.facebook.com/profile.php?id=100082343626014">Nilar Oo</a>
      </div>
    </div>

  </footer><!-- End Footer -->
  <!-- End Footer -->

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="fa fa-arrow-up" aria-hidden="true"></i>
  </a>

  <div id="preloader"></div>
<script>
  // Remove the 'disabled' attribute
  document.getElementById('myButton').disabled = false;
</script>
   <jsp:include page="customer_layout/footer.jsp"/>