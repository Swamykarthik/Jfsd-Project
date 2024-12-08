<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Student Registration</u></h3>
    <div class="form-container">
        <form method="post" action="insertstd"> <!-- Updated action to insertstd -->
            <table>
                <tr>
                    <td><label for="sname">Enter Name</label></td>
                    <td><input type="text" id="sname" name="sname" required/></td> <!-- Changed id/name to sname -->
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="sgender" value="MALE" required/> <!-- Changed name to sgender -->
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="sgender" value="FEMALE" required/> <!-- Changed name to sgender -->
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="sgender" value="OTHERS" required/> <!-- Changed name to sgender -->
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="sdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="sdob" name="sdob" required/></td> <!-- Changed id/name to sdob -->
                </tr>
                <tr>
                    <td><label for="sdept">Select Department</label></td>
                    <td>
                        <select id="sdept" name="sdept" required> <!-- Changed id/name to sdept -->
                            <option value="">---Select---</option>
                            <option value="COMPUTER SCIENCE">Computer Science</option>
                            <option value="ELECTRONICS">Electronics</option>
                            <option value="MECHANICAL">Mechanical</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="syear">Select Year</label></td>
                    <td>
                        <select id="syear" name="syear" required> <!-- Added year selection -->
                            <option value="">---Select Year---</option>
                            <option value="1">First Year</option>
                            <option value="2">Second Year</option>
                            <option value="3">Third Year</option>
                            <option value="4">Final Year</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="slocation">Enter Location</label></td>
                    <td><input type="text" id="slocation" name="slocation" required/></td> <!-- Changed id/name to slocation -->
                </tr>
                <tr>
                    <td><label for="semail">Enter Email ID</label></td>
                    <td><input type="email" id="semail" name="semail" required/></td> <!-- Changed id/name to semail -->
                </tr>
                <tr>
                    <td><label for="spwd">Enter Password</label></td>
                    <td><input type="password" id="spwd" name="spwd" required/></td> <!-- Changed id/name to spwd -->
                </tr>
                <tr>
                    <td><label for="scontact">Enter Contact</label></td>
                    <td><input type="number" id="scontact" name="scontact" required/></td> <!-- Changed id/name to scontact -->
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
