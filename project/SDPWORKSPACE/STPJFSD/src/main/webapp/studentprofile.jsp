<%@page import="com.klef.jfsd.springboot.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Student std = (Student) session.getAttribute("student");
if (std == null) {
    response.sendRedirect("studentsessionexpired.jsp");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Home</title>
</head>
<body>
    <%@include file="stdnavbar.jsp" %>

    <h3 style="text-align: center;"><u>My Profile</u></h3>

<div class="container">
    <!-- Profile Card -->
    <div class="card">
        <div class="profile-header">
            <img src="images/premcharan.jpg" alt="Profile Picture">
            <h3><%= std.getName() %></h3>
        </div>
        <div class="student-details">
            <div class="student-info">
                <b>ID:</b> <span><%= std.getId() %></span>
            </div>
            <div class="student-info">
                <b>Gender:</b> <span><%= std.getGender() %></span>
            </div>
            <div class="student-info">
                <b>Date of Birth:</b> <span><%= std.getDateofbirth() %></span>
            </div>
            <div class="student-info">
                <b>Department:</b> <span><%= std.getDepartment() %></span>
            </div>
            <div class="student-info">
                <b>Year:</b> <span><%= std.getYear() %></span>
            </div>
            <div class="student-info">
                <b>Location:</b> <span><%= std.getLocation() %></span>
            </div>
            <div class="student-info">
                <b>Email:</b> <span><%= std.getEmail() %></span>
            </div>
            <div class="student-info">
                <b>Contact:</b> <span><%= std.getContact() %></span>
            </div>
        </div>
        <div class="footer">
            <p>Need help? <a href="stdcontactus.jsp">Contact us</a></p>
        </div>
    </div>

    <!-- Status Card -->
    <div class="status-card">
        <h3>Student Status</h3>
        <div class="status">
            <b>Status:</b> <span><%= std.getStatus() %></span>
        </div>
        <div class="footer">
            <p>For more details, <a href="status-details.jsp">click here</a>.</p>
        </div>
    </div>
</div>

</body>
</html>
