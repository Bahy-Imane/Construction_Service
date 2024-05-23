<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mettre à jour une Tâche</title>
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
        .form-container {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .form-container h2 {
            margin-top: 0;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
        }
        .form-group input[type="text"], .form-group input[type="date"], .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .form-group button {
            padding: 10px 20px;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            color: #fff;
            cursor: pointer;
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
        <a href="${pageContext.request.contextPath}/listTask">Tasks</a>
    </div>
</div>

<div class="form-container">
    <h2>Mettre à jour une Tâche</h2>
    <form action="${pageContext.request.contextPath}/UpdateTaskServlet" method="POST">
        <input type="hidden" name="projectId" value="${projectId}">
        <input type="hidden" name="tId" value="${task.tId}">
        <div class="form-group">
            <label for="description">Description de la Tâche:</label>
            <input type="text" id="description" name="tDescription" value="${task.tDescription}" required>
        </div>
        <div class="form-group">
            <label for="startDate">Date de Début:</label>
            <input type="date" id="startDate" name="tStartDate" value="${task.tStartdate}" required>
        </div>
        <div class="form-group">
            <label for="endDate">Date de Fin:</label>
            <input type="date" id="endDate" name="tEndDate" value="${task.tEndDate}" required>
        </div>
        <div class="form-group">
            <label for="status">Statut:</label>
            <select id="status" name="status" required>
                <option value="A faire" ${task.statut == 'A faire' ? 'selected' : ''}>A faire</option>
                <option value="En cours" ${task.statut == 'En cours' ? 'selected' : ''}>En cours</option>
                <option value="Terminé" ${task.statut == 'Terminé' ? 'selected' : ''}>Terminé</option>
            </select>
        </div>
        <div class="form-group">
            <label for="resources">Ressources:</label>
            <input type="text" id="resources" name="resources" value="${task.resources}" required>
        </div>
        <div class="form-group">
            <button type="submit">Update Task</button>
        </div>
    </form>
</div>

</body>
</html>
