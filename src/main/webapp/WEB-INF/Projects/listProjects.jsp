<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Liste des Projets</title>
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

    .project-cards {
      display: flex;
      flex-wrap: wrap;
      gap: 20px;
      justify-content: center;
    }

    .project-card {
      background-color: #f9f9f9;
      border: 1px solid #ddd;
      border-radius: 5px;
      padding: 20px;
      width: calc(50% - 40px); /* Two cards per row */
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .project-card h2 {
      margin-top: 0;
    }

    .button-container {
      margin-top: 20px;
      display: flex;
      gap: 10px;
    }

    .task-button, .update-button, .delete-button {
      padding: 10px 15px;
      border: none;
      border-radius: 5px;
      text-decoration: none;
      color: #fff;
    }

    .task-button {
      background-color: #28a745;
    }

    .update-button {
      background-color: #007bff;
    }

    .delete-button {
      background-color: #dc3545;
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
    <a href="${pageContext.request.contextPath}/AddProjectServlet" class="add-button">Add Project</a>
  </div>
</div>






<h1>Liste des Projets</h1>

<div class="project-cards">
  <c:forEach var="project" items="${listProjects}">
    <div class="project-card">
      <h2>${project.pName}</h2>
      <p><strong>Description:</strong> ${project.pDescription}</p>
      <p><strong>Date de Début:</strong> ${project.pStartdate}</p>
      <p><strong>Date de Fin:</strong> ${project.pEndDate}</p>
      <p><strong>Budget:</strong> ${project.budget}</p>
      <div class="button-container">
        <a href="${pageContext.request.contextPath}/ListTasksServlet?projectId=${project.pId}" class="task-button">See All Tasks</a>
        <a href="${pageContext.request.contextPath}/UpdateProjectServlet?projectId=${project.pId}" class="update-button">Update</a>
        <a href="${pageContext.request.contextPath}/DeleteProjectServlet?projectId=${project.pId}" class="delete-button">Delete</a>
      </div>
    </div>
  </c:forEach>
</div>
</body>
</html>
