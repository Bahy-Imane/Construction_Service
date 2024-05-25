<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Liste des Ressources</title>
  <style>
    body {
      font-family: Arial, sans-serif;
    }
    .navbar {
      background-color: #333;
      overflow: hidden;
    }
    .navbar a {
      float: left;
      display: block;
      color: #f2f2f2;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
    }
    .navbar a:hover {
      background-color: #ddd;
      color: black;
    }
    .resource-cards {
      display: flex;
      flex-wrap: wrap;
      gap: 20px;
      justify-content: center;
      padding: 20px;
    }
    .resource-card {
      background-color: #f9f9f9;
      border: 1px solid #ddd;
      border-radius: 5px;
      padding: 20px;
      width: calc(50% - 40px); /* Two cards per row */
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    .resource-card h2 {
      margin-top: 0;
    }
    .button-container {
      margin-top: 20px;
      display: flex;
      gap: 10px;
    }
    .update-button, .delete-button {
      padding: 10px 15px;
      border: none;
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
    <a href="${pageContext.request.contextPath}/AddResourceServlet?taskId=${taskId}">Add Resource</a>

  </div>
</div>

<h1>Liste des Ressources</h1>
<div class="resource-cards">
  <c:forEach var="resource" items="${resources}">
    <div class="resource-card">
      <h2>${resource.rName}</h2>
      <div class="button-container">
        <a href="${pageContext.request.contextPath}/UpdateResourceServlet?resourceId=${resource.rId}&taskId=${taskId}" class="update-button">Update</a>
        <a href="${pageContext.request.contextPath}/DeleteResourceServlet?resourceId=${resource.rId}&taskId=${taskId}" class="delete-button">Delete</a>
      </div>
    </div>
  </c:forEach>
</div>
</body>
</html>
