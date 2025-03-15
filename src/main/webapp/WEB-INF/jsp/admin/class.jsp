<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.java.util.common" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<head>
<link rel="stylesheet" href="/GYM_Management/search_assets/css/lib/datatable/dataTables.bootstrap.min.css">
</head>
<jsp:include page="../layout/header.jsp"/>

  

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Page Of Classes</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="dashboard">Home</a></li>
          <li class="breadcrumb-item active">ClassPage</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    
	 <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
            <h5 class="card-title">Class Data Table</h5>
             <!-- <a href="addClass"><button type="button" class="btn btn-outline-primary" style="margin-left:900px;margin-top:10px;">Add New Classes</button></a> -->
             <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="margin-left:900px;margin-top:10px;">Add Classes</button>
              
  <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Add New Class</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
         <div style="display: flex; justify-content: center; align-items: center;">
   
		
			<img id="previewImage" alt="Image Preview"
									src="data:image/jpg;base64" 
									style=" width: 300px; height: 300px; border: 5px solid #000000; border-radius: 50%" />
							</div>
              
              <form:form style="color:black;" class="row g-3" method="post" modelAttribute ="classes" action="saveClass" enctype="multipart/form-data">
                  
                  <div class="col-md-12" >
							 
								
								<input type="file" accept="image/*" class=" form-control " id="imageInput" name="climage"/>
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
                 <label for="inputName5" class="form-label">Class Name</label>
                  <form:input type="text" name="name" path="classname" class="form-control" id="inputName5"  />
                </div>
                 <div class="col-md-6">
                 <label for="inputName5" class="form-label">ClassPrice</label>
                  <form:input type="number" name="email" path="classprice" class="form-control" id="inputName5"  />
                </div>
                <div class="col-md-6">
                 <label for="inputName5" class="form-label">ClassTips</label>
                  <form:input type="text" name="phone" path="classdesc" class="form-control" id="inputName5"  />
                </div>
                <div class="col-md-6">
                 <label for="inputName5" class="form-label">Capacity</label>
                  <form:input type="number" name="phone" path="capacity" class="form-control" id="inputName5"  />
                </div>
                <div class="col-md-6">
                 <label for="inputName5" class="form-label">Need Equipments</label>
                  <form:input type="text" name="phone" path="equipments" class="form-control" id="inputName5"  />
                </div>
                <div class="col-md-6">
                 <label for="inputName5" class="form-label">Equipments Quantity</label>
                  <form:input type="number" name="phone" path="equantity" class="form-control" id="inputName5"  />
                </div>
                
                
      			<div class="text-center" class="col-md-6">
                  <button type="submit" class="btn btn-primary">Save</button>
                  <button type="reset" class="btn btn-secondary">Cancel</button>
                </div>
                
              </form:form>
              <!-- End Multi Columns Form -->
				</div>
      </div>
    
    </div>
  </div>

              <!-- Table with stripped rows -->
              <table id="bootstrap-data-table" class="table table-striped table-bordered"  style="text-align:center;padding-top:10px;">
                <thead >
                  <tr >
                  
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Price For One Month</th>
                    <th scope="col">Capacity</th>
                    <th scope="col">Equipments</th>
                  	<th scope="col">Equipments Quantity</th>
                    <th scope="col">Photo</th>
                    <th scope="col">Action</th>
                    
                  </tr>
 					</thead>
                <hr>
                <tbody>
                <% int d = 1; %>
                <c:forEach var="c" items="${infoclass}">
                  <tr>
                    <th scope="row" style="padding-top:30px;"><%= d++ %></th>
                    <td style="padding-top:30px;">${c.classname}</td>
                    <td style="padding-top:30px;">${c.classprice}</td>
                    <td style="padding-top:30px;">${c.capacity}</td>
                    <td style="padding-top:30px;">${c.equipments}</td>
                    <td style="padding-top:30px;">${c.equantity}</td>
                    
                     <td> <img src="data:image/jpg;base64,${c.cimage}" style="height:100px; width:100px;" alt=""></td>
                          <td style="font-size:18px; padding-top:30px; width:130px;">
                         <a href="viewclassdetails/${c.classid}"> <i class="fa fa-eye" aria-hidden="true" ></i></a>&nbsp;
                         <a href="editclass/${c.classid}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>&nbsp;
                        
                         <button type="button" style="color:blue;font-size: 20px; margin: 4px 2px;padding-top:3px;" class="btn btn-default" data-bs-toggle="modal" data-bs-target="#deleteclass_${c.classid}">
 							<i class="fa fa-trash" aria-hidden="true" ></i>
						</button>
                          </td>
                    
                  </tr>
                  </c:forEach>
                 
                </tbody>
              </table>
              </div>
              </div>
              </div>
              
         <c:forEach var="c" items="${infoclass}">
     <div class="modal fade" id="deleteclass_${c.classid}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
        <a href="deleteclass/${c.classid}"> <button type="button" class="btn btn-primary">Delete</button></a>
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

 

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="fa fa-arrow-up" aria-hidden="true"></i></a>
	<jsp:include page="../layout/footer.jsp"/>