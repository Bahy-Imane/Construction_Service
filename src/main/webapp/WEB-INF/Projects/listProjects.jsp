<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Liste des Projets</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
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

    .navbar .nav-links {
      display: flex;
    }

    h1 {
      display: flex;
      justify-content: center;
      align-items: center;
      background-color: #FFD700;
      color: black;
      padding: 20px;
      width: fit-content;
      margin: 20px auto;
      border-radius: 10px;
    }

    .project-cards {
      display: flex;
      flex-wrap: wrap;
      gap: 20px;
      justify-content: center;
      padding: 20px;
    }

    .card {
      background-color: #f9f9f9;
      border: 1px solid #ddd;
      border-radius: 5px;
      width: 300px;
      margin: 20px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s, box-shadow 0.3s;
      overflow: hidden;
    }

    .card:hover {
      transform: translateY(-10px);
      box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
    }

    .card img {
      width: 100%;
      height: 200px;
      object-fit: cover;
    }

    .project-details {
      padding: 16px;
      display: flex;
      flex-direction: row;
      justify-content: space-between;
    }

    .project-details h2 {
      margin-top: 0;
      color: black;
      font-size: 40px;
    }

    .details-link {

      padding: 8px 0;
      border-radius: 5px;
      width: 40px;
      height: 50px;
    }

    .details-link img {
      width: 40px;
      height: 40px;
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
    <a href="${pageContext.request.contextPath}/AddProjectServlet" class="add-button">Add Project</a>
  </div>
</div>

<h1>Our Projects</h1>

<div class="project-cards">
  <c:forEach var="project" items="${listProjects}">
    <div class="card">
      <img src="${project.pImg}" alt="Project Image">
      <div class="project-details">
        <h2>${project.pName}</h2>
        <a href="DetailsProjectsServlet?projectId=${project.pId}" class="details-link"><img src="Image/eye.png" alt="Details"></a>
      </div>
    </div>
  </c:forEach>
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
