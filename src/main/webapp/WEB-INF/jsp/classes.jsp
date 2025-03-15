<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

    <%@ page import="com.java.util.common" %>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
	<jsp:include page="customer_layout/header.jsp"/>
<br><br><br>

   <!-- ======= Menu Section ======= -->
    <section id="menu" class="menu">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
         
          <h2>Our Classes</h2>
          <p>Check Our <span>Classes</span></p>
        </div>
        <div class="tab-content" data-aos="fade-up" data-aos-delay="300">
	
          <div class="tab-pane fade active show" id="menu-starters">
		 <div class="row gy-5" >

			<c:forEach var="c" items="${classes}">
		
              <div class="col-lg-4 menu-item" style="color:white;">
              	<c:if test="${sessionScope.customerid==null}">
    				<a href="login" onclick="showAlert();">
    				<img src="data:image/jpg;base64,${c.cimage}" class="menu-img img-fluid"  style="width:500px;height:300px;border:3px  black;" alt="" />
                <h4 style="color:white;"><B>${c.classname}</B></h4>
             
             <script>
			function showAlert() {
    				alert("You haven't Login or Sign Up.Please Login First!");
					}
			</script>
             </a>
    			</c:if>
    			<c:if test="${sessionScope.customerid!=null}">
    				<a href="plan/${c.classid}">
    				<img src="data:image/jpg;base64,${c.cimage}" class="menu-img img-fluid" style="width:500px;height:300px;border:3px  black;" alt="">
                <h4 style="color:white;"><B>${c.classname}</B></h4>
             
             
             </a>
    			</c:if>
              
                
                
              </div><!-- Menu Item -->
              
              </c:forEach>

             

              
            </div>
          </div><!-- End Lunch Menu Content -->

          
        </div>

      </div>
    </section><!-- End Menu Section -->


  <div id="preloader"></div>

 <jsp:include page="customer_layout/footer.jsp"/>