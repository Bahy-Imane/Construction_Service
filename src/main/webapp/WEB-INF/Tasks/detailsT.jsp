<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tasks Details</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
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
            display: flex;
            flex-direction: column;
            justify-content: space-evenly;
            max-width: 600px;
            margin: 0 auto;
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
            margin-top: 16px;
            margin-left: 20px;
            background-color: #EDBB38;
            padding: 10px;
            border-radius: 20px;
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



        .task-image {
            text-align: center;
            margin-bottom: 20px;
        }

        .task-image img {
            width: 200px;
            height: 250px;
            border-radius: 8px;
        }
        .card-footer a {
            display: inline-block;
            margin: 0 10px;
            color: #FFD700;
            text-decoration: none;

        }

        .card-footer i {
            margin-right: 5px;
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

<h1 style="display: flex;justify-content: center;align-items: center;margin-left: 490px; background-color: #FFD700;color: #333;padding: 20px;color: white;width: 200px;border-radius: 10px">${project.pName}'s Task</h1>
<div class="container">
    <div class="task-image">
        <c:if test="${not empty task.tImg}">
            <img src="${task.tImg}" alt="${task.tDescription} Image">
        </c:if>
    </div>

    <div class="details">
            <c:if test="${not empty task}">
            <p><strong>Description :</strong> ${task.tDescription}</p>
            <p><strong>Start Date :</strong> ${task.tStartdate}</p>
            <p><strong>End Date :</strong> ${task.tEndDate}</p>
            <p><strong>Statut :</strong> ${task.statut}</p>
            <p><strong>Resources :</strong> ${task.resources}</p>

        </c:if>
    </div>

    <div style="display: flex;flex-direction: row;justify-content: space-evenly" class="card-footer">
        <a href="${pageContext.request.contextPath}/UpdateTaskServlet?taskId=${task.tId}&projectId=${projectId}" class="update-button">
            <i class="bi bi-pencil"></i> Edit
        </a>
        <a href="${pageContext.request.contextPath}/ListResourcesServlet?taskId=${task.tId}" class="resources-button">
            <i class="bi bi-list-check"></i> View Resources
        </a>
        <a href="${pageContext.request.contextPath}/DeleteTaskServlet?taskId=${task.tId}&projectId=${projectId}" class="delete-button">
            <i class="bi bi-trash"></i> Delete
        </a>
    </div>

</div>







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
