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
/*--------------------------------------------------------------
# Portfolio
--------------------------------------------------------------*/
.portfolio .portfolio-item {
  margin-bottom: 30px;
}

.portfolio #portfolio-flters {
  padding: 0;
  margin: 0 auto 35px auto;
  list-style: none;
  text-align: center;
  background: #fff;
  border-radius: 50px;
  padding: 2px 15px;
}

.portfolio #portfolio-flters li {
  cursor: pointer;
  display: inline-block;
  padding: 10px 15px 8px 15px;
  font-size: 14px;
  font-weight: 600;
  line-height: 1;
  text-transform: uppercase;
  color: #272829;
  margin-bottom: 5px;
  transition: all 0.3s ease-in-out;
}

.portfolio #portfolio-flters li:hover,
.portfolio #portfolio-flters li.filter-active {
  color: #149ddd;
}

.portfolio #portfolio-flters li:last-child {
  margin-right: 0;
}

.portfolio .portfolio-wrap {
  transition: 0.3s;
  position: relative;
  overflow: hidden;
  z-index: 1;
}

.portfolio .portfolio-wrap::before {
  content: "";
  background: rgba(255, 255, 255, 0.5);
  position: absolute;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  transition: all ease-in-out 0.3s;
  z-index: 2;
  opacity: 0;
}

.portfolio .portfolio-wrap .portfolio-links {
  opacity: 1;
  left: 0;
  right: 0;
  bottom: -60px;
  z-index: 3;
  position: absolute;
  transition: all ease-in-out 0.3s;
  display: flex;
  justify-content: center;
}

.portfolio .portfolio-wrap .portfolio-links a {
  color: #fff;
  font-size: 25px;
  text-align: center;
  background: rgba(20, 157, 221, 0.75);
  transition: 0.3s;
  width: 50%;
  
  margin-right:50px;
}
.portfolio .portfolio-wrap .portfolio-links button {
  color: #fff;
  font-size: 25px;
  text-align: center;
  background: rgba(20, 157, 221, 0.75);
  transition: 0.3s;
  width: 50%;
  
  margin-right:50px;
}


.portfolio .portfolio-wrap .portfolio-links a:hover {
  background: rgba(20, 157, 221, 0.95);
}
.portfolio .portfolio-wrap .portfolio-links button:hover {
  background: rgba(20, 157, 221, 0.95);
}

.portfolio .portfolio-wrap .portfolio-links a+a {
  border-left: 1px solid #37b3ed;
}

.portfolio .portfolio-wrap:hover::before {
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  opacity: 1;
}

.portfolio .portfolio-wrap:hover .portfolio-links {
  opacity: 1;
  bottom: 0;
}

/*--------------------------------------------------------------
# Portfolio Details
--------------------------------------------------------------*/
.portfolio-details {
  padding-top: 40px;
}

.portfolio-details .portfolio-details-slider img {
  width: 100%;
}

.portfolio-details .portfolio-details-slider .swiper-pagination {
  margin-top: 20px;
  position: relative;
}

.portfolio-details .portfolio-details-slider .swiper-pagination .swiper-pagination-bullet {
  width: 12px;
  height: 12px;
  background-color: #fff;
  opacity: 1;
  border: 1px solid #149ddd;
}

.portfolio-details .portfolio-details-slider .swiper-pagination .swiper-pagination-bullet-active {
  background-color: #149ddd;
}

.portfolio-details .portfolio-info {
  padding: 30px;
  box-shadow: 0px 0 30px rgba(5, 13, 24, 0.08);
}

.portfolio-details .portfolio-info h3 {
  font-size: 22px;
  font-weight: 700;
  margin-bottom: 20px;
  padding-bottom: 20px;
  border-bottom: 1px solid #eee;
}

.portfolio-details .portfolio-info ul {
  list-style: none;
  padding: 0;
  font-size: 15px;
}

.portfolio-details .portfolio-info ul li+li {
  margin-top: 10px;
}

.portfolio-details .portfolio-description {
  padding-top: 30px;
}

.portfolio-details .portfolio-description h2 {
  font-size: 26px;
  font-weight: 700;
  margin-bottom: 20px;
}

.portfolio-details .portfolio-description p {
  padding: 0;
}

</style>


 <main id="main" class="main">

    <div class="pagetitle">
      <h1>Gallery Home</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="dashboard">Home</a></li>
          <li class="breadcrumb-item active">Gallery</li>
        </ol>
      </nav>
    </div>
 
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="margin-left:900px;font-size:35px;"><i class="fa fa-plus-square" aria-hidden="true"></i></button>
     <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Add New Photo</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
         <div style="display: flex; justify-content: center; align-items: center;">
   
		
			<img id="previewImage" alt="Image Preview"
									src="data:image/jpg;base64" 
									style=" width: 300px; height: 300px; border: 5px solid #000000; border-radius: 50%" />
							</div>
              
              <form:form style="color:black;" class="row g-3" method="post" modelAttribute ="photo" action="savephoto" enctype="multipart/form-data">
                  
                  <div class="col-md-12" >
							 
								
								<input type="file" accept="image/*" class=" form-control " id="imageInput" name="mimage"/>
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
    
    
    
    
    
    <!-- End Page Title -->
	<section id="portfolio" class="portfolio section-bg" style="background-color:white;">
      <div class="container">

        <div class="section-title">
          <h2 style="font-size:35px;margin-top:20px;background-color:#F36100;text-align:center;margin-bottom:20px;width:100%;">Gallery Show</h2>
         </div>

       

        <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="100">
		<c:forEach var="g" items="${gallery}">
          <div class="col-lg-4 col-md-6 portfolio-item ">
            <div class="portfolio-wrap">
              
              <img src="data:image/jpg;base64,${g.image}" style="width:300px;height:300px;border:1px;"  class="img-fluid"  alt="">
              <div class="portfolio-links">
              <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#viewphoto_${g.gid}">
                <i class="fa fa-eye" aria-hidden="true" ></i>
                </button>
                 <button type="button"  class="btn btn-default" data-bs-toggle="modal" data-bs-target="#deletephoto_${g.gid}">
           <i class="fa fa-trash" aria-hidden="true" ></i>  </button>
              </div>
            </div>
          </div>
			</c:forEach>
          
		 </div>

      </div>
    </section>
    <!-- Modal for Add -->
   
              <c:forEach var="g" items="${gallery}">
              <div class="modal fade" id="viewphoto_${g.gid}" tabindex="-1">
                <div class="modal-dialog modal-dialog-centered">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" style="text-align:center;margin-left:180px;">By One Photo</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                    <img src="data:image/jpg;base64,${g.image}"  style="width:450px;height:500px;"   alt="">
                      </div>
                    
                  </div>
                </div>
              </div>
              </c:forEach>
              <!-- Modal for Add -->
              
              <!-- Modal For Delete -->
              <c:forEach var="g" items="${gallery}">
     <div class="modal fade" id="deletephoto_${g.gid}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
        <a href="deletephoto/${g.gid}"> <button type="button" class="btn btn-primary">Delete</button></a>
      </div>
    </div>
  </div>
</div>
              
     </c:forEach>
              
        <!-- Modal For Delete -->      
              
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