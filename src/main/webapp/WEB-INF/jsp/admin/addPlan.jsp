<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.java.util.common" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 


<jsp:include page="../layout/header.jsp"/>


  <main id="main" class="main">

    <div class="pagetitle">
      <h1>NewPlan</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="dashboard">Home</a></li>
          <li class="breadcrumb-item active">Plan</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
	 <div class="col-lg-12">

    <section class="section">
      

          <div class="card">
            <div class="card-body">
              

              <!-- Multi Columns Form -->
               <div class="col-lg-6 reservation-img" >
              <form:form style="color:black;" class="row g-3" method="post" modelAttribute ="plan" action="savePlan" >
                  
                 
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

    </section>

              </div>  
</main>

 
<jsp:include page="../layout/footer.jsp"/>