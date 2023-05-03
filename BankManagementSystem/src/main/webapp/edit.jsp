<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Form</title>
</head>
<body >
<table>
<form action="update">

<input type="hidden" name="accNo" value="${a.accNo}">
<tr>
<td><label for="FirstName"> First Name<span style="color:red">*</span></label> </td>
<td><input type="text" id="FirstName" name="fname" value="${a.fname}"><br><br></td>
</tr>

<tr>
<td><label for="LastName"> Last Name<span style="color:red">*</span></label> 
<td><input type="text" id="LastName" name="lname" value="${a.lname}""><br><br>
</tr>

<tr>
<td><label for="date"> DOB<span style="color:red">*</span></label> </td>
<td><input type="date" id="date" name="dob" value="${a.dob}"><br><br></td>
</tr>

<tr>
<td><label for="balance">Enter Amount<span style="color:red">*</span></label></td> 
<td><input type="tel" id="balance " name="balance"  value="${a.balance}"><br><br></td>
</tr>

<tr>
<td><label for="email"> Enter Email<span style="color:red">*</span></label> </td>
<td><input type="email" id="email" name="email" value="${a.email}"><br><br></td>
</tr>


<tr>
<td><label for="Mobile No"> Mobile No<span style="color:red">*</span></label></td> 
<td><input type="tel" id="Mobile No" name="mobNo" value="${a.mobNo}"><br><br></td>
</tr>

<tr>
<td><label for="adharNo"> Adhar No<span style="color:red">*</span></label></td> 
<td><input type="tel" id="adharNo " name="adharNo" value="${a.adharNo}"><br><br></td>
</tr>


<tr>
<td><label for="panNo"> Pan No<span style="color:red">*</span></label></td> 
<td><input type="tel" id="panNo" name="panNo"  value="${a.panNo}"><br><br></td>
</tr>

<tr>
	<td>
		<label for="gender">Gender</label>
	</td>
	<td>
		<select name="gender">
		<option value="">Select Gender</option>
		<option value="male">male</option>
		<option value="female">female</option>
		<option value="other">other</option>
		</select>
	</td>
</tr>


<br> <br> <br>
<tr>
	<td>
		<label for="password">Enter Password</label>
	</td>
	<td>
		<input type="password" id="passward" name="passward"  value="${a.passward}">
		<img src="https://cdn3.iconfinder.com/data/icons/show-and-hide-password/100/show_hide_password-08-512.png" width="15px">
	</td>

</tr>



<tr>
	<td colspan="2">
		<center><input type="submit" value ="       Update        "></center>
	</td>
</tr>




</form>

</table>
</body>
</html>