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
    <title>Student Dashboard</title>
    <link rel="stylesheet" type="text/css" href="studentdashboard.css">
</head>
<body>
    <%@include file="stdnavbar.jsp" %>
    <div class="dashboard-container">
        <h1>Welcome, <%= std.getName() %>!</h1>

        <!-- Container 1: Academic Performance with Bar Chart -->
        <div class="box">
            <h2 class="box-title">Academic Performance</h2>
            <div class="chart-bar">
                <div class="bar" style="height: 80%; background-color: #4CAF50;">A</div>
                <div class="bar" style="height: 70%; background-color: #FF9800;">B</div>
                <div class="bar" style="height: 90%; background-color: #2196F3;">A+</div>
                <div class="bar" style="height: 60%; background-color: #F44336;">C</div>
            </div>
            <p>Your average grade: <strong>A-</strong></p>
        </div>

        <!-- Container 2: Attendance Overview with Pie Chart -->
        <div class="box">
            <h2 class="box-title">Attendance Overview</h2>
            <div class="chart-pie">
                <div class="pie"></div>
                <div class="pie-text">95%</div>
            </div>
            <p>Attendance rate: <strong>95%</strong></p>
        </div>

        <!-- Container 3: Upcoming Events -->
        <div class="box">
            <h2 class="box-title">Upcoming Events</h2>
            <ul>
                <li>Project Presentation - May 10th</li>
                <li>Sports Day - May 15th</li>
                <li>Midterm Exams - June 1st</li>
            </ul>
        </div>

        <!-- Container 4: Recent Activities -->
        <div class="box">
            <h2 class="box-title">Recent Activities</h2>
            <p>You recently completed: <strong>Project on Data Structures</strong></p>
            <p>Feedback: <em>Well done!</em></p>
        </div>

        <!-- Container 5: Announcements -->
        <div class="box">
            <h2 class="box-title">Announcements</h2>
            <p>New internship opportunities available for computer science students.</p>
            <p>Check your email for details!</p>
        </div>
    </div>

    <!-- Line Chart -->
   <!-- Line Chart -->
<div class="line-chart-container">
    <h2>Performance Over Time</h2>
    <svg class="line-chart" viewBox="0 0 100 50" preserveAspectRatio="none">
        <polyline points="10,40 30,30 50,35 70,20 90,25"
                  fill="none" stroke="#6c63ff" stroke-width="2" />
        <circle cx="10" cy="40" r="1.5" fill="#6c63ff" />
        <circle cx="30" cy="30" r="1.5" fill="#6c63ff" />
        <circle cx="50" cy="35" r="1.5" fill="#6c63ff" />
        <circle cx="70" cy="20" r="1.5" fill="#6c63ff" />
        <circle cx="90" cy="25" r="1.5" fill="#6c63ff" />
    </svg>
</div>

    </div>
</body>
</html>
