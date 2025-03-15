<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.java.util.common" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<jsp:include page="../layout/header.jsp"/>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1 >Classes Page</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="dashboard">Home</a></li>
          <li class="breadcrumb-item active" >class</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    
   
    
 
    <div class="container-fluid">
  
  <div class="row">
	 <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title" style=" text-align: center; letter-spacing: 8px;color:Tomato;">Class Details</h5>
                 
               <% int d = 1; %>
                <c:forEach var="cl"  items="${clinfo}">
               
              
                <div class="row">
                
                
                <div class="col-md-12" >
                     <img id="previewImage" alt="Image Preview"
														src="data:image/jpg;base64,${cl.cimage}" 
									style=" width: 350px; height: 350px; border: 5px solid #000000; margin-left:300px; " />
								
								
                </div>
                <div class="col-md-6">
       			<label for="inputName5" class="form-label">No</label>
                  <span class="form-control"><%= d++ %></span>
                </div>
                
                  <div class="col-md-6">
                  <label for="inputName5" class="form-label">ClassName:</label>
                  <span class="form-control">${cl.classname}</span>
                </div>
                
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">ClassPrice:</label>
                  <span class="form-control">${cl.classprice}</span>
                </div>
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">ClassCapacity:</label>
                  <span class="form-control">${cl.capacity}</span>
                </div>
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">Class Equipments:</label>
                  <span class="form-control">${cl.equipments}</span>
                </div>
                
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">Items of Equipment:</label>
                  <span class="form-control">${cl.equantity}</span>
                </div>
                
               </div>
              
                  </c:forEach>
              </div> 
       		 </div>
              </div>
              </div>
              </div>
              <!-- End Table with stripped rows -->
	
          
</main>

 
<jsp:include page="../layout/footer.jsp"/>