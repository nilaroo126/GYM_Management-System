<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.java.util.common" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<jsp:include page="../layout/header.jsp"/>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Class</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="dashboard">Home</a></li>
          <li class="breadcrumb-item active">Class</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    
	 <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Class Details</h5>
              
              <!-- This is form in Jsp to Show Trainer Details -->
              
              
              
             
    <section class="section">
      

          <div class="card">
            <div class="card-body">
              

              <!-- Multi Columns Form -->
              <form:form style="color:black;" class="row g-3" method="post" modelAttribute ="newclass" action="/GYM_Management/editingsave" enctype="multipart/form-data">
                  <c:forEach var="cl"  items="${classinfo}">
                  <div class="col-md-12" style="margin-left:300px;">
                     <img id="previewImage" alt="Image Preview"
									src="data:image/jpg;base64,${cl.cimage}" 
									style=" width: 350px; height: 350px; border: 5px solid #000000; border-radius: 50%" /><br>
								
								<input type="file" accept="image/*" id="imageInput" name="climage"/>
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
                </div>
                 
                 <div class="col-md-6">
                   <label for="inputName5" class="form-label">ClassID</label>
                  <form:input type="text" class="form-control" id="inputName5"  path="classid" value="${cl.classid}" />
                </div>
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">ClassName</label>
                  <form:input type="text" class="form-control" id="inputName5"  path="classname" value="${cl.classname}"/>
                </div>
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">Class Price</label>
                  <form:input type="text" class="form-control" id="inputName5"  path="classprice" value="${cl.classprice}"/>
                </div>
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">Class Capacity</label>
                  <form:input type="text" class="form-control" id="inputName5"  path="capacity" value="${cl.capacity}"/>
                </div>
                <div class="col-md-6">
                 <label for="inputName5" class="form-label">Equipments of This Class</label>
                  <form:input type="text" class="form-control" id="inputName5"  path="equipments" value="${cl.equipments}"/>
                </div>
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">Items of Equipments</label>
                  <form:input type="text" class="form-control" id="inputName5"  path="equantity" value="${cl.equantity}"/>
                </div>
                
                
        		<div class="text-center" class="col-md-6">
                  <button type="submit" class="btn btn-primary">Save</button>
                  <button type="reset" class="btn btn-secondary">Cancel</button>
                </div>
                </c:forEach>
              </form:form><!-- End Multi Columns Form -->
				</div>
            </div>
          </div>

        

       

         
             

           

        
    </section>

  <!-- show trainer detials End #main -->
              
              
              
              
              
              
              
              
              
              

              <!-- Table with Trainer Details -->
              
              
              
              </div>
              </div>
             
              <!-- End Table with stripped rows -->
	
          
</main>


<jsp:include page="../layout/footer.jsp"/>


 