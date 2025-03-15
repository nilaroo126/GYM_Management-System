<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.java.util.common" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<jsp:include page="../layout/header.jsp"/>
<style>
table,tr,td,th{
	style="border:2px solid black;border-collapse: collapse;
  width: 100%;text-align: center;
  padding: 10px;

 
  }
 
</style>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Member Page</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="dashboard">Home</a></li>
          <li class="breadcrumb-item active">MemberPage</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    
   
    
 
    <div class="container-fluid" >
  
  <div class="row">
	 <div class="col-lg-12" >

          <div class="card">
            <div class="card-body" >
              <h5  class="card-title" >Member Registration History</h5>
                 
               <% int d = 1; %>
              
               
              
                <div class="row">
               
                <table style="width:99%" >
  <tr style="background-color:#c9c5c6;">
  	<th>No</th>
  	<th>ClassName</th>
  	<th>PaymentMethod</th>
  	<th>TrainerName</th>
  	<th>ClassPrice</th>
  	<th>Register Date</th>
  	<th>Expired Date</th>
  	<th>Total Payment</th>
</tr>
<hr>
  <c:forEach var="m" items="${member}">
  <tr>
  <td><%= d++ %></td>
  <td>${m.classname}</td>
   <td>${m.pmethod}</td>
  <td>${m.tname}</td>
  <td>${m.classprice}</td>
 <td>${m.registerdate}</td>
  <td>${m.expireddate}</td>
  <td>${m.paymentamount}</td>
  
  </tr>
  </c:forEach>
  </table>
               
              
              
              </div> 
       		 </div>
              </div>
              </div>
              </div>
              <!-- End Table with stripped rows -->
	
          
</main>

 
<jsp:include page="../layout/footer.jsp"/>