<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.java.util.common" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<jsp:include page="../layout/header.jsp"/>

  <main id="main" class="main">

    <div class="pagetitle" style="color:red;margin-top:50px;margin-left:100px;">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="dashboard">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <div style="margin-left:800px;">
    <a href="photo"><button type="button" style=" padding:15px;" class="btn btn-secondary btn-lg">Gallery Show</button></a>&nbsp;&nbsp;&nbsp;
    <a href="message"><button type="button" style="padding:15px;" class="btn btn-secondary btn-lg">  Message  </button></a>
    </div>

    <section class="section dashboard" style="color:red; margin-top:80px;">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-12">
          <div class="row">

            <!-- Sales Card -->
            <div class="col-lg-4 col-md-6" style="margin-left:150px;">
              <div class="card info-card sales-card">

            

                <a href="plan"><div class="card-body">
                  <h5 class="card-title">Plan</h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                     <i class="fa fa-user" aria-hidden="true"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${pcount}</h6>
                   

                    </div>
                  </div>
                </div></a>

              </div>
            </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <div class="col-lg-4 col-md-6" style="margin-left:150px;">
              <div class="card info-card revenue-card">

               

                <a href="member"><div class="card-body">
                  <h5 class="card-title">Members</h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                     <i class="fa fa-user" aria-hidden="true"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${membercount}</h6>
                      

                    </div>
                  </div>
                </div></a>

              </div>
            </div><br><br>
            

            <!-- Customers Card -->
            <div class="col-lg-4" style="margin-left:150px;margin-top:50px;">

              <div class="card info-card customers-card">

       

               <a href="class"><div class="card-body">
                  <h5 class="card-title">Classes</h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="fa fa-snowflake-o" aria-hidden="true"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${classcount}</h6>
                     

                    </div>
                  </div>

                </div></a>
                
                
              </div>

            </div><!-- End Customers Card -->
             <div class="col-lg-4" style="margin-left:150px; margin-top:50px;">

              <div class="card info-card customers-card">

                <a href="trainer"><div class="card-body">
                  <h5 class="card-title">Trainers</h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="fa fa-user" aria-hidden="true"></i>
                    </div>
                    <div class="ps-3">
                    
                      <h6>${trainercount}</h6>
                     

                    </div>
                  </div>

                </div></a>
                
                
              </div>

            </div>
            </div>
            </div>
            </div>
            </section>
	 
              <!-- End Table with stripped rows -->
	
        
</main>


<jsp:include page="../layout/footer.jsp"/>