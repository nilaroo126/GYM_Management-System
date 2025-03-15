<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.java.util.common" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<jsp:include page="../layout/header.jsp"/>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Plan</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="dashboard">Home</a></li>
          <li class="breadcrumb-item active">Plan</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    
	 <div class="col-lg-12" >

          <div class="card" >
            <div class="card-body" >
              <h5 class="card-title" >Plan Details</h5>
              
              <!-- This is form in Jsp to Show Trainer Details -->
              
              
              
             
    <section class="section">
      

          <div class="card" style="font-size:20px;">
            <div class="card-body" >
              

              <!-- Multi Columns Form -->
              <form:form style="color:black;" class="row g-3" method="post" modelAttribute ="nplan" action="/GYM_Management/editingplan" >
                  <c:forEach var="cl"  items="${classinfo}" >
                  
                 
                 <div class="col-md-6">	
                   <label for="inputName5" class="form-label">PlanNo</label>
                  <form:input type="number" class="form-control" id="inputName5"  path="planid" value="${cl.planid}" style="font-size:15px; font-weight:900;"/>
                </div>
                <div class="col-md-6">
                   <label for="inputName5" class="form-label">PlanMonths</label>
                  <form:input type="number" class="form-control" id="inputName5"  path="planmonth" value="${cl.planmonth}" style="font-size:15px; font-weight:900;" />
                </div>
                 <div class="col-md-6">
                  <label for="inputName5" class="form-label">StartTime</label>
                  <form:input type="time" class="form-control" id="inputName5"  path="starttime" value="${cl.starttime}" style="font-size:15px; font-weight:900;"/>
                </div>
                
                
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">Trainer Name</label>
                <form:select path="tid" required="true" class="form-control" style="font-size:15px; font-weight:900;">
									<c:forEach var="tinfo" items="${tinfo}">
									
										<form:option value="${tinfo.id}">${tinfo.name}</form:option>
									</c:forEach>
								</form:select>
				
                  
                </div>
               
               <div class="col-md-6">
                 <label for="inputName5" class="form-label">EndTime</label>
                  <form:input type="time" class="form-control" id="inputName5"  path="endtime" value="${cl.endtime}" style="font-size:15px; font-weight:900;"/>
                </div>
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">ClassName</label>
                 
                  <form:select path="classid" required="true" class="form-control" style="font-size:15px; font-weight:900;">
									<c:forEach var="clsinfo" items="${clsinfo}">
									
										<form:option value="${clsinfo.classid}">${clsinfo.classname}</form:option>
									</c:forEach>
								</form:select>
                </div>
                
                
        		<div class="text-center" class="col-md-6">
                  <button type="submit" class="btn btn-primary" style="padding:10px;font-size:15px;">Save</button>
                  <button type="reset" class="btn btn-secondary" style="padding:10px;font-size:15px;">Cancel</button>
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


 