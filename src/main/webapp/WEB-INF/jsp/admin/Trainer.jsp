<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.java.util.common" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<head>
<link rel="stylesheet" href="/GYM_Management/search_assets/css/lib/datatable/dataTables.bootstrap.min.css">
</head>
<jsp:include page="../layout/header.jsp"/>
<style>
table,td{
text-align:center;
margin-top:50px;

}
tr,td{
 padding-top: 50px;
  padding-bottom: 20px;
  padding-left: 20px;
  padding-right: 20px;
}
.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

.switch input { 
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}



input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}


</style>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Trainer Page</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="dashboard">Home</a></li>
          <li class="breadcrumb-item active"><p>Trainer Data Tables</p></li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    
	 <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
             <h5 class="card-title">Trainer Data Table</h5>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="margin-left:900px;margin-top:10px;">Add Trainer</button>
              <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Add New Trainer</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
         <div style="display: flex; justify-content: center; align-items: center;">
   
		
			<img id="previewImage" alt="Preview"
									src="data:image/jpg;base64" 
									style=" width: 300px; height: 300px; border: 5px solid #000000; border-radius: 50%" />
							</div>
              
              <form:form style="color:black;" class="row g-3" method="post" modelAttribute ="newtrainer" action="saveTrainer" enctype="multipart/form-data">
                  
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
                  <form:input type="number" name="phone" path="age" class="form-control" id="inputName5"  />
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
                
              </form:form>
              <!-- End Multi Columns Form -->
				</div>
      </div>
    
    </div>
  </div>
              
              
				<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  
  </div>
              
              
              
              
              
              
              
              
              
              <!-- Table with stripped rows -->
              <table id="bootstrap-data-table" class="table table-striped table-bordered" style="margin-top:30px;">
                <thead >
                  <tr>
                  
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Phone</th>
                  	<th scope="col">Photo</th>
                    <th scope="col">Action</th>
                    <th scope="col">Status</th>
                  </tr>
                </thead>
                <hr>
                <tbody>
                <% int d = 1; %>
                <c:forEach var="tr" items="${trainer}">
                  <tr>
                    <th scope="row"><%= d++ %></th>
                    <td>${tr.name}</td>
                    <td>${tr.email}</td>
                    <td>${tr.phone}</td>
                    
                     <td> <img src="data:image/jpg;base64,${tr.image}" style="height:100px; width:100px;" alt=""></td>
                          <td style="font-size:20px;">
                         <a href="viewTrainer/${tr.id}"> <i class="fa fa-eye" aria-hidden="true" ></i></a>&nbsp;
                         <a href="editTrainer/${tr.id}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>&nbsp;
                         
                         <button type="button" style="color:blue;font-size: 20px; margin: 4px 2px;padding-top:3px;" class="btn btn-default" data-bs-toggle="modal" data-bs-target="#deletetrainer_${tr.id}">
 							<i class="fa fa-trash" aria-hidden="true" ></i>
						</button>
                          </td>
                    <td style="font-size:10px; padding:15px;">
				<c:if test="${tr.status==1}"><a href="off/${tr.id}">	 
				<span style="background-color:green;border-radius:50%;width:50px;height:50px;padding:8px;margin-bottom:7px;color:yellow;">on</span>
				 </a></c:if>

			<c:if test="${tr.status != 1}"><a href="on/${tr.id}">
  			
 			<span style="background-color:red;border-radius:50%;width:50px;height:50px;padding:8px;">off</span>
 </a></c:if>
</td>
                  </tr> <tr></tr>
                  </c:forEach>
                 
                </tbody>
              </table>
              </div>
              </div>
              </div>
              <c:forEach var="tr" items="${trainer}">
     <div class="modal fade" id="deletetrainer_${tr.id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  	<div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel" style="margin-left:100px;"></h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style="margin-left:100px;font-weight:900;">
        Are You Sure Want To delete??
      </div>
      <div class="modal-footer" >
        <button style="margin-left:10px;" type="button" class="btn btn-secondary" data-bs-dismiss="modal">cancel</button>
        <a href="deletetrainer/${tr.id}"> <button type="button" class="btn btn-primary">Delete</button></a>
      </div>
    </div>
  </div>
</div>
              
     </c:forEach>
              
              <!-- End Table with stripped rows -->
	<script src="/GYM_Management/search_assets/js/main.js"></script>
    
    <script src="/GYM_Management/search_assets/js/lib/data-table/datatables.min.js"></script>
    <script src="/GYM_Management/search_assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
    <script src="/GYM_Management/search_assets/js/lib/data-table/dataTables.buttons.min.js"></script>
    <script src="/GYM_Management/search_assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
    <script src="/GYM_Management/search_assets/js/lib/data-table/jszip.min.js"></script>
    <script src="/GYM_Management/search_assets/js/lib/data-table/vfs_fonts.js"></script>
    <script src="/GYM_Management/search_assets/js/lib/data-table/buttons.html5.min.js"></script>
    <script src="/GYM_Management/search_assets/js/lib/data-table/buttons.print.min.js"></script>
    <script src="/GYM_Management/search_assets/js/lib/data-table/buttons.colVis.min.js"></script>
    <script src="/GYM_Management/search_assets/js/init/datatables-init.js"></script>


    <script type="text/javascript">
        $(document).ready(function() {
          $('#bootstrap-data-table-export').DataTable();
      } );
  </script>
          
</main>

 
<jsp:include page="../layout/footer.jsp"/>