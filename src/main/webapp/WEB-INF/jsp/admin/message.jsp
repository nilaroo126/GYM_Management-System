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
      <h1>Message Page</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="dashboard">Home</a></li>
          <li class="breadcrumb-item active">MessagePage</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    
	 <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Messaging Table</h5>

              <!-- Table with stripped rows -->
              <table id="bootstrap-data-table" class="table table-striped table-bordered"  style="text-align:center;padding-top:10px;">
                <thead>
                  <tr>
                  
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
              		<th scope="col">Message</th>
              		<th scope="col">UserID</th>
              		<th scope="col">Action By Admin</th>
                  </tr>
                </thead>
                <hr>
                <tbody>
                <% int d = 1; %>
                <c:forEach var="i" items="${inquery}">
                  <tr>
                    <th scope="row" style="padding-top:30px;"><%= d++ %></th>
                    <td style="padding-top:20px;">${i.mname}</td>
                    <td style="padding-top:20px;">${i.memail}</td>
                    <td style="padding-top:20px;">${i.message}</td>
                    <td style="padding-top:20px;">${i.cid}</td>
                    <td style="padding-top:20px;">
                    <button type="button" style="font-size: 15px; margin: 4px 2px;padding-top:3px;" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#reply_${i.cid}" >
             		<i class="fa fa-reply" aria-hidden="true"></i></button>
                    <button type="button" style="color:blue;font-size: 15px;margin: 4px 2px;padding-top:3px;" class="btn btn-default" data-bs-toggle="modal" data-bs-target="#deletemessage_${i.inid}">
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
           <c:forEach var="i" items="${inquery}">
     <div class="modal fade" id="deletemessage_${i.inid}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  	<div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel" style="margin-left:100px;"></h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Are You Sure Want To delete??
      </div>
      <div class="modal-footer" >
        <button style="margin-left:10px;" type="button" class="btn btn-secondary" data-bs-dismiss="modal">cancel</button>
        <a href="deletemessage/${i.inid}"> <button type="button" class="btn btn-primary">Delete</button></a>
      </div>
    </div>
  </div>
</div>
              
     </c:forEach> 
     
     <c:forEach var="i" items="${inquery}">
     <div class="modal fade" id="reply_${i.cid}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
      
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Giving Suggestion/${i.cid}</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form:form style="color:black;" class="row g-3" method="post" modelAttribute ="message" action="reply/${i.cid}" >
                  
                 
                 <div class="col-md-6">
                 <label for="inputName5" class="form-label">Title</label>
                  <form:input type="text" name="name" path="title" class="form-control" id="inputName5"  />
                </div>
                 
                <div class="col-md-6">
                 <label for="inputName5" class="form-label">Description</label>
                  <form:input type="text" name="phone" path="description" class="form-control" id="inputName5"  />
                </div>
               
      			<div class="text-center" class="col-md-6">
                  <button type="submit" class="btn btn-primary">Send</button>
                  <button type="reset" class="btn btn-secondary">Cancel</button>
                </div>
                
              </form:form><!-- End Multi Columns Form -->
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