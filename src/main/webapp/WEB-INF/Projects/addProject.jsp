<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ajouter un Projet</title>
</head>
<body>
<h1>Ajouter un Nouveau Projet</h1>
<form action="AddProjectsServlet" method="post">
    <label for="name">Nom du Projet:</label>
    <input type="text" id="name" name="name" required><br><br>

    <label for="description">Description:</label>
    <textarea id="description" name="description" required></textarea><br><br>

    <label for="startDate">Date de Début:</label>
    <input type="date" id="startDate" name="startDate" required><br><br>

    <label for="endDate">Date de Fin:</label>
    <input type="date" id="endDate" name="endDate" required><br><br>

    <label for="budget">Budget:</label>
    <input type="number" id="budget" name="budget" step="0.01" required><br><br>

    <input type="submit" value="Ajouter Projet">
</form>
</body>
</html>
