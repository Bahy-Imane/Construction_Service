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

    .project-cards {
      display: flex;
      flex-wrap: wrap;
    }

    .card {
      width: 300px;
      margin: 20px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      overflow: hidden;
    }

    .cover-img {
      width: 100%;
      height: auto;
    }

    .project-details {
      padding: 16px;
    }

    .project-details h2 {
      margin-top: 0;
    }

    .details-link {
      display: block;
      text-align: center;
      background-color: #007bff;
      color: #fff;
      text-decoration: none;
      padding: 8px 0;
      border-radius: 4px;
    }

    .details-link:hover {
      background-color: #0056b3;
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

<h1 style="display: flex;justify-content: center;align-items: center;margin-left: 490px; background-color: #FFD700;color: #333;padding: 20px;color: white;width: 200px;border-radius: 10px">Our Projects</h1>

<div class="project-cards">
  <c:forEach var="project" items="${listProjects}">
    <div class="card">
      <div class="project-details">
        <h2>${project.pName}</h2>
        <a href="DetailsProjectsServlet?projectId=${project.pId}" class="details-link">Details</a>
      </div>
    </div>
  </c:forEach>
</div>



<!--<div class="project-cards">
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
</div>-->
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
