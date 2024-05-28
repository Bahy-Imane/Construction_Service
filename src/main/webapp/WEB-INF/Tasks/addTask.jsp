<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Add Task</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: black;
      color: white;
      margin: 0;
      padding: 0;
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

    .form-container {
      background-color: #333;
      padding: 20px;
      border-radius: 10px;
      width: 50%;
      margin: auto;
    }

    form label {
      margin: 10px 0 5px;
      color: #FFD700;
    }

    form input,
    form select {
      padding: 10px;
      border-radius: 5px;
      border: none;
      width: 100%;
      margin-bottom: 15px;
      background-color: black; /* Noir */
      color: white; /* Blanc */
    }

    form input[type="submit"] {
      background-color: #FFD700; /* Jaune */
      color: black; /* Noir */
      cursor: pointer;
      font-weight: bold;
    }

    form input[type="submit"]:hover {
      background-color: #FFC300; /* Jaune plus foncé */
    }

    .img-preview {
      margin-bottom: 15px;
    }

    .img-preview img {
      max-width: 100%;
    }

    footer {
      display: flex;
      justify-content: space-evenly;
      align-items: flex-start;
      padding: 40px 20px;
      background-color: #222;
      color: #EDBB38; /* Jaune */
    }

    footer .col {
      flex: 1;
      padding: 0 20px;
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
  </div>
</div>

<div class="form-container">
  <h2>Tasks</h2>
  <form action="${pageContext.request.contextPath}/AddTaskServlet" method="POST" class="form">
    <div class="form-group">
      <label for="description">Task Description :</label>
      <input type="text" id="description" name="tDescription" required>
    </div>
    <div class="form-group">
      <label for="startDate">Start Date:</label>
      <input type="date" id="startDate" name="tStartDate" required>
    </div>
    <div class="form-group">
      <label for="endDate">End Date:</label>
      <input type="date" id="endDate" name="tEndDate" required>
    </div>

    <div class="form-group">
      <label for="status">Status:</label>
      <select id="status" name="statut" required>
        <option value="A faire">To Do</option>
        <option value="En cours">In Progress</option>
        <option value="Terminé">Done</option>
      </select>
    </div>
    <div class="form-group">
      <label for="resources">Ressources:</label>
      <input type="text" id="resources" name="resources" required>
    </div>
    <div class="form-group">
      <label for="tImg">Task's Picture's URL:</label>
      <input type="url" id="tImg" name="tImg" placeholder="http://example.com/image.jpg" required>
    </div>
    <div class="img-preview">
      <img id="previewImg" src="" alt="Aperçu de l'Image de la Tâche">
    </div>
    <div>
      <input type="hidden" id="projectId" name="projectId" value="${projectId}">
    </div>
    <div class="form-group">
      <input type="submit" value="Ajouter">
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
