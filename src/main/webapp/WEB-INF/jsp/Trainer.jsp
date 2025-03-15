<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

    <%@ page import="com.java.util.common" %>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<jsp:include page="customer_layout/header.jsp"/>

<br><br>
    <!-- ======= Chefs Section ======= -->
    <section id="chefs" class="chefs section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Trainer</h2>
          <p>Our <span>Proffesional</span> Trianer</p>
        </div>

        <div class="row gy-4">
		<c:forEach var="tr" items="${trainerlist}">
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="chef-member">
              <div class="member-img">
                <img src="data:image/jpg;base64,${tr.image}" style="height: 500px" class="img-fluid" alt="">
                <div class="social" style="color:#CE1212">
                  <a href="" style="color:blue"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                  <a href="" style="color:blue"><i class="fa fa-facebook-official" aria-hidden="true"></i></a>
                  <a href="" style="color:red"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                  <a href="" style="color:blue"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>${tr.name}</h4>
                <span>GYM Trainer</span>
                <p>${tr.desc}</p>
              </div>
            </div>
          </div><!-- End Chefs Member -->
		</c:forEach>
         

        </div>

      </div>
    </section><!-- End Chefs Section -->
<a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="fa fa-arrow-up" aria-hidden="true"></i>
  </a>

  <div id="preloader"></div>

 <jsp:include page="customer_layout/footer.jsp"/>