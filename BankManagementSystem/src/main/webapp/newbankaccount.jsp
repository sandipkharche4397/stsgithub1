<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Open New Bank Account</title>
</head>
<body style="background-color:aqua;">
<center>
<h2>New Bank Account Opening Form </h2>
<table border="2" style="background-color:pink";>
<form action="save">

<tr>
<td><label for="FirstName"> First Name<span style="color:red">*</span></label> </td>
<td><input type="text" id="FirstName" name="fname" required placeholder="Enter First Name"><br><br></td>
</tr>

<tr>
<td><label for="LastName"> Last Name<span style="color:red">*</span></label> 
<td><input type="text" id="LastName" name="lname"required placeholder="Enter Last Name"><br><br>
</tr>

<tr>
<td><label for="date"> DOB<span style="color:red">*</span></label> </td>
<td><input type="date" id="date" name="dob"required><br><br></td>
</tr>

<tr>
<td><label for="balance">Enter Amount<span style="color:red">*</span></label></td> 
<td><input type="tel" id="balance " name="balance"><br><br></td>
</tr>

<tr>
<td><label for="email"> Enter Email<span style="color:red">*</span></label> </td>
<td><input type="email" id="email" name="email"required placeholder="abc@gmail.com"><br><br></td>
</tr>


<tr>
<td><label for="Mobile No"> Mobile No<span style="color:red">*</span></label></td> 
<td><input type="tel" id="Mobile No" name="mobNo"required placeholder="000-000-0000"><br><br></td>
</tr>

<tr>
<td><label for="adharNo"> Adhar No<span style="color:red">*</span></label></td> 
<td><input type="tel" id="adharNo " name="adharNo"required placeholder="0000-0000-0000"><br><br></td>
</tr>


<tr>
<td><label for="panNo"> Pan No<span style="color:red">*</span></label></td> 
<td><input type="tel" id="panNo" name="panNo"><br><br></td>
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


</tr>
<tr>
	<td>
		<label for="password">Enter Password</label>
	</td>
	<td>
		<input type="password" id="passward" name="passward" >
		<img src="https://cdn3.iconfinder.com/data/icons/show-and-hide-password/100/show_hide_password-08-512.png" width="15px">
	</td>

</tr>



<tr>
	<td colspan="2">
		<center><input type="submit" value ="       Submit        "></center>
	</td>
</tr>

</form>
</table>
</center>
</body>
</html>