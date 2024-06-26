<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ajouter un Projet</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: black;
            color: white;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh; /* Assurer que le corps prend toute la hauteur de la fenêtre */
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
            flex: 1; /* Prendre l'espace disponible */
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        form label {
            margin: 10px 0 5px;
            color: #FFD700;
        }

        form input,
        form select,
        form textarea {
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
            background-color: #222;
            color: #EDBB38; /* Jaune */
            padding: 40px 20px;
            display: flex;
            justify-content: space-evenly;
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
        <a href="${pageContext.request.contextPath}/AddProjectServlet" class="add-button">Add Project</a>
    </div>
</div>

<div class="form-container">
    <h2>Ajouter un Projet</h2>
    <form action="${pageContext.request.contextPath}/AddProjectServlet" method="post">
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
            <input type="text" id="budget" name="budget" required>
        </div>
        <div class="form-group">
            <label for="pImg">URL de l'Image du Projet:</label>
            <input type="url" id="pImg" name="pImg" placeholder="http://example.com/image.jpg" required>
        </div>
        <div class="img-preview">
            <img id="previewImg" src="" alt="Project Image Preview">
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

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const pImgInput = document.getElementById('pImg');
        const previewImg = document.getElementById('previewImg');

        pImgInput.addEventListener('input', function () {
            const url = pImgInput.value;
            if (url) {
                previewImg.src = url;
                previewImg.style.display = 'block';
            } else {
                previewImg.style.display = 'none';
            }
        });
    });
</script>
</body>
</html>
