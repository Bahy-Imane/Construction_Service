<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Project</title>
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



<h1>Update Project</h1>
<form action="${pageContext.request.contextPath}/UpdateProjectServlet" method="POST">

    <input type="hidden" name="id" value="${project.pId}"/>

    <label for="name">Project Name:</label>
    <input type="text" id="name" name="name" value="${project.pName}" required/>

    <label for="description">Description:</label>
    <input type="text" id="description" name="description" value="${project.pDescription}" required/>

    <label for="startDate">Start Date:</label>
    <input type="date" id="startDate" name="startDate" value="${project.pStartdate}" required/>

    <label for="endDate">End Date:</label>
    <input type="date" id="endDate" name="endDate" value="${project.pEndDate}" required/>

    <label for="budget">Budget:</label>
    <input type="text" id="budget" name="budget" value="${project.budget}"  required/>

    <input type="submit" value="Update Project"/>
</form>
</body>
</html>
