<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.java.util.common" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
 <%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<%@ page import="java.text.ParseException" %>
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
          <li class="breadcrumb-item active">Plan</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    
	 <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
             <h5 class="card-title" ">Plan Data Table</h5>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="margin-left:900px;">Add Plan</button>
             <!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
      
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Add New Plan</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form:form style="color:black;" class="row g-3" method="post" modelAttribute ="newplan" action="savePlan" >
                  
                 
                 <div class="col-md-6">
                 <label for="inputName5" class="form-label">PlanMonths</label>
                  <form:input type="number" name="name" path="planmonth" class="form-control" id="inputName5"  />
                </div>
                 <div class="col-md-6">
                 <label for="inputName5" class="form-label">ClassName</label>
                  <form:select path="classid" required="true" class="form-control" style="font-size:15px; font-weight:900;">
									<c:forEach var="clsinfo" items="${classinfo}">
									
										<form:option value="${clsinfo.classid}">${clsinfo.classname}</form:option>
									</c:forEach>
								</form:select>
                </div>
                <div class="col-md-6">
                 <label for="inputName5" class="form-label">Trainer</label>
                   <form:select path="tid" required="true" class="form-control" style="font-size:15px; font-weight:900;">
									<c:forEach var="tinfo" items="${trinfo}">
									
										<form:option value="${tinfo.id}">${tinfo.name}</form:option>
									</c:forEach>
								</form:select>
                </div>
                <div class="col-md-6">
                 <label for="inputName5" class="form-label">StartTime</label>
                  <form:input type="time" name="phone" path="starttime" class="form-control" id="inputName5"  />
                </div>
                <div class="col-md-6">
                 <label for="inputName5" class="form-label">EndTime</label>
                  <form:input type="time" name="phone" path="endtime" class="form-control" id="inputName5"  />
                </div>
                
                
                
      			<div class="text-center" class="col-md-6">
                  <button type="submit" class="btn btn-primary">Save</button>
                  <button type="reset" class="btn btn-secondary">Cancel</button>
                </div>
                
              </form:form><!-- End Multi Columns Form -->
				</div>
      </div>
    
    </div>
  </div>
</div>
             
             
              

              <!-- Table with stripped rows -->
              <table  id="bootstrap-data-table" class="table table-striped table-bordered" style="text-align:center;">
                <thead >
                  <tr>
                  
                    <th scope="col">#</th>
                    <th scope="col">PlanMonths</th>
                    <th scope="col" class="vouncher">Class</th>
                    <th scope="col">Trainer</th>
                    <th scope="col">StartTime</th>
                  	<th scope="col">EndTime</th>
                  	<th scope="col">Action</th>
                  	<th scope="col">Status</th>
                    
                    
                  </tr>
                </thead>
                <hr>
                <tbody>
                <% int d = 1; %>
                <c:forEach var="p" items="${plan}">
                  <tr>
                    <th scope="row" style="padding-top:30px;"><%= d++ %></th>
                    <td style="padding-top:30px;">${p.planmonth}Months</td>
                    <td  style="padding-top:30px;" >${p.classname}</td>
                    <td style="padding-top:30px;">${p.tname}</td>
                    <c:set var="starttime" value="${p.starttime}" />
					<c:set var="endtime" value="${p.endtime}" />
                    <td style="padding-top:30px;"><%
                             	String starttime = pageContext.getAttribute("starttime").toString();

                                // Define the input and output date formats
                                SimpleDateFormat inputFormatstarttime = new SimpleDateFormat("HH:mm:ss");
                                SimpleDateFormat outputFormatstarttime = new SimpleDateFormat("h:mma");

                                try {
                                    // Parse the input time string into a Date object
                                    Date date = inputFormatstarttime.parse(starttime);

                                    // Format the Date object into the desired output format
                                    String formattedstartTime = outputFormatstarttime.format(date);
                             	 %>
                             	 
                             	<%=formattedstartTime %>
                             	
                             	<%
                                } catch (ParseException e) {
                                    e.printStackTrace();
                                }
                             	%></td>
                    
                    <td style="padding-top:30px;"><%
                             	String endtime = pageContext.getAttribute("endtime").toString();

                                // Define the input and output date formats
                                SimpleDateFormat inputFormatendtime = new SimpleDateFormat("HH:mm:ss");
                                SimpleDateFormat outputFormatendtime = new SimpleDateFormat("h:mma");

                                try {
                                    // Parse the input time string into a Date object
                                    Date date = inputFormatendtime.parse(endtime);

                                    // Format the Date object into the desired output format
                                    String formattedendTime = outputFormatendtime.format(date);
                             	 %>
                             	 
                             	<%=formattedendTime %>
                             	
                             	<%
                                } catch (ParseException e) {
                                    e.printStackTrace();
                                }
                             	%></td>
                    
                     <td style="padding-top:30px;font-size: 20px;">
                         <a href="viewplan/${p.planid}"> <i class="fa fa-eye" aria-hidden="true" ></i></a>&nbsp;
                         <a href="editplan/${p.planid}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>&nbsp;
                         
                         <button type="button" style="color:blue;font-size: 20px; margin: 4px 2px;padding-top:3px;" class="btn btn-default" data-bs-toggle="modal" data-bs-target="#deletePlan_${p.planid}">
 							<i class="fa fa-trash" aria-hidden="true" ></i>
						</button>
                          </td>
                          <td><c:if test="${p.planstatus==1}">	 
				<span style="background-color:green;border-radius:50%;width:50px;height:50px;padding:5px;">on</span>
				 </c:if>

			<c:if test="${p.planstatus != 1}">
  			
 			<span style="background-color:red;border-radius:50%;width:50px;height:50px;padding:5px;">off</span>
 </c:if></td>
                    
                  </tr>
                  </c:forEach>
                 
                </tbody>
              </table>
              </div>
              </div>
              </div>
              
              <c:forEach var="p" items="${plan}">
     <div class="modal fade" id="deletePlan_${p.planid}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
        <a href="deletePlan/${p.planid}"> <button type="button" class="btn btn-primary">Delete</button></a>
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