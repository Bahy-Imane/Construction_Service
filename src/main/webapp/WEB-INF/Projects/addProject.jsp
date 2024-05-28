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
            justify-content: center;
            align-items: center;
            height: 100vh;
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
        .form-group input[type="date"],
        .form-group input[type="url"],
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #333;
            background-color: #2c2c2c;
            color: #fff;
        }
        .form-group textarea {
            resize: vertical;
        }
        .form-group input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #FFD700;
            color: #000;
            font-weight: bold;
            cursor: pointer;
        }
        .form-group input[type="submit"]:hover {
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
    </style>
</head>
<body>

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

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const pImgInput = document.getElementById('pImg');
        const previewImg = document.getElementById('previewImg');

        pImgInput.addEventListener('input', function () {
            const url = pImgInput.value;
            if (url) {
                previewImg.src = url;
                previewImg.style.display = 'block'; w
            } else {
                previewImg.style.display = 'none';
            }
        });
    });
</script>
</body>
</html>
