<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="coverLetter.css"></link>
<link rel="stylesheet" href="TechnicalSpecification.css"></link>
<title>Commercial T&amp;C</title>
</head>
<body>
	<div class="image" ><img alt="Logo" src="images\MBJIGSONLOGO.png"></div>
	
	<div class="list">
   		<ul>
   			<li ><a href="coverLetter.jsp">Cover Letter</a></li>
   			<li ><a href="Description.jsp">Description</a></li>
   			<li ><a href="TechnicalSpecification.jsp">Technical Specification Sheet</a></li>
   			<li ><a href="OptionalAccessories.jsp">Optional Accessories</a></li>
   			<li ><a href="Parts.jsp">Parts-CNC Press Brake</a></li>
   			<li ><a href="price.jsp">Price Schedule</a></li>
   			<li class="active"><a href="CommercialTC.jsp">Commercial T&amp;C </a></li>
   			
   		</ul>
   		<form action="NewServlet" method = "get">
   		 Review and Generate PDF<input type="submit" id="generatepdf" >
   		</form>
   	</div>
	
	<div class="price">
		<h3>COMMERCIAL TERMS AND CONDITIONS</h3>
	</div>
	
	<div class="table">
		<table border="1">
			<thead><tr>
				<th>TERMS</th>
				<th>Condition</th>
			</tr>
			</thead>
			<tbody>
				
				<tr contenteditable="true">
					<td><b>Prices</b></td>
					<td>Ex-works, Indore</td>
				</tr>
				
				<tr contenteditable="true">
					<td><b>Taxes</b></td>
					<td>GST Extra @18% applicable at the time of dispatch</td>
				</tr>
				
				<tr contenteditable="true">
					<td><b>Delivery</b></td>
					<td>The machines shall be delivered as per below schedule from the date of your
						confirm &amp; irrevocable purchase order with advance as mentioned in
						"PAYMENT" tab.
						<ul>
						<li><b>150 T CNC Press brake: 2&#189; Months</b></li>
						</ul>
						</td>
				</tr>
				
				<tr contenteditable="true">
					<td><b>Inspection</b></td>
					<td>If desired, at our works, prior to dispatch</td>
				</tr>
				
				<tr contenteditable="true">
					<td><b>Payment</b></td>
					<td>40% advance along with technically &amp; commercially clear Purchase Order and
						balance against pro-forma invoice (Before the dispatch of material).
						If final payment is made by Cheaque, the machine shall be dispatched after
						the funds are realized in our account. Any late payment shall attract penalty
						@24% of the balance amount</td>
				</tr>
				
				<tr contenteditable="true">
					<td><b>Hydraulic Oil</b></td>
					<td><b>Not in our scope of supply.</b></td>
				</tr>
				
				<tr contenteditable="true">
					<td><b>Field Arrangements</b></td>
					<td>Such as electrical connection, machine rigging, wiring from your mains up to
						the machine, foundation and masonry work is in client's scope.<br>
						<b style="text-decoration:underline;">CNC press brake require separate earthing and servo stabilizer, which is
						not in our scope of supply.</b></td>
				</tr>
				
				<tr contenteditable="true">
					<td><b>Insurance</b></td>
					<td>At customer's account.</td>
				</tr>
				
				<tr contenteditable="true">
					<td><b>Validity</b></td>
					<td>This quotation is valid for 30 days</td>
				</tr>
				
				<tr contenteditable="true">
					<td><b>Freight</b></td>
					<td>Goods will be dispatched on TO-PAY basis.</td>
				</tr>
				
				<tr contenteditable="true">
					<td><b>Other expenses</b></td>
					<td>Such as loading, unloading, octroi etc are to customer's account.</td>
				</tr>
				
				<tr contenteditable="true">
					<td><b>WARRANTY</b></td>
					<td>Machines are warranted against any manufacturing defect or poor
						workmanship for the period of 12 months from the dispatch.</td>
				</tr>
				
				<tr contenteditable="true">
					<td><b>WARRANTY EXCLUSIONS</b></td>
					<td>
						<ul>
							<li>Any rubber parts such as oil seals, O rings, chevron packing</li>
							<li>Electrical items such as coils, contactors, limit switches, push buttons etc</li>
							<li>Warranty does not cover the cost of engineer (such as travel, lodging and
								boarding) and purchase, on demand, shall pay such cost.
							</li>
						</ul>
					</td>
				</tr>
				
				<tr contenteditable="true">
					<td><b>TEST &amp; TRIALS</b></td>
					<td>At our works, before dispatch (On material to be provided by the customer)</td>
				</tr>
				
				<tr contenteditable="true">
					<td><b>DECLARATION</b></td>
					<td>Please furnish your GSTIN number while placing the purchase order</td>
				</tr>
				
				<tr contenteditable="true">
					<td><b>OUR BANK DETAILS</b></td>
					<td>
						<b>
							Bank name: ICICI Bank ltd.<br>
							Branch: Malav Parisar Branch, Indore<br>
							Account name: MB JIGSON Hydraulics (P) Ltd.<br>
							Account no: 004105015129<br>
							Account Type: OD<br>
							IFSC Code: ICIC0000041
						</b>
					</td>
				</tr>
				
				
				
			</tbody>
		</table>
	</div>
	
	<div class="foot-image"><img alt="Footer" src="images\MBJIGSONADDRESS.png"></div>
</body>
<script src="script.js"></script>
<script src="general.js"></script>
</html>