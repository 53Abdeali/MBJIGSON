<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.util.Date" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="coverLetter.css"></link>
<link rel="stylesheet" href="TechnicalSpecification.css"></link> 
<title>MB JIGSON</title>
</head>
<body>
   	<%
   		String name = request.getParameter("name");
   	    String company = request.getParameter("company");
   	 	String address = request.getParameter("address");
   	 	String product = request.getParameter("product");
   	%>
   	
   	<%
   		Date dt = new Date();
   		SimpleDateFormat sdf = new SimpleDateFormat("d MMMM yyyy");
   		String formattedDate = sdf.format(dt);
   		int dom = Integer.parseInt(new SimpleDateFormat("d").format(dt));
   		
   		String day;
   		if(dom%10==0 && dom!=11){
   			day = "st";
   		}
   		else if(dom%10==2 && dom!=12){
   			day="nd";
   		}
   		else if(dom%10==3 && dom!=13){
   			day="rd";
   		}
   		else{
   			day = "th";
   		}
   		
   		formattedDate = formattedDate.replaceFirst("\\b(\\d+)\\b", "$1" + day);
   		
   	%>
   	<div id="coverLetter">
   	<div class="image" ><img alt="Logo" src="images\MBJIGSONLOGO.png"></div>
   	<div class="list">
   		<ul>
   			<li class="active" ><a href="coverLetter.jsp">Cover Letter</a></li>
   			<li><a href="Description.jsp">Description</a></li>
   			<li><a href="TechnicalSpecification.jsp">Technical Specification Sheet</a></li>
   			<li><a href="OptionalAccessories.jsp">Optional Accessories</a></li>
   			<li><a href="Parts.jsp">Parts-CNC Press Brake</a></li>
   			<li><a href="price.jsp">Price Schedule</a></li>
   			<li><a href="CommercialTC.jsp">Commercial T&amp;C </a></li>
   			<li><a href="NewFile.jsp">New File </a></li>
   			
   		</ul>
   	</div>
   	<div class="coverLetter">
   	<div class="name"> <span>Kind Attn: <%=name%></span> </div>
   	<div class="To">
   		<div class="address">
   		To,<br>
   		<%=company %><br>
   		<%=address %><br>
   		</div>
   		<p class="date">Date: <%=formattedDate%></p>
   		<p class="subject">SUB: Quotation for <%=product%></p><br>
   		<span>Dear Sir,</span>
   		<br>
   		<p class="firstPara">We are pleased to learn that you have requirement of <%=product %>. 
   		Based on your requirement, we are pleased to submit our proposal as follows.<br>
   		<br>Our Proposal consists of the following:</p>
   		<div>
   		<ul>
   			<li>Technical Specification Sheet</li>
   			<li>Optional Accessories Sheet</li>
   			<li>Terms and Condition Sheet</li>	
   		</ul>
   		</div>
   		<p class="secondPara">We hope you shall find the proposal and technical specifications therein, well in line with your 
   		requirement. If you have any further query or need any assistance with the proposal, please do 
   		not hesitate to call or email us.</p>
   		
   		<p class ="thirdPara">Thank you once again for considering MB-JIGSON Hydraulics Pvt. Ltd. for your machine
   		 requirement. We assure you of best service and attention at all times.</p>
   		 
   		 <span class="first">FOR MB JIGSON HYDRAULICS Pvt. Ltd.</span><br>
   		 <!-- e-signature -->
   		 <img alt="Signature" src="images\MBJIGSONDIRECTOR.png">
   		 <p class="dir">Director</p> 
   	</div>
   	</div>
   	<img class="footImage" alt="Footer" src="images\MBJIGSONADDRESS.png">
   	</div>
</body>
<script type="text/javascript" src="general.js"></script>
</html>