<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<script type="text/javascript">
function deleteU() {
	alert("Call Delete");
	document.myform.action="delete";
	documment.myform.submit();
}
function edit1() {
	alert("Call Update");
	document.myform.action="edit";
	documment.myform.submit();	
}

</script>
<style type="text/css">
*{
		box-sizing: border-box;
		margin: 0;
	}
	.main{
		background-color: rgb(0, 255, 255);
        width: 1280px;
        height: 600px;
	}
	.row1{
		background-color: rgb(252, 24, 24);
        width: 1280px;
        height: 90px;
        text-align: center;
        box-sizing: border-box;
        padding-top: 15px;
	}


</style>
</head>
<body>
<div class="main">
	<div class="row1">
		<h1 align="center"> WelCome To Bank Of India </h1>
		<h2 align="center" style="background: pink"> Show Details </h2>
	</div>
	<form name="myform">
	<div class="row2" align="center"><br>
	
<table border="2">
<tr>
<th>Select</th>
<th>Account No</th>
<th>First Name</th>
<th>Last Name</th>
<th>DOB</th>
<th>Adhar No</th>
<th>pan No</th>
<th>Mobile No</th>
<th>Gender</th>
<th>Passward</th>
<th>Account Balance</th>

</tr>

<c:forEach items="${data}" var="a">

<tr>
<td><input type="radio" name="accNo" value="${a.accNo }"></td>
<td>${a.accNo}</td>
<td>${a.fname}</td>
<td>${a.lname}</td>
<td>${a.dob}</td>
<td>${a.adharNo}</td>
<td>${a.panNo}</td>
<td>${a.mobNo}</td>
<td>${a.gender}</td>
<td>${a.passward}</td>
<td>${a.balance}</td>
<td>

</tr>

</c:forEach>

<tr>

<th><button onclick="deleteU()">DELETE</button>
				<button onclick="edit1()">UPDATE</button>	
</th>
</tr>
</table>

</div>
</form>
				
</body>
</html>