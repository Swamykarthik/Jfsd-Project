<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home - Student Portfolio Management</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        /* General Styling */
        body {
            background-color: #f8f0fc;
            font-family: "Poppins", sans-serif;
            color: #333;
            margin: 0;
        }
        h1 {
    font-family: "Poppins", sans-serif;
    margin-left: 0;
    margin-top: 0;
    position: absolute;
    top: 10px;
    left: 10px;
}
        

         h2, p {
            animation: fadeInUp 1s ease-in-out;
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Slideshow Styling */
        .slideshow-container {
            position: relative;
            width: 80%;
            margin: 40px auto;
            overflow: hidden;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            margin-top:100px;
        }

        .slides {
            display: none;
            width: 100%;
            height: 70vh;
        }

        .slides img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 12px;
            transition: transform 0.5s ease;
        }

        /* Navigation Buttons */
        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            padding: 12px;
            border-radius: 50%;
            background-color: rgba(106, 13, 173, 0.7);
            color: #fff;
            border: none;
            outline: none;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
            font-size: 18px;
        }

        .prev:hover, .next:hover {
            background-color: #6a0dad;
        }

        .prev {
            left: 10px;
        }

        .next {
            right: 10px;
        }

        /* Registration Info Section */
        #registration-info {
            background: linear-gradient(to bottom, #ece4f7, #d6b2ef);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            margin-top: 50px;
            animation: fadeInUp 1s ease-in-out;
        }

        /* Contact Us Section */
        .contact-section {
            background-color: #f3e9fc;
            padding: 30px;
            border-radius: 12px;
            margin-top: 50px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            animation: fadeInUp 1s ease-in-out;
        }

        .contact-section a {
            text-decoration: none;
            font-size: 18px;
            color: inherit;
            transition: color 0.3s;
        }

        .contact-section a:hover {
            color: #6a0dad;
        }

        /* Animation for slide transitions */
        @keyframes slideEffect {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>

    <div class="w3-main" style="margin: 40px;">
        <!-- Welcome Section -->
        <div class="w3-container section-header" id="features">
            <h1 style="text-align: center; color: #6a0dad; animation: fadeInUp 1s;">Welcome to Student Portfolio Management</h1>
        </div>

        <!-- Slideshow Container -->
        <div class="slideshow-container">
            <div class="slides" style="animation: slideEffect 2s;">
                <img src="images/img1.jpg" alt="Feature 1">
            </div>
            <div class="slides" style="animation: slideEffect 2s;">
                <img src="images/img2.jpg" alt="Feature 2">
            </div>
            <div class="slides" style="animation: slideEffect 2s;">
                <img src="images/img3.jpg" alt="Feature 3">
            </div>
            <div class="slides" style="animation: slideEffect 2s;">
                <img src="images/img1.jpg" alt="Feature 4">
            </div>
            <div class="slides" style="animation: slideEffect 2s;">
                <img src="images/slide1.jpeg" alt="Feature 5">
            </div>

            <!-- Navigation Buttons -->
            <button class="prev" onclick="changeSlide(-1)">&#10094;</button>
            <button class="next" onclick="changeSlide(1)">&#10095;</button>
        </div>

        <!-- JavaScript for Slideshow -->
        <script>
            let slideIndex = 0;
            showSlide(slideIndex);

            function changeSlide(n) {
                showSlide(slideIndex += n);
            }

            function showSlide(n) {
                const slides = document.getElementsByClassName("slides");
                if (n >= slides.length) { slideIndex = 0; }
                if (n < 0) { slideIndex = slides.length - 1; }
                for (let i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                slides[slideIndex].style.display = "block";
            }

            // Auto-slide every 10 seconds
            setInterval(() => {
                changeSlide(1);
            }, 6000);
        </script>

        <!-- Registration Info Section -->
        <div class="w3-container" id="registration-info">
            <h2 class="w3-xxxlarge w3-text-purple">Registration and Login Details</h2>
            <hr style="width: 50px; border: 5px solid #6a0dad;" class="w3-round">
            <p>Welcome to the Student Portfolio Management System. This platform helps you manage and showcase your academic achievements effectively.</p>
            <p>Follow the steps below to get started:</p>
            <ul style="line-height: 1.8; margin-left: 20px;">
                <li><strong>Registration:</strong> Click on the <em>Register</em> button in the top navigation menu. Fill in your details such as name, email, student ID, and create a secure password. Ensure your contact information is up-to-date for notifications.</li>
                <li><strong>Login:</strong> Use the <em>Login</em> button to access your account with your registered email and password. Once logged in, you can view and update your profile, track progress, and submit required documents.</li>
                <li><strong>Profile Management:</strong> After logging in, navigate to the <em>Profile</em> section to view and update your personal information, academic details, and upload your portfolio items.</li>
                <li><strong>Security Tips:</strong> Always keep your password confidential and log out after each session to maintain security.</li>
            </ul>
            <p>For further assistance, please contact the support team through the <em>Contact Us</em> section at the bottom of the page.</p>
            <p>Join our platform today and start managing your student portfolio with ease!</p>
        </div>

        <!-- Contact Us Section -->
        <div class="contact-section" id="contact">
            <h2 style="color: #6a0dad;">Contact Us</h2>
            <p>If you have any questions or need assistance, feel free to reach out to us. We're here to help you!</p>
            <p>Connect with us through the following channels:</p>
            <ul style="list-style: none; padding: 0; display: flex; gap: 20px;">
                <li>
                    <a href="https://www.facebook.com/yourpage" target="_blank">
                        <i class="fa fa-facebook" style="font-size: 24px; color: #3b5998;"></i> Facebook
                    </a>
                </li>
                <li>
                    <a href="https://twitter.com/yourprofile" target="_blank">
                        <i class="fa fa-twitter" style="font-size: 24px; color: #1da1f2;"></i> Twitter
                    </a>
                </li>
                <li>
                    <a href="mailto:support@yourdomain.com">
                        <i class="fa fa-envelope" style="font-size: 24px; color: #d14836;"></i> Email
                    </a>
                </li>
            </ul>
        </div>
    </div>
</body>
</html>
