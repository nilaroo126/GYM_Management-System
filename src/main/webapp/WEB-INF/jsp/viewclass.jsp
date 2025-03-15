

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.java.util.common"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<%@ page import="java.text.ParseException" %>



<jsp:include page="customer_layout/header.jsp"/>



	<!-- Start Hero Section -->
	<!-- ======= Book A Table Section ======= -->
	<section id="book-a-table" class="book-a-table">
		<div class="container" data-aos="fade-up" style="height:100%;">



			<div class="row g-0" style="margin-left:20px; margin-right:20px;">

				<div class="col-lg-6 reservation-img" data-aos="zoom-out"
					data-aos-delay="200" style="color: white; font-size: 20px;">

					<c:forEach var="cl" items="${classinfo}">
						<img src="data:image/jpg;base64,${cl.cimage}"
							class="menu-img img-fluid" alt=""
							style="width: 500px; height: 500px; margin-top:20px; ">
							
					</c:forEach>
				</div>
				
				<div class="col-lg-6 reservation-img" data-aos="zoom-out" data-aos-delay="200" style="color: white; font-size:20px;font-style:italic;margin-top:30px;magin-right:30px;">
					<c:if test="${resultflag==0}">
                  <span style="color:red">${message}</span>
                  </c:if><br><br>
					
					<c:forEach var="cl" items="${classinfo}">

							
							<B style="margin-left:20px;">Class Name:&nbsp;&nbsp; ${cl.classname}</B><br><br>
							<B style="margin-left:20px;">Class Price:&nbsp;&nbsp;${cl.classprice}</B><br><br>
							<B style="margin-left:20px;">Class Description:</B>&nbsp;&nbsp;<p style="margin-left:70px;"> ${cl.classdesc}</p>
							

					</c:forEach>

					<form:form action="${common.url}saveBooking/${classid}" method="post" role="form"
						modelAttribute="registration" class="php-email-form"
						data-aos="fade-up" data-aos-delay="100">

						<form:input path="cid" value="${cid}" hidden="true" />
						<div class="row gy-4">

							
							<div class="col-lg-6 col-md-6">
								<label>You Can Choice Your Plan</label><br><br>
								<form:select path="planid" required="true" >
									<c:forEach var="plan" items="${plan}">
								
										
										<c:set var="starttime" value="${plan.starttime}" />
										<c:set var="endtime" value="${plan.endtime}" />
								
										<form:option value="${plan.planid}">${plan.planmonth}month(s)|${plan.tname}|
										
										<%
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
                             	%>
                             	-
                             	<%
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
                             	%>
                             	</form:option>
										
									</c:forEach>
								</form:select>
							</div>
							
							<a href="${common.url}plan/${classid}"><button type="button" class="btn btn-warning">Choose Plan</button></a>
							
							
							
							
							
							<!--  
							
							<div class="col-lg-8 col-md-6">
								<form:select path="pid" required="true">
									<c:forEach var="pay" items="${pay}">
										<form:option value="${pay.pid}">${pay.pmethod}</form:option>
									</c:forEach>
								</form:select>
							</div>-->

							<!-- 
							<div class="col-lg-8 col-md-6">
								<label>RegisterDate</label>
								<form:input type="date" class="form-control" name="registerdate" value="${today}" disabled="true"
									path="registerdate" placeholder="Your registerdate"
									data-rule="minlen:4" />
								<div class="validate"></div>
							</div>
							 -->
							 <!--  
							<div class="col-lg-8 col-md-6">
								<label>TotalAmount</label>
								<form:input type="number" class="form-control"
									name="paymentamount" path="paymentamount"
									 value="" placeholder="Your paymentamount" data-rule="minlen:4"/>
								<div class="validate"></div>
							</div>-->
							


							<div class="text-right">
								<button type="submit">Submit</button>

							</div>
						</div>
					</form:form>

				</div>
				<!-- End Reservation Form -->


			</div>

		</div>
	</section>


	<script
		src="${common.url}assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${common.url}assets/vendor/aos/aos.js"></script>
	<script src="${common.url}assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script
		src="${common.url}assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="${common.url}assets/vendor/swiper/swiper-bundle.min.js"></script>

	<!-- Template Main JS File -->
	<script src="${common.url}assets/js/main.js"></script>



</body>

</html>