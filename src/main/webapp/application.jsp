<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ibm.icp.coc.User"  %>
<%
	User user = (User)request.getAttribute("user");
    if( user == null ) {
    	response.sendRedirect("signin.jsp");
    }
%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.css" >
	<link rel="stylesheet" href="css/application.css" >
	<title>Montage2 Application Form</title>
    <link rel="icon" href="images/bank.ico">
</head>
<body>

<div class="container" style="max-width: 600px">
<h2>Welcome <%= user.getFirst() %></h2>
<h2>Please fill out this application form:</h2>
<div class="container" style="background-color: lightgray; padding-top: 5px; padding-bottom: 5px">


	<div class="form-row">
		<div class="form-group col-md-12">
            <label for="username">Full Name</label>
            <input class="form-control" type="text" id="fname" name="username" value="<%= user.getFullName() %>">
		</div>
	</div>
	<div class="form-row">
		<div class="form-group col-md-12">
            <label for="address"> Address</label>
            <input class="form-control" type="text" id="adr" name="address" value="<%= user.getAddress() %>">
            
			
		</div>
	</div>

	<div class="form-row">
		<div class="form-group col-md-6">
            <label for="city">City</label>
            <input class="form-control" type="text" id="city" name="city" value="<%= user.getCity() %>">
        </div>
		<div class="form-group col-md-3">
			<label for="state">State</label>
            <select class="form-control" id="state" >
				<option value="AL" <%= (user.getState().equals("AL"))?"selected":"" %> >Alabama (AL)</option>
				<option value="AK" <%= (user.getState().equals("AK"))?"selected":"" %> >Alaska (AK)</option>
				<option value="AZ" <%= (user.getState().equals("AZ"))?"selected":"" %> >Arizona (AZ)</option>
				<option value="AR" <%= (user.getState().equals("AR"))?"selected":"" %> >Arkansas (AR)</option>
				<option value="CA" <%= (user.getState().equals("CA"))?"selected":"" %> >California (CA)</option>
				<option value="CO" <%= (user.getState().equals("CO"))?"selected":"" %> >Colorado (CO)</option>
				<option value="CT" <%= (user.getState().equals("CT"))?"selected":"" %> >Connecticut (CT)</option>
				<option value="DE" <%= (user.getState().equals("DE"))?"selected":"" %> >Delaware (DE)</option>
				<option value="DC" <%= (user.getState().equals("DC"))?"selected":"" %> >District Of Columbia (DC)</option>
				<option value="FL" <%= (user.getState().equals("FL"))?"selected":"" %> >Florida (FL)</option>
				<option value="GA" <%= (user.getState().equals("GA"))?"selected":"" %> >Georgia (GA)</option>
				<option value="HI" <%= (user.getState().equals("HI"))?"selected":"" %> >Hawaii (HI)</option>
				<option value="ID" <%= (user.getState().equals("ID"))?"selected":"" %> >Idaho (ID)</option>
				<option value="IL" <%= (user.getState().equals("IL"))?"selected":"" %> >Illinois (IL)</option>
				<option value="IN" <%= (user.getState().equals("IN"))?"selected":"" %> >Indiana (IN)</option>
				<option value="IA" <%= (user.getState().equals("IA"))?"selected":"" %> >Iowa (IA)</option>
				<option value="KS" <%= (user.getState().equals("KS"))?"selected":"" %> >Kansas (KS)</option>
				<option value="KY" <%= (user.getState().equals("KY"))?"selected":"" %> >Kentucky (KY)</option>
				<option value="LA" <%= (user.getState().equals("LA"))?"selected":"" %> >Louisiana (LA)</option>
				<option value="ME" <%= (user.getState().equals("ME"))?"selected":"" %> >Maine (ME)</option>
				<option value="MD" <%= (user.getState().equals("MD"))?"selected":"" %> >Maryland (MD)</option>
				<option value="MA" <%= (user.getState().equals("MA"))?"selected":"" %> >Massachusetts (MA)</option>
				<option value="MI" <%= (user.getState().equals("MI"))?"selected":"" %> >Michigan (MI)</option>
				<option value="MN" <%= (user.getState().equals("MN"))?"selected":"" %> >Minnesota (MN)</option>
				<option value="MS" <%= (user.getState().equals("MS"))?"selected":"" %> >Mississippi (MS)</option>
				<option value="MO" <%= (user.getState().equals("MO"))?"selected":"" %> >Missouri (MO)</option>
				<option value="MT" <%= (user.getState().equals("MT"))?"selected":"" %> >Montana (MT)</option>
				<option value="NE" <%= (user.getState().equals("NE"))?"selected":"" %> >Nebraska (NE)</option>
				<option value="NV" <%= (user.getState().equals("NV"))?"selected":"" %> >Nevada (NV)</option>
				<option value="NH" <%= (user.getState().equals("NH"))?"selected":"" %> >New Hampshire (NH)</option>
				<option value="NJ" <%= (user.getState().equals("NJ"))?"selected":"" %> >New Jersey (NJ)</option>
				<option value="NM" <%= (user.getState().equals("NM"))?"selected":"" %> >New Mexico (NM)</option>
				<option value="NY" <%= (user.getState().equals("NY"))?"selected":"" %> >New York (NY)</option>
				<option value="NC" <%= (user.getState().equals("NC"))?"selected":"" %> >North Carolina (NC)</option>
				<option value="ND" <%= (user.getState().equals("ND"))?"selected":"" %> >North Dakota (ND)</option>
				<option value="OH" <%= (user.getState().equals("OH"))?"selected":"" %> >Ohio (OH)</option>
				<option value="OK" <%= (user.getState().equals("OK"))?"selected":"" %> >Oklahoma (OK)</option>
				<option value="OR" <%= (user.getState().equals("OR"))?"selected":"" %> >Oregon (OR)</option>
				<option value="PA" <%= (user.getState().equals("PA"))?"selected":"" %> >Pennsylvania (PA)</option>
				<option value="RI" <%= (user.getState().equals("RI"))?"selected":"" %> >Rhode Island (RI)</option>
				<option value="SC" <%= (user.getState().equals("SC"))?"selected":"" %> >South Carolina (SC)</option>
				<option value="SD" <%= (user.getState().equals("SD"))?"selected":"" %> >South Dakota (SD)</option>
				<option value="TN" <%= (user.getState().equals("TN"))?"selected":"" %> >Tennessee (TN)</option>
				<option value="TX" <%= (user.getState().equals("TX"))?"selected":"" %> >Texas (TX)</option>
				<option value="UT" <%= (user.getState().equals("UT"))?"selected":"" %> >Utah (UT)</option>
				<option value="VT" <%= (user.getState().equals("VT"))?"selected":"" %> >Vermont</option>
				<option value="VA" <%= (user.getState().equals("VA"))?"selected":"" %> >Virginia</option>
				<option value="WA" <%= (user.getState().equals("WA"))?"selected":"" %> >Washington</option>
				<option value="WV" <%= (user.getState().equals("WV"))?"selected":"" %> >West Virginia</option>
				<option value="WI" <%= (user.getState().equals("WI"))?"selected":"" %> >Wisconsin</option>
				<option value="WY" <%= (user.getState().equals("WY"))?"selected":"" %> >Wyoming</option>
			</select>		
 		</div>
		<div class="form-group col-md-3">
			<label for="zip">Zip</label>
            <input class="form-control" type="text" id="zip" name="zip" value="<%=user.getZip() %>">
		</div>
	</div>

	<div class="form-row">
		<div class="form-group col-md-8">
            <label for="employer">Employer</label>
            <input class="form-control" type="text" id="employer" name="employer" value="<%=user.getEmployer()%>">
		</div>
		<div class="form-group col-md-4">
            <label for="yearsCurrentEmpl">Years at Employer</label>
            <input class="form-control" type="text" id="yearsCurrentEmpl" name="yearsCurrentEmpl" value="<%=user.getYears()%>">
        </div>
	</div>

	<div class="form-row">
        <h3>Financial Details</h3>
	</div>     
	<div class="form-row">
		<div class="form-group col-md-4">
            <label for="totalCards">Total Cards</label>
            <input class="form-control" type="text" id="totalCards" name="totalCards" >
		</div>
		<div class="form-group col-md-4">
            <label for="cardDebt">Card Debt</label>
            <input class="form-control" type="text" id="cardDebt" name="cardDebt" >
		</div>
		<div class="form-group col-md-4">
            <label for="currentLoans">Current Loans</label>
            <input class="form-control" type="text" id="currentLoans" name="currentLoans" >
		</div>
	</div>
	<div class="form-row">
		<div class="form-group col-md-4">
            <label for="loanAmount">Loan Amount</label>
            <input class="form-control" type="text" id="loanAmount" name="loanAmount" >
		</div>
		<div class="form-group col-md-4">
			<label for="expmonth">Exp Month</label>
			<select class="form-control" id="expmonth">
				<option value="0">Month</option>
				<option value="1">January</option>
				<option value="2">February</option>
				<option value="3">March</option>
				<option value="4">April</option>
				<option value="5">May</option>
				<option value="6">June</option>
				<option value="7">July</option>
				<option value="8">August</option>
				<option value="9">September</option>
				<option value="10">October</option>
				<option value="11">November</option>
				<option value="12">December</option>
			</select>		
 
		</div>
	</div>
	<div class="form-row">
		<button class="btn btn-primary" onclick="apply()">Apply</button>
	</div>
	
</div>
</div>

<!-- div class="modal hide" data-backdrop="static" data-keyboard="false"> -->
<div class="modal" id="pleaseWaitDialog"  tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Processing...</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Cancel">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
		 <div class="progress">
		  <div class="progress-bar progress-bar-striped" style="width:100%"></div>
		</div> 
      </div>
    </div>
  </div>
</div>

<div class="modal" id="invalidData" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Data Input Error</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Please correct the missing or invalid data before submitting your request again.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">OK</button>
      </div>
    </div>
  </div>
</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js" ></script>
	<script src="js/bootstrap.js" ></script>

<script type="text/javascript">

var missingFields = false;

function getFieldValue(field, pat){
	var exp = new RegExp(pat);
	var val = $(field).val();
	if( exp.test(val)==false ) {
		$(field).css('border', '1px solid'); 
		$(field).css('border-color', 'red');
		val = null;
		missingFields = true;
	}
	return val;
}

function getData(){

	const moneyPat = "^\\d{1,3}(,\\d{3})*(\\.\\d+)?$";
	var data = {};
	data.id = '<%=user.getId()%>';
	data.fullName = getFieldValue('#fname', '.');
	data.address = getFieldValue('#adr', '.');
	data.city = getFieldValue('#city', '.');
	data.state = getFieldValue('#state', '.');
	data.zip = getFieldValue('#zip', '\\d{5}');
	data.employer = getFieldValue('#employer', '.');
	data.years = getFieldValue('#yearsCurrentEmpl', '\\d');
	data.cards = getFieldValue('#totalCards', '^\\d+$');
	data.debt = getFieldValue('#cardDebt', moneyPat);
	data.loans = getFieldValue('#currentLoans', moneyPat);
	data.amount = getFieldValue('#loanAmount', moneyPat);
	data.expMonth = getFieldValue('#expmonth', '[^0]+');

	return data;
}

function apply(){
	
	missingFields = false;
	$('#fname').css('border', '0px');
	$('#adr').css('border', '0px');
	$('#city').css('border', '0px');
	$('#zip').css('border', '0px');
	$('#employer').css('border', '0px');
	$('#yearsCurrentEmpl').css('border', '0px');
	$('#totalCards').css('border', '0px');
	$('#cardDebt').css('border', '0px');
	$('#currentLoans').css('border', '0px');
	$('#loanAmount').css('border', '0px');
	$('#expmonth').css('border', '0px');
	
	var jsonData = getData();
	if( missingFields ) {
		$("#invalidData").modal('show');
	} else {
		
		$("#pleaseWaitDialog").modal('show');
		
		console.log( JSON.stringify(jsonData,null,4));

	 	$.ajax('/ProcessLoanRequest', {
			    data: JSON.stringify(jsonData),
			    dataType:'json',
			    type : 'POST',
			    success: function(res,txt,jqXHR) {
			    	$("#pleaseWaitDialog").modal('hide');
			    	window.location.href = res.url;
	            }
		}); 
	}
}



</script>
</body>
</html>
