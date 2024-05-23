<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ajouter un Nouveau Projet</title>
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
        form {
            max-width: 600px;
            margin: auto;
            padding: 1em;
            border: 1px solid #ccc;
            border-radius: 1em;
        }
        div.form-group {
            margin-bottom: 1em;
        }
        label {
            margin-bottom: .5em;
            color: #333333;
            display: block;
        }
        input, textarea {
            border: 1px solid #CCCCCC;
            padding: .5em;
            font-size: 1em;
            width: 100%;
            box-sizing: border-box;
        }
        input[type="submit"] {
            padding: 0.7em;
            color: #fff;
            background-color: #007BFF;
            border: none;
            border-radius: .3em;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
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
    </div>
</div>





<h1>Ajouter un Nouveau Projet</h1>
<form action="${pageContext.request.contextPath}/AddProjectServlet?projectId=${project.pId}" method="post">
    <div class="form-group">
        <label for="name">Nom du Projet:</label>
        <input type="text" id="name" name="name" required>
    </div>
    <div class="form-group">
        <label for="description">Description:</label>
        <textarea id="description" name="description" required></textarea>
    </div>
    <div class="form-group">
        <label for="startDate">Date de Début:</label>
        <input type="date" id="startDate" name="startDate" required>
    </div>
    <div class="form-group">
        <label for="endDate">Date de Fin:</label>
        <input type="date" id="endDate" name="endDate" required>
    </div>
    <div class="form-group">
        <label for="budget">Budget:</label>
        <input type="text" id="budget" name="budget"  required>
    </div>
    <input type="submit" value="Add Project">
</form>
</body>
</html>
