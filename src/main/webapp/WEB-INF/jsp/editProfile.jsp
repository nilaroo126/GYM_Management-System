<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page import="com.java.util.common" %>
    
    <%@ page import="java.io.UnsupportedEncodingException" %>
    <%@ page import="java.util.Base64" %>
	<jsp:include page="customer_layout/header.jsp"/>


  <!-- ======= Hero Section ======= -->
  <section  class="hero d-flex align-items-center section-bg"  >
   
  <div class="col-lg-8 reservation-img" style="margin-left:200px;">
  <H2 style="margin-left:500px;color:#CE1212;">Edit Your Profile</H2>
   
   <form:form method="post" modelAttribute ="newprofile" action="/GYM_Management/profilesave"  role="form" class="php-email-form p-3 p-md-4">
   <c:forEach var="customer" items="${profileinfo}">
   
   <div class="row">
            <div class="col-xl-6 form-group" style="float:right;">
              
		<form:input path="cid" value="${cid}" hidden="true"/>
          
			<img id="previewImage" alt="Image Preview"
									src="data:image/jpg;base64,${customer.image}" 
									style=" width: 400px; height: 400px; border: 5px solid #000000; border-radius: 50%" /><br>
							
							
</div>
</div>

            <div class="col-xl-6 form-group" style="float:right;margin-top:-330px;">
              <form:input type="text"  class="form-control" id="name"  path="cname" value="${customer.cname}" /><br>
            
              <form:input type="email" class="form-control"  id="email" path="cemail" value="${customer.cemail}"/><br>
              
              <form:input type="phone" class="form-control"  id="phone" path="cphone" value="${customer.cphone}"/><br>
              <!-- <form:radiobutton  path="cgender" value="male" required="true" />
                  <label style="color:white;">Male</label><br>
                  <form:radiobutton path="cgender" value="female" required="true"/>
                  <label style="color:white;">Female</label>--> 
            </div>
            
             
   
   
	
    
    <div style="margin-left:500px;">
    <button type="submit" class="btn btn-primary">Save</button>
  <button type="reset" class="btn btn-secondary">Cancel</button></div>
  </c:forEach>
    </form:form>
</div>

  </section><!-- End Hero Section -->

  
  
<jsp:include page="customer_layout/footer.jsp"/>



