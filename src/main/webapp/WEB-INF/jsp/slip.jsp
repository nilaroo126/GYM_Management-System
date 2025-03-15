<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.java.util.common"%>



<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.5.0-beta4/html2canvas.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.3.1/jspdf.umd.min.js"></script>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link href="${common.url}assets/css/vou.css" rel="stylesheet">



<div class="container" style="background-color:#1C1B17;">
   <div class="col-md-12">
      <div class="invoice" id="download" >
         <!-- begin invoice-company -->
         <c:forEach var="reg" items="${register}">
         <div class="container">
         <div class="invoice-company text-inverse f-w-600">
            <span class="pull-right hidden-print">
            <button class="btn btn-outline-danger" id="downloadImage" style="margin-left:100px;"><i class="fa fa-download" aria-hidden="true"></i></button>
            <button class="btn btn-outline-danger" id="downloadImage" style="margin-left:90px;"><i class="fa fa-print" aria-hidden="true"></i>
</button>
           
            </span>
             <a href="${common.url}hero"><img src="${common.url}assets/gym-img/logo.png" alt=""></a>
           <h2 style="width: 100%;"> Power House GYM Voucher</h2>
         </div>
         <!-- end invoice-company -->
         <!-- begin invoice-header -->
         <div class="invoice-header">
            <div class="invoice-from">
               <small></small>
               <address class="m-t-5 m-b-5">
                  <strong class="text-inverse"></strong><br>
                  Address:<br>
                  ThaKhin Phoe Hla Gyi Street,NorthDagon,Yangon<br>
                  Contact:<br>
                  +959794774518
               </address>
            </div>
            <div class="invoice-to">
               <small></small>
               <address class="m-t-5 m-b-5">
                  <strong class="text-inverse"></strong><br>
                  Email:<br>
                  pearlyadana@gmail.com<br>
                  FaceBook<br>
                  Pearl Yadana Vocational Training Center
               </address>
            </div>
            <div class="invoice-date">
               <small>Time For Class</small>
               	StartDate:${reg.registerdate}<br>EndDate:${reg.expireddate}
           		 
              
            </div>
         </div>
         <!-- end invoice-header -->
         <!-- begin invoice-content -->
         <div class="invoice-content">
            <!-- begin table-responsive -->
            <h2 style="margin-left: 200px;">Voucher Details</h2>
            <div class="table-responsive">
               <table class="table table-invoice" >
                  <thead>
                     <tr>
                        <th style="text-align: left; "  >Descriptions</th>
                        <th class="text-center" >Data</th>
                        
                     </tr>
                  </thead>
                  <tbody>
                     <tr>
                        <td>
                           <span class="text-inverse">FullName</span><br>
                           <small></small>
                        </td>
                        <td class="text-center" >${reg.cname}</td>
                        
                     </tr>
                     <tr>
                        <td>
                           <span class="text-inverse">Trainer Name</span><br>
                           
                        </td>
                        <td class="text-center">${reg.tname}</td>
                        
                     </tr>
                     <tr>
                        <td>
                           <span class="text-inverse">Class Name</span><br>
                           
                        </td>
                        <td class="text-center">${reg.classname}</td>
                        
                     </tr>
                     <tr>
                        <td>
                           <span class="text-inverse">PlanMonths</span><br>
                           
                        </td>
                        <td class="text-center">${reg.planmonth}Months</td>
                        
                     </tr>
                     <tr>
                        <td>
                           <span class="text-inverse">Price For One Month</span><br>
                           
                        </td>
                        <td class="text-center">${reg.classprice}</td>
                        
                     </tr>
                     <tr>
                        <td>
                           <span class="text-inverse">You need to Pay those Total Payment in Down.</span><br>
                           <small>PlanMonths*OneMonthPrice</small>
                        </td>
                        
                     </tr>
                  </tbody>
               </table>
            </div>
            <!-- end table-responsive -->
            <!-- begin invoice-price -->
            <div class="invoice-price">
               <div class="invoice-price-left">
                  <div class="invoice-price-row">
                     <div class="sub-price">
                        <small>PlanMonths</small>
                        <span class="text-inverse">${reg.planmonth}</span>
                     </div>
                     <div class="sub-price">
                        <i class="fa fa-times-circle" aria-hidden="true"></i>
                     </div>
                     <div class="sub-price">
                        <small>OneMonthPrice</small>
                        <span class="text-inverse">${reg.classprice}</span>
                     </div>
                  </div>
               </div>
               <div class="invoice-price-right">
                  <small>TOTAL</small> <span class="f-w-600">${reg.paymentamount}</span>
               </div>
            </div>
            <!-- end invoice-price -->
         </div>
         <!-- end invoice-content -->
         <!-- begin invoice-note -->
        
         <!-- end invoice-note -->
         <!-- begin invoice-footer -->
         <div class="invoice-footer">
            <p style="font-size: 20px;margin-left: 100px;">
               THANK YOU FOR Joing With Us!!
            </p>
            <p class="text-center">
               <span ><i class="fa fa-fw fa-lg fa-globe"></i> matiasgallipoli.com</span>
               <span class="m-r-10"><i class="fa fa-fw fa-lg fa-phone-volume"></i> T:016-18192302</span>
               <span class="m-r-10"><i class="fa fa-fw fa-lg fa-envelope"></i> rtiemps@gmail.com</span>
            </p>
         </div>
         <!-- end invoice-footer -->
      </div>
      </c:forEach>
   </div>
</div>
</div>



	<!-- Start Hero Section -->
	<!-- ======= Book A Table Section ======= -->
	

	<script
		src="${common.url}assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${common.url}assets/vendor/aos/aos.js"></script>
	<script src="${common.url}assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script
		src="${common.url}assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="${common.url}assets/vendor/swiper/swiper-bundle.min.js"></script>

	<!-- Template Main JS File -->
	<script src="${common.url}assets/js/main.js"></script>

<script>
       
document.getElementById("downloadImage").addEventListener("click", function () {
  // Select the content element to be converted
  const content = document.getElementById("download");

  // Create a new canvas with a white background
  const canvas = document.createElement("canvas");
  const context = canvas.getContext("2d");
  const contentWidth = content.offsetWidth;
  const contentHeight = content.offsetHeight;
  canvas.width = contentWidth;
  canvas.height = contentHeight;
  context.fillStyle = "#303030"; // White background color
  context.fillRect(0, 0, contentWidth, contentHeight);

  // Use html2canvas to capture the content as an image and draw it on the new canvas
  html2canvas(content).then((contentCanvas) => {
    context.drawImage(contentCanvas, 0, 0);

    // Convert the canvas to a downloadable PNG image
    const imgData = canvas.toDataURL("image/png");

    // Create a link element and trigger a click to download the image
    const link = document.createElement("a");
    link.href = imgData;
    link.download = "Power_House_GYM Voucher.png";
    link.click();
  });
});


      </script>


</body>

</html>