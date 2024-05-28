<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Ajouter une Ressource</title>
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
    .content {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      flex: 1;
      width: 100%;
      padding: 20px;
      box-sizing: border-box;
    }
    .form-container {
      background-color: #1c1c1c;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
      width: 100%;
      max-width: 500px;
    }
    .form-container h2 {
      margin-bottom: 20px;
      text-align: center;
      color: #FFD700;
    }
    .form-group {
      margin-bottom: 15px;
    }
    .form-group label {
      display: block;
      margin-bottom: 5px;
      color: #FFD700;
    }
    .form-group input[type="text"],
    .form-group input[type="number"],
    .form-group input[type="url"] {
      width: 100%;
      padding: 10px;
      border-radius: 5px;
      border: 1px solid #333;
      background-color: #2c2c2c;
      color: #fff;
    }
    .form-group button {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 5px;
      background-color: #FFD700;
      color: #000;
      font-weight: bold;
      cursor: pointer;
    }
    .form-group button:hover {
      background-color: #FFC300;
    }
    .img-preview {
      text-align: center;
      margin-top: 10px;
    }
    .img-preview img {
      max-width: 100%;
      border-radius: 5px;
      display: none; /* Hide initially */
    }
    footer {
      width: 100%;
      display: flex;
      justify-content: space-evenly;
      align-items: flex-start;
      padding: 20px;
      background-color: #222;
      box-sizing: border-box;
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
  <script>
    document.addEventListener("DOMContentLoaded", function () {
      const rImgInput = document.getElementById('rImg');
      const previewImg = document.getElementById('previewImg');

      rImgInput.addEventListener('input', function () {
        const url = rImgInput.value;
        if (url) {
          previewImg.src = url;
          previewImg.style.display = 'block';
        } else {
          previewImg.style.display = 'none';
        }
      });
    });
  </script>
</head>
<body>

<div class="navbar">
  <div class="logo">
    <img style="border-radius: 50%;" src="https://i.pinimg.com/564x/b6/09/de/b609de84a01594a2a8d800a948c76168.jpg" width="140px" alt="Logo">
  </div>
  <div class="nav-links">
    <a href="${pageContext.request.contextPath}/home">Home</a>
    <a href="${pageContext.request.contextPath}/listProject">Projects</a>
    <a href="${pageContext.request.contextPath}/ListTasksServlet?projectId=${projectId}">Tasks</a>  </div>
</div>

<div class="content">
  <div class="form-container">
    <h2>Add Resource</h2>
    <form action="${pageContext.request.contextPath}/AddResourceServlet" method="POST">
      <div class="form-group">
        <label for="rName">Resource Name:</label>
        <input type="text" id="rName" name="rName" required>
      </div>
      <div class="form-group">
        <label for="rType">Resource Type:</label>
        <input type="text" id="rType" name="rType" required>
      </div>
      <div class="form-group">
        <label for="quantity">Quantity :</label>
        <input type="number" id="quantity" name="quantity" required>
      </div>
      <div class="form-group">
        <label for="provider">Provider:</label>
        <input type="text" id="provider" name="provider" required>
      </div>
      <div class="form-group">
        <label for="rImg">Resource's Picture's URL:</label>
        <input type="url" id="rImg" name="rImg" placeholder="http://example.com/image.jpg" required>
      </div>
      <div class="img-preview">
        <img id="previewImg" src="" alt="Resource Image Preview">
      </div>
      <div class="form-group">
        <input type="hidden" id="tId" name="tId" value="${taskId}">
      </div>
      <div class="form-group">
        <button type="submit">Add Resource</button>
      </div>
    </form>
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
