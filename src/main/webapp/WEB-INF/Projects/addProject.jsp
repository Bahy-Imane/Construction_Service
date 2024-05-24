<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Project</title>
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
    </div>
</div>



<h1 style="display: flex;justify-content: center;align-items: center;margin-left: 490px; background-color: #FFD700;color: #333;padding: 20px;color: white;width: 200px;border-radius: 10px" >Add Project</h1>
<div>
<form action="${pageContext.request.contextPath}/AddProjectServlet?projectId=${project.pId}" method="post">
    <div class="form-group">
        <label for="name">Nom du Projet:</label>
        <input type="text" id="name" name="name" required>
    </div>
    <input type="submit" value="Add Project">
</form>
</div>


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
