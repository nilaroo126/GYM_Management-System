<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.java.util.common" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<%@ page import="java.text.ParseException" %>
<jsp:include page="../layout/header.jsp"/>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1 >Plan Page</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="dashboard">Home</a></li>
          <li class="breadcrumb-item active" >Plan</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    
   
    
 
    <div class="container-fluid" >
  
  <div class="row" style="height:700%;">
	 <div class="col-lg-12">

          <div class="card" >
            <div class="card-body" style="height:700%;padding:50px;margin-left:5px;margin-right:30px;font-size:18px;font-weight:900;">
              <h5 class="card-title" style=" text-align: center;font-weight:900;font-size:20px; letter-spacing: 8px;color:Tomato;">Plan Details</h5>
                 
               <% int d = 1; %>
                <c:forEach var="cl"  items="${clinfo}">
               
              
                <div class="row" style="margin-left:100px;clear:both;">
                <c:set var="starttime" value="${cl.starttime}" />
				<c:set var="endtime" value="${cl.endtime}" />
                
               
                <div class="col-md-6">
       			<label for="inputName5" class="form-label">No</label>
                  <span class="form-control" ><%= d++ %></span>
                </div>
                
                  <div class="col-md-6">
                  <label for="inputName5" class="form-label">PlanMonths:</label>
                  <span class="form-control">${cl.planmonth}_Months</span>
                </div>
                
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">Class:</label>
                  <span class="form-control">${cl.classname}</span>
                </div>
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">Trainer:</label>
                  <span class="form-control">${cl.tname}</span>
                </div>
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">StartTime:</label>
                  <span class="form-control"><%
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
                             	%></span>
                </div>
                
                <div class="col-md-6">
                  <label for="inputName5" class="form-label">EndTime:</label>
                  <span class="form-control"><%
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
                             	%></span>
                </div >
                <div class="col-md-6">
                <label for="inputName5" class="form-label"></label>
                  <span ></span>
                </div>
                <div class="col-md-6">
                <label for="inputName5" class="form-label"></label>
                  <span ></span>
                </div>
                <div class="col-md-6">
                <label for="inputName5" class="form-label"></label>
                  <span ></span>
                </div>
                <div class="col-md-6">
                <label for="inputName5" class="form-label"></label>
                  <span ></span>
                </div>
                <div class="col-md-6">
                <label for="inputName5" class="form-label"></label>
                  <span ></span>
                </div>
                <div class="col-md-6">
                <label for="inputName5" class="form-label"></label>
                  <span ></span>
                </div>
                <div class="col-md-6">
                <label for="inputName5" class="form-label"></label>
                  <span ></span>
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