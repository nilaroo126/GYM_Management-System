<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

    <%@ page import="com.java.util.common" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<jsp:include page="WEB-INF/jsp/customer_layout/header.jsp"/>

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="hero d-flex align-items-center section-bg" style="background: url(${common.url}/assets/gym-img/hero/hero-1.jpg)  top center; background-size: cover;">
    <div class="container">
      <div class="row justify-content-between gy-5">
        <div class="col-lg-5 order-2 order-lg-1 d-flex flex-column justify-content-center align-items-center align-items-lg-start text-center text-lg-start">
         </div>
        <div class="col-lg-5 order-1 order-lg-2 text-center text-lg-start">
           <h2 data-aos="fade-up">Shape Your Body<br>To Be Strong</h2>
          <p data-aos="fade-up" data-aos-delay="100">Be Strong By Training Hard</p>
          <div class="d-flex" data-aos="fade-up" data-aos-delay="200">
          
            <a href="login" class="btn-book-a-table">GYM Registration</a>
          </div>
        </div>
      </div>
    </div>
  </section><!-- End Hero Section -->

  <div id="preloader"></div>
  <jsp:include page="WEB-INF/jsp/customer_layout/footer.jsp"/>
  

  <!-- Vendor JS Files -->
  