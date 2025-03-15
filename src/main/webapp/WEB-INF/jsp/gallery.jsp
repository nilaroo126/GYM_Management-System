<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

    <%@ page import="com.java.util.common" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<jsp:include page="customer_layout/header.jsp"/>
<style>

</style>
<br><br>
    <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>gallery</h2>
          <p>Check <span>Our Gallery</span></p>
        </div>
     	<div class="gallery-slider swiper">
        
          <div class="swiper-wrapper align-items-center">
       	 <c:forEach var="g" items="${gallery}">
          <div class="swiper-slide"><img src="data:image/jpg;base64,${g.image}" class="img-fluid" style="width:500px;height:300px;border:3px  black;" alt=""></div>
          </c:forEach>
      	</div>
  <div class="swiper-pagination"></div>
        </div>
	</div>
    </section><!-- End Gallery Section -->
    
     <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>

  <jsp:include page="customer_layout/footer.jsp"/>