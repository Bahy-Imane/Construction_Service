<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Liste des Tâches</title>
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
        .task-cards {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            padding: 20px;
        }
        .task-card {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
            width: 300px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .task-card h2 {
            margin-top: 0;
        }
        .task-card p {
            margin: 5px 0;
        }
        .button-container {
            display: flex;
            justify-content: space-between;
        }
        .button-container a {
            padding: 10px 15px;
            border-radius: 5px;
            text-decoration: none;
            color: #fff;
        }
        .update-button {
            background-color: #007bff;
        }
        .delete-button {
            background-color: #dc3545;
        }
        .resources-button {
            background-color: #28a745;
        }
    </style>
</head>
<body>

<div class="navbar">
    <div class="logo">
        <img style="border-radius: 50%; margin-top: 15px;" src="https://i.pinimg.com/564x/b6/09/de/b609de84a01594a2a8d800a948c76168.jpg" width="140px" alt="Logo">
    </div>
    <div class="nav-links">
        <a href="${pageContext.request.contextPath}/home">Home</a>
        <a href="${pageContext.request.contextPath}/listProject">Projects</a>
        <a href="${pageContext.request.contextPath}/ListTasksServlet?projectId=${projectId}">Tasks</a>
        <a href="${pageContext.request.contextPath}/AddTaskServlet?projectId=${projectId}">Add Task</a>
    </div>
</div>



<h2>List Of Tasks</h2>

<div class="task-cards">
    <c:forEach var="task" items="${tasks}">
        <div class="task-card">
            <h2>${task.tDescription}</h2>
            <a href="DetailsTasksServlet?taskId=${task.tId}" class="details-link">Details</a>
        </div>
    </c:forEach>
</div>

</body>
</html>
