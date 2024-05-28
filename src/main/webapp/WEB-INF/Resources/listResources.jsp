<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Liste des Ressources</title>
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
      width: calc(50% - 40px);
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }


    .resource-card h2 {
      margin-top: 0;
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
    <a href="${pageContext.request.contextPath}/ListTasksServlet?projectId=${projectId}">Tasks</a>
    <a href="${pageContext.request.contextPath}/AddResourceServlet?taskId=${taskId}">Add Resource</a>

  </div>
</div>



<h1 style="display: flex;justify-content: center;align-items: center;margin-left: 490px; background-color: #FFD700;color: #333;padding: 20px;color: white;width: 200px;border-radius: 10px">Liste des Ressources</h1>
<div class="resource-cards">
  <c:forEach var="resource" items="${resources}">
    <div class="resource-card">
      <c:if test="${not empty task.tImg}">
      <h2>${resource.rName}</h2>
      <p><strong>Type:</strong> ${resource.rType}</p>
      <p><strong>Quantity:</strong> ${resource.quantity}</p>
      <p><strong>Provider:</strong> ${resource.provider}</p>
      </c:if>
      <div style="display: flex;flex-direction: row;justify-content: space-evenly" class="card-footer">
        <a href="${pageContext.request.contextPath}/UpdateResourceServlet?resourceId=${resource.rId}&taskId=${taskId}" >
          <i class="bi bi-pencil"></i> Edit
        </a>

        <a href="${pageContext.request.contextPath}/DeleteResourceServlet?resourceId=${resource.rId}&taskId=${taskId}" >
          <i class="bi bi-trash"></i> Delete
        </a>
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
