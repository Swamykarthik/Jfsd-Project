<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Students</title>
<style>
    /* General page styling */
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f2f2f2;
    }

    h3 {
        color: #2e004f; /* Deep purple */
        text-align: center;
        margin-bottom: 20px;
    }

    /* Table styling */
    table {
        width: 100%; /* Increased size to cover more space */
        max-width: 1400px; /* Increased max width */
        margin: 20px auto;
        border-collapse: collapse;
        background-color: #fff;
        box-shadow: 0px 6px 20px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        overflow: hidden;
        animation: fadeIn 1.2s ease-in-out;
    }

    th, td {
        padding: 15px;
        text-align: center;
        color: #333;
        word-wrap: break-word;
        font-size: 16px; /* Slightly larger font */
    }

    th {
        background-color: #2e004f; /* Deep purple */
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:nth-child(odd) {
        background-color: #fff;
    }

    /* Table borders */
    table, th, td {
        border: 2px solid #2e004f; /* Purple borders */
    }
</style>

</head>
<body>
    <%@include file="teachernavbar.jsp" %>
    <h3><u>View All Students</u></h3>
    Total Students: <c:out value="${count}"></c:out>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>DEPARTMENT</th>
            <th>YEAR</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>STATUS</th>
        </tr>
        <c:forEach items="${studentList}" var="std">
            <tr>
                <td><c:out value="${std.id}"/></td>
                <td><c:out value="${std.name}"/></td>
                <td><c:out value="${std.gender}"/></td>
                <td><c:out value="${std.dateofbirth}"/></td>
                <td><c:out value="${std.department}"/></td>
                <td><c:out value="${std.year}"/></td>
                <td><c:out value="${std.location}"/></td>
                <td><c:out value="${std.email}"/></td>
                <td><c:out value="${std.contact}"/></td>
                <td><c:out value="${std.status}"/></td>
                
            </tr>
        </c:forEach>
    </table>
</body>
</html>
