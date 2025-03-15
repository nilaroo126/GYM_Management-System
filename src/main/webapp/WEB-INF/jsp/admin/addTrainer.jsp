<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.java.util.common" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 


<jsp:include page="../layout/header.jsp"/>


  <main id="main" class="main">

    <div class="pagetitle">
      <h1>TrainerProfile</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="dashboard">Home</a></li>
          <li class="breadcrumb-item active">TrainerProfile</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    
	 <div class="col-lg-12">

          
              
              
              <!-- This is form in Jsp to Show Trainer Details -->
              
              
              
             
    <section class="section" style="padding:10px;">
      

          <div class="card">
            <div class="card-body" style="margin-left:300px;">
              

              <!-- Multi Columns Form -->
               <div class="col-lg-6 reservation-img" >
              <div style="display: flex; justify-content: center; align-items: center;">
   
		
			<img id="previewImage" alt="Preview"
									src="data:image/jpg;base64" 
									style=" width: 300px; height: 300px; border: 5px solid #000000; border-radius: 50%" />
							</div>
              
              <form:form style="color:black;" class="row g-3" method="post" modelAttribute ="trainer" action="saveTrainer" enctype="multipart/form-data">
                  
                  <div class="col-md-12" >
							 
								
								<input type="file" accept="image/*" class=" form-control " id="imageInput" name="timage"/>
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
                 <label for="inputName5" class="form-label">Trainer Name</label>
                  <form:input type="text" name="name" path="name" class="form-control" id="inputName5"  />
                </div>
                 <div class="col-md-6">
                 <label for="inputName5" class="form-label">Trainer Email</label>
                  <form:input type="email" name="email" path="email" class="form-control" id="inputName5"  />
                </div>
                <div class="col-md-6">
                 <label for="inputName5" class="form-label">Trainer Phone</label>
                  <form:input type="phone" name="phone" path="phone" class="form-control" id="inputName5"  />
                </div>
                <div class="col-md-6">
                 <label for="inputName5" class="form-label">Trainer Age</label>
                  <form:input type="date" name="phone" path="age" class="form-control" id="inputName5"  />
                </div>
                <div class="col-md-6">
                 <label for="inputName5" class="form-label">Trainer Weight</label>
                  <form:input type="text" name="phone" path="weight" class="form-control" id="inputName5"  />
                </div>
                <div class="col-md-6">
                 <label for="inputName5" class="form-label">Trainer Height</label>
                  <form:input type="text" name="phone" path="height" class="form-control" id="inputName5"  />
                </div>
                
                 <div class="col-md-6">
                 <label for="inputName5" class="form-label">Gender</label><br>
                  <form:radiobutton  path="gender" value="male" required="true" />
                  <label>Male</label><br>
                  <form:radiobutton path="gender" value="female" required="true"/>
                  <label>Female</label>
                </div>
                <div class="col-md-6">
                 <label for="inputName5" class="form-label">Trainer Experience</label>
                  <form:input type="text" name="phone" path="experience" class="form-control" id="inputName5"  />
                </div>
                <div class="col-md-12">
                 <label for="inputName5" class="form-label">Trainer Description</label>
                  <form:input type="text" name="phone" path="desc" class="form-control" id="inputName5"  />
                </div>
                
      			<div class="text-center" class="col-md-6">
                  <button type="submit" class="btn btn-primary">Save</button>
                  <button type="reset" class="btn btn-secondary">Cancel</button>
                </div>
                <br> <br>
                
              </form:form><!-- End Multi Columns Form -->
				</div>
            </div>
          

        

       

         
           </div>  

           

        
    </section>

  <!-- show trainer detials End #main -->
              
              
              
              
              
              
              
              
              
              

              <!-- Table with Trainer Details -->
              
              
              
              
              </div>
             
              <!-- End Table with stripped rows -->
	
          
</main>

 
<jsp:include page="../layout/footer.jsp"/>