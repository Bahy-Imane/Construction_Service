<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Task</title>
    <style>
        body {
            background-color: black;
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            color: white;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
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
            background-color: #333;
        }

        .navbar .logo img {
            height: 65px;
            border-radius: 50%;
        }

        h1 {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #FFD700;
            color: #333;
            padding: 20px;
            width: fit-content;
            margin: 20px auto;
            border-radius: 10px;
        }


        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #333;
            padding: 20px;
            border-radius: 10px;
            width: 50%;
            margin: auto;
        }

        form label {
            margin: 10px 0 5px;
            color: #FFD700;
        }

        form input {
            padding: 10px;
            border-radius: 5px;
            border: none;
            width: 100%;
            margin-bottom: 15px;
        }

        form input[type="submit"] {
            background-color: #FFD700;
            color: #333;
            cursor: pointer;
            font-weight: bold;
        }

        form input[type="submit"]:hover {
            background-color: #FFC300;
        }

        footer {
            display: flex;
            justify-content: space-evenly;
            align-items: flex-start;
            padding: 40px 20px;
            background-color: #222;
        }

        footer .col {
            flex: 1;
            padding: 0 20px;
        }

        footer .col h3, footer .col p {
            color: #EDBB38;
            margin-bottom: 10px;
        }

        footer .col p {
            color: white;
        }

        footer .social a {
            color: white;
            margin-right: 10px;
        }

        footer .social img {
            height: 30px;
        }
    </style>
</head>
<body>
<div class="navbar">
    <div class="logo">
        <img src="https://i.pinimg.com/564x/b6/09/de/b609de84a01594a2a8d800a948c76168.jpg" width="140px" alt="Logo">
    </div>
    <div class="nav-links">
        <a href="${pageContext.request.contextPath}">Home</a>
        <a href="${pageContext.request.contextPath}/listProject">Projects</a>
    </div>
</div>

<h1>Update Task</h1>
<form action="${pageContext.request.contextPath}/UpdateTaskServlet" method="POST" >
    <input type="hidden" name="tId" value="${task.tId}"/>
    <input type="hidden" name="projectId" value="${projectId}"/>


    <label for="description">Task Description:</label>
    <input type="text" id="description" name="tDescription" value="${task.tDescription}" required/>

    <label for="startDate">Start Date:</label>
    <input type="date" id="startDate" name="tStartDate" value="${task.tStartdate}" required/>

    <label for="endDate">End Date:</label>
    <input type="date" id="endDate" name="tEndDate" value="${task.tEndDate}" required/>

    <label for="status">Status:</label>
    <select id="status" name="status" required>
        <option value="To Do">To Do</option>
        <option value="In Progress">In Progress</option>
        <option value="Done">Done</option>
    </select>

    <label for="description">Task resources:</label>
    <input type="text" id="resources" name="resources" value="${task.resources}" required/>

    <div class="form-group">
        <label for="tImg">Project's Pic URL:</label>
        <input type="url" id="tImg" name="tImg" placeholder="http://example.com/image.jpg" value="${task.tImg}" required>
    </div>
    <div class="img-preview">
        <img id="previewImg" src="" alt="Task Image Preview">
    </div>
    <input type="submit" value="Update Task"/>
</form>


<footer id="footer">
    <div class="col">
        <h3>About us</h3>
        <p>Our mission</p>
        <p>Privacy Policy</p>
        <p>Terms of service</p>
    </div>
    <div class="col">
        <h3>Services</h3>
        <p>Products</p>
        <p>Join our team</p>
        <p>Partner with us</p>
    </div>
    <div class="col">
        <h3>Contact us</h3>
        <div class="social">
            <a href="https://codepen.io/Juxtopposed" target="_blank">
                <img src="https://assets.codepen.io/9051928/codepen_1.png" alt="CodePen">
            </a>
            <a href="https://twitter.com/juxtopposed" target="_blank">
                <img src="https://assets.codepen.io/9051928/x.png" alt="Twitter">
            </a>
            <a href="https://youtube.com/@juxtopposed" target="_blank">
                <img src="https://assets.codepen.io/9051928/youtube_1.png" alt="YouTube">
            </a>
        </div>
    </div>
</footer>
</body>
</html>
