<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tasks Details</title>
    <style>
        body {
            background-color: black;
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: black;
            padding: 10px 20px;
            height: 70px;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 14px 20px;
        }

        .navbar a:hover {
            background-color: black;
        }

        .navbar .logo img {
            height: 65px;
        }

        .navbar .nav-links {
            display: flex;
            margin-top: 10px;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        .details {
            margin-top: 20px;
        }

        .details p {
            margin: 10px 0;
            font-size: 16px;
        }

        .details p strong {
            font-weight: bold;
            margin-right: 10px;
        }

        footer {
            z-index: 500;
            width: 100%;
            height: 30vh;
            display: flex;
            flex-direction: row;
            justify-content: space-evenly;
            align-items: flex-end;
            padding: 5rem 2vw;
            position: relative;
        }

        .button-container {
            display: flex;
            justify-content: space-evenly;
        }

        .button-group {
            display: flex;
            flex-direction: row;
            justify-content: space-evenly;
        }

        .task-button {
            background-color: #FFD700;
            padding: 10px 20px;
            text-decoration: none;
            color: #333;
            border-radius: 5px;
        }

        .update-button {
            background-color: #00FF00;
            padding: 10px 20px;
            text-decoration: none;
            color: #333;
            border-radius: 5px;
        }

        .delete-button {
            background-color: #FF0000;
            padding: 10px 20px;
            text-decoration: none;
            color: #333;
            border-radius: 5px;
        }
    </style>
</head>
<body>

<div class="navbar">
    <div class="logo">
        <img style="border-radius: 50%; margin-top: 15px;" src="https://i.pinimg.com/564x/b6/09/de/b609de84a01594a2a8d800a948c76168.jpg" width="140px" alt="Logo">
    </div>
    <div class="nav-links">
        <a href="${pageContext.request.contextPath}">Home</a>
        <a href="${pageContext.request.contextPath}/listProject">Projects</a>
    </div>
</div>

<h1 style="display: flex;justify-content: center;align-items: center;margin-left: 490px; background-color: #FFD700;color: #333;padding: 20px;color: white;width: 200px;border-radius: 10px">${task.tdescription}'s Resources</h1>

<div class="container">
    <div style="margin-left: 30px;" class="details">
        <c:if test="${not empty resource}">
            <p><strong>Type:</strong> ${resource.rType}</p>
            <p><strong>Quantité:</strong> ${resource.quantity}</p>
            <p><strong>Fournisseur:</strong> ${resource.provider}</p>
        </c:if>
    </div>
</div>


<div class="button-container">
    <div class="button-group">
        <a href="${pageContext.request.contextPath}/UpdateTaskServlet?taskId=${task.tId}&projectId=${projectId}" class="update-button">Update</a>
        <a href="${pageContext.request.contextPath}/DeleteTaskServlet?taskId=${task.tId}&projectId=${projectId}" class="delete-button">Delete</a>
    </div>
</div>

<footer id="footer">
    <div class="col col2">
        <p style="color:#EDBB38; font-size: 30px;">About us</p>
        <p style="color:white;">Our mission</p>
        <p style="color:white;">Privacy Policy</p>
        <p style="color:white;">Terms of service</p>
    </div>
    <div class="col col3">
        <p style="color:#EDBB38; font-size: 30px;">Services</p>
        <p style="color:white;">Products</p>
        <p style="color:white;">Join our team</p>
        <p style="color:white;">Partner with us</p>
    </div>
    <div class="col col1">
        <h3 style="color:#EDBB38; font-size: 30px;">Contact us</h3>
        <div class="social">
            <a style="color:white;" href="https://codepen.io/Juxtopposed" target="_blank" class="link">
                <img src="https://assets.codepen.io/9051928/codepen_1.png" alt="" />
            </a>
            <a style="color:white;" href="https://twitter.com/juxtopposed" target="_blank" class="link">
                <img src="https://assets.codepen.io/9051928/x.png" alt="" />
            </a>
            <a style="color:white;" href="https://youtube.com/@juxtopposed" target="_blank" class="link">
                <img src="https://assets.codepen.io/9051928/youtube_1.png" alt="" />
            </a>
        </div>
    </div>
</footer>
</body>
</html>
