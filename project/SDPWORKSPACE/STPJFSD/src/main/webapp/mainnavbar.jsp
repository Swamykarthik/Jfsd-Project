<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot MVC - Student Management</title>
    
    <style>
        .m-navbar {
            position: fixed;
            top: 20px;
            right: 20px;
            display: flex;
            flex-direction: row; /* Horizontal layout */
            justify-content: space-between; /* Evenly distribute space between items */
            background-color: #4B0082; /* Dark purple */
            border-radius: 12px;
            padding: 20px; /* Increased padding */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            z-index: 1000;
            width: 800px; /* Increased width */
            height: 50px; /* Increased height */
        }

        .m-navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 20px; /* Increased padding for larger clickable area */
            font-size: 18px; /* Increased font size */
            border-radius: 8px;
            transition: background-color 0.3s, transform 0.3s;
        }

        .m-navbar a:hover {
            background-color: #7D3C98; /* Lighter purple */
            transform: scale(1.05);
        }

        .m-navbar a:active {
            animation: clickAnimation 0.4s ease-in-out;
        }

        @keyframes clickAnimation {
            0% {
                transform: scale(1);
            }
            50% {
                transform: scale(0.95);
            }
            100% {
                transform: scale(1);
            }
        }
    </style>
       <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div class="m-navbar">
        <a href="/">Home</a>
        <a href="studentreg">Student Registration</a>
        <a href="studentlogin">Student Login</a>
        <a href="teacherlogin">Teacher Login</a>
    </div>
</body>
</html>
