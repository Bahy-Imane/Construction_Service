<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Mettre à jour une Ressource</title>
  <style>
    body {
      background-color: black;
      background-size: cover;
      background-position: center;
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      height: 100vh;
      color: #FFD700; /* Yellow text color for the body */
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
      margin: 50px auto;
      padding: 20px;
      border: 2px solid ;
      border-radius: 5px;
      background-color: #333;
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

    .form-group input[type="text"],
    .form-group input[type="number"],
    .form-group select {
      width: 100%;
      padding: 10px;
      border: 1px solid ;
      border-radius: 5px;
      box-sizing: border-box;
      background-color: black;
      color: white;
    }

    .form-group button {
      padding: 10px 20px;
      background-color: #FFD700;
      border: none;
      border-radius: 5px;
      color: black;
      cursor: pointer;
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
    <img style="border-radius: 50%; margin-top: 15px;" src="https://i.pinimg.com/564x/b6/09/de/b609de84a01594a2a8d800a948c76168.jpg" width="140px" alt="Logo">
  </div>
  <div class="nav-links">
    <a href="${pageContext.request.contextPath}/home">Home</a>
    <a href="${pageContext.request.contextPath}/listProject">Projects</a>
    <a href="${pageContext.request.contextPath}/ListTasksServlet?projectId=${projectId}">Tasks</a>
    <a href="${pageContext.request.contextPath}/ListResourcesServlet?taskId=${taskId}">Resources</a>
  </div>
</div>

<div class="form-container">
  <h2>Update Resource</h2>
  <form action="${pageContext.request.contextPath}/UpdateResourceServlet" method="POST">
    <input type="hidden" name="taskId" value="${taskId}">
    <input type="hidden" name="resourceId" value="${resourceId}">
    <input type="hidden" name="rId" value="${resource.rId}">
    <div class="form-group">
      <label for="rName">Resource Name:</label>
      <input type="text" id="rName" name="rName" value="${resource.rName}" required>
    </div>
    <div class="form-group">
      <label for="rType">Resource Type:</label>
      <input type="text" id="rType" name="rType" value="${resource.rType}" required>
    </div>
    <div class="form-group">
      <label for="quantity">Quantity:</label>
      <input type="number" id="quantity" name="quantity" value="${resource.quantity}" required>
    </div>
    <div class="form-group">
      <label for="provider">Provider:</label>
      <input type="text" id="provider" name="provider" value="${resource.provider}" required>
    </div>
    <div class="form-group">
      <label for="rImg">Resource Image:</label>
      <input type="text" id="rImg" name="rImg" value="${resource.rImg}" required>
    </div>
    <div class="form-group">
      <button type="submit">Update Resource</button>
    </div>
  </form>
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
