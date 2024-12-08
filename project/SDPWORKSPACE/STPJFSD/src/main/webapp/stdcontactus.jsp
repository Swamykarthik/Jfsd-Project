<%@page import="com.klef.jfsd.springboot.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Student std = (Student) session.getAttribute("student");
if(std == null) {
    response.sendRedirect("studentsessionexpired.jsp");
    return;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
</head>
<body>
    <%@include file="stdnavbar.jsp" %>
    
    <h1>Contact Us</h1>
    
    <!-- Contact details section for the student -->
    <section>
        <h2>Student Support</h2>
        <p>If you are a student and need help with any academic or administrative issue, you can contact the following support team:</p>
        <ul>
            <li><strong>Student Support Email:</strong> studentsupport@klf.com</li>
            <li><strong>Phone:</strong> +123 456 7890 (Available Monday to Friday, 9:00 AM to 6:00 PM)</li>
            <li><strong>Office Address:</strong> KL University Campus, Vijayawada, India</li>
        </ul>
    </section>
    
    <!-- Contact details section for teachers -->
    <section>
        <h2>Teacher Contact Information</h2>
        <p>If you wish to contact your teacher, please use the following details. Each department has its own set of teachers, and you can reach out to them directly:</p>
        <p><strong>For Academic Queries:</strong> Please reach out to your course instructor via email or in person during office hours.</p>
        <ul>
            <li><strong>Professor John Doe (Math Department):</strong> johndoe@klf.com</li>
            <li><strong>Professor Jane Smith (Computer Science Department):</strong> janesmith@klf.com</li>
            <li><strong>Professor Mark Lee (Physics Department):</strong> marklee@klf.com</li>
        </ul>
        <p><strong>Office Hours:</strong> Monday to Friday, 10:00 AM to 12:00 PM</p>
        <p>For more information on your department and faculty, please visit the department website or contact the head of your department directly.</p>
    </section>
    
    <!-- Feedback/General Queries Section -->
    <section>
        <h2>General Feedback and Queries</h2>
        <p>If you have any general feedback or queries regarding the campus, courses, or facilities, feel free to get in touch with us via the contact form below:</p>
        <form action="submitContactForm" method="POST">
            <input type="text" name="name" placeholder="Your Name" required><br>
            <input type="email" name="email" placeholder="Your Email" required><br>
            <textarea name="message" placeholder="Your Message" rows="5" required></textarea><br>
            <button type="submit">Send Message</button>
        </form>
    </section>
</body>
</html>
