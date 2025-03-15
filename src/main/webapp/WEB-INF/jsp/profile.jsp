<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page import="com.java.util.common" %>
    
    <%@ page import="java.io.UnsupportedEncodingException" %>
    <%@ page import="java.util.Base64" %>
	<jsp:include page="customer_layout/header.jsp"/>


  <!-- ======= Hero Section ======= -->
  <section  class="hero d-flex align-items-center section-bg" >
   <c:forEach var="customer" items="${customerinfo}">
  <div class="col-lg-6 reservation-img" >
   
   <div style="display: flex; justify-content: center; align-items: center;">
   	<c:if test="${customer.image == null}"	 >
   	<img id="previewImage" alt="Image Preview"
									src="${common.url}/assets/gym-img/user NULL.png" 
									style=" width: 500px; height: 500px; border: 5px solid #000000; border-radius: 50%" /></c:if>
									
			<c:if test="${customer.image != null}">
			<img id="previewImage" alt="Image Preview"
									src="data:image/jpg;base64,${customer.image}" 
									style=" width: 500px; height: 500px; border: 5px solid #000000; border-radius: 50%" /></c:if>
							</div>
							
							
							<div class="nice-form-group" style="display: flex; justify-content: center; align-items: center;color:red; flex: 1;">
							
							<form:form action="saveCustomerimage" method="post"  modelAttribute="customer" enctype="multipart/form-data">			
								<input type="file" accept="image/*" id="imageInput" name="mimage"/>
								<button class="btn btn-outline-success" type="submit">Save</button>
								
							</form:form>
								
							</div>
							<script>
								//Get references to the input field and the preview image element
								const imageInput = document
										.getElementById('imageInput');
								const previewImage = document
										.getElementById('previewImage');

								// Add an event listener to the input field for when a file is selected
								imageInput
										.addEventListener(
												'change',
												function(event) {
													// Check if any files are selected
													if (event.target.files
															&& event.target.files[0]) {
														// Create a FileReader object to read the selected file
														const reader = new FileReader();

														// Set up the onload event handler to display the preview image
														reader.onload = function(
																event) {
															previewImage.src = event.target.result;
															previewImage.style.display = 'block';
														};

														// Read the selected file as a data URL
														reader
																.readAsDataURL(event.target.files[0]);
													}
												});
							</script>
						<a  href="editprofile/${customer.cid}"><button style="margin-top:-5px; float: right;" type="button" class="btn btn-outline-success">Edit</button></a>
							 	
</div>
   
   
	<div class="col-lg-6 d-flex align-items-center reservation-form-bg" style="color:white;font-size:30px;">
         
    Name:   ${customer.cname}<br><br>
     Email: ${customer.cemail}<br><br>
    Gender: ${customer.cgender}<br><br>
     Phone: ${customer.cphone}<br><br>
  
   

  
   </div>
</c:forEach>
  </section><!-- End Hero Section -->

  
  
<jsp:include page="customer_layout/footer.jsp"/>