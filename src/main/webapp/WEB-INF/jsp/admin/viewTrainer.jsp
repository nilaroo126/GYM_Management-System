<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.java.util.common" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 


<jsp:include page="../layout/header.jsp"/>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Trainer Page</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="dashboard">Home</a></li>
          <li class="breadcrumb-item active">TrainerPage</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
	<div class="container-fluid">
  
  <div class="row">
	 <div class="col-lg-12">

          <div class="card">
            <div class="card-body" style="padding:50px;">
              <h5 class="card-title" style=" text-align: left; letter-spacing: 5px;color:#F36100;">Trainer Data Table</h5>
              
            		 <% int d = 1; %>
                  
           
                 <c:forEach var="tr"  items="${trainer}">  
                 <div class="row">
                  <div class="col-md-12" >
                     <img id="previewImage" alt="Image Preview"
														src="data:image/jpg;base64,${tr.image}" 
									style=" width: 500px; height: 500px;margin-left:300px; border: 5px solid #000000; " />
								
								
                </div>
               
                  <div class="col-md-6">
                  <label for="inputName5" class="form-label">No:</label>
                  <span class="form-control"><%= d++ %></span>
                </div>
                
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">Name:</label>
                  <span class="form-control">${tr.name}</span>
                </div>
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">Email:</label>
                  <span class="form-control" >${tr.email}</span>
                </div>
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">Phone:</label>
                  <span class="form-control">${tr.phone}</span>
                </div>
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">Age:</label>
                  <span class="form-control">${tr.age}</span>
                </div>
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">Weight:</label>
                  <span class="form-control">${tr.weight}</span>
                </div>
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">Height:</label>
                  <span class="form-control">${tr.height}</span>
                </div>
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">Gender:</label>
                  <span class="form-control">${tr.gender}</span>
                </div>
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">Experience:</label>
                  <span class="form-control">${tr.experience}</span>
                </div>
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">Description:</label>
                  <span class="form-control">${tr.desc}</span>
                </div>
                </div>
                 </c:forEach>
                
               </div>
               </div>
             
  
              
              
              

              <!-- Table with stripped rows -->
              
              </div>
              
              </div>
              </div>
             
              <!-- End Table with stripped rows -->
	
          
</main>

 <jsp:include page="../layout/footer.jsp"/>