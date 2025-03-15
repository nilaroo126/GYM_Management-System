<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

    <%@ page import="com.java.util.common" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="customer_layout/header.jsp"/>
<style>
table,tr,td,th{
	style="border-spcaing:80px;border:2px solid black;border-collapse: collapse;
  width: 100%;text-align: center;
  padding: 8px;"
  }
  
</style>


<br><br>
    <!-- ======= Book A Table Section ======= -->
    <section id="book-a-table" class="book-a-table">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Your Messaging</h2>
          <p>Check Your Inbox</p>
        </div>
         <div class="row g-0">
             <div class="col-lg-12 reservation-img" >

        
          
          <hr style="color:white;">
              <div class="row gy-3" style="color:white;">
      <table  >
  <tr  >
  	<th>NO</th>
  	<th>Title</th>
  	<th>Description</th>
  	<th>Time</th>
  	
</tr >

<% int d = 1; %>
  <c:forEach var="i" items="${inbox}">
  <tr>
  <td><%= d++ %></td>
  <td>${i.title}</td>
   <td>${i.description}</td>
  <td>${i.time}</td>
  
  
  </tr>
  </c:forEach>
  </table>
  </div>
  </div>
       </div>
        </div>
	
    </section><!-- End Book A Table Section -->
	<jsp:include page="customer_layout/footer.jsp"/>