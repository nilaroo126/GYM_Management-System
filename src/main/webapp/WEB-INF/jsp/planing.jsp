<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

    <%@ page import="com.java.util.common" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="customer_layout/header.jsp"/>



<br><br>
    <!-- ======= Book A Table Section ======= -->
    <section id="book-a-table" class="book-a-table">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Your Booking History</h2>
          <p>History<span>Your WorkOut</span> With Us</p>
        </div>
         <div class="row g-0">
             <div class="col-lg-10 reservation-img" >

        
          
          
              <div class="row gy-3" style="color:white">
           <table style="border-spcaing:50px;">
  <tr>
  	<th>RegisterId</th>
  	<th>Customer Name</th>
  	<th>Payment Method</th>
  	<th>Class Name</th>
  	<th>Trainer Name</th>
  	<th>Class Price</th>
  	<th>Register Date</th>
  	<th>Expired Date</th>
</tr>
  <c:forEach var="re" items="${register}">
  <tr>
  <td>${re.rid}</td>
  <td>${re.cname}</td>
   <td>${re.pmethod}</td>
  <td>${re.classname}</td>
  <td>${re.tname}</td>
  <td>${re.classprice}</td>
 
  <td>${re.registerdate}</td>
  <td>${re.expireddate}</td>
  
  </tr>
  </c:forEach>
  </table>
  </div>
  </div>
       </div>
        </div>
	
    </section><!-- End Book A Table Section -->
	<jsp:include page="customer_layout/footer.jsp"/>