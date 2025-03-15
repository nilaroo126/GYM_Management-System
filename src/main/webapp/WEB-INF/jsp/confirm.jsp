<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.java.util.common"%>

<jsp:include page="customer_layout/header.jsp"/>
<br><br>
<<style>
td{
	
	padding-top: 10px;
  padding-bottom: 20px;
  padding-left: 40px;
  padding-right: 40px;
  color:white;
}
table{
	box-sizing: border-box;
	border-spacing:300px;
	border: 2px;
	font-size:20px;
	
	
}
input{
	padding: 5px 10px;
}
label{
	color:#F36100;
	font-size:30px;
}
button{
	margin-left:100px;
	background-color:#F36100;
	color:black;
	 border: none;
  
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;	
  margin-left:200px;
  radius:30%;
}
.pay{
	border:1px ;
}

</style>

	<!-- Start Hero Section -->
	<!-- ======= Book A Table Section ======= -->
	<section id="book-a-table" class="book-a-table">
		<div class="container" data-aos="fade-up">
			<div class="row g-0" style="margin-left:20px;margin-right:20px;">
			<strong style="color:#F36100;font-size:45px;margin-left:500px;letter-spacing:5px;"><B>GYM Class Confirmation</B></strong>
			<div class="col-lg-6 reservation-img" data-aos="zoom-out"
					data-aos-delay="200" style="color: white; font-size: 30px;">

					<c:forEach var="cl" items="${classinfo}">

						<img src="data:image/jpg;base64,${cl.cimage}"
							class="menu-img img-fluid" alt=""
							style="width: 500px; height: 500px; margin-top:30px;">
							
							
					</c:forEach>
				</div>
				<div class="col-lg-6 reservation-img" data-aos="zoom-out"
					data-aos-delay="200" style="color: #7f7f90; font-size: 15px; margin-top:40px;">

					<c:forEach var="cl" items="${classinfo}">
					<table >
					<tr>
					<td>Class Name:</td>
					<td>${cl.classname}</td>
					</tr>
					<tr>
					<td>Price Per Month:</td>
					<td>$ ${cl.classprice}</td>
					</tr>
					<tr>
					<td>Equipments:</td>
					<td>${cl.equipments}</td>
					</tr>
					<tr>
					<td>Left Capacity To Register Now:</td>
					<td>${cl.capacity-ccount}</td>
					</tr>
					<tr>
					<td>Total Equipments:</td>
					<td>${cl.equantity}</td>
					</tr>
					
					<c:if test="${cl.capacity-ccount!=0}">
					<form:form action="${common.url}applyingclass/${classid}" method="post" role="form"
						modelAttribute="registration" class="php-email-form"
						data-aos="fade-up" data-aos-delay="100">
						<form:input path="planid" value="${planid}" hidden="true"/>
						<tr>
					
							
						
							<td class="a"><label>Total Cost:</label></td>
								<td><form:input  type="number" class="form-control" name="paymentamount" path="paymentamount" value="${totalprice}" size="10" disabled="true" style="background-color: #F36100;text-align:center;font-size:20px;"/></td>
							
						</tr>
						<tr>
						<td colspan="2"><label style="font-size:25px;padding-left:50px;letter-spacing:3px;">Select PayMent Method:</label></td>
						</tr>
						
						<tr>
						<td class="pay">
							<c:forEach var="even" items="${even}">
								
									
									 <form:radiobutton  path="pid" value="${even.pid}" required="true" />
                  					<label>${even.pmethod}</label><br>
										
									
								
								 </c:forEach>
								 </td>
								 <td class="pay">
								<c:forEach var="odd" items="${odd}">
								
									
									 <form:radiobutton  path="pid" value="${odd.pid}" required="true" />
                  					<label>${odd.pmethod}</label><br>
										
									
								
								</c:forEach>
								</td>
						</tr> 	
			
								
			
				<div class="text-right">
							<tr>
								<td colspan="2"><button onclick="showAlert();" type="submit">Confirm</button></td>
							</tr>
							</div>
							 <script>
			function showAlert() {
    				alert("Are You Sure to Register it!");
					}
			</script>
						
					
					</td>
					</tr>
					</form:form>
					</c:if>
					</table>
			
					<c:if test="${cl.capacity-ccount==0 }">
					<span style="color:red;font-size:20px;letter-spacing:2px;"><B>Cannot Register this plan Now!! Full Of This Plan!!</B></span>
					</c:if>
					</c:forEach>
				</div>
			
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