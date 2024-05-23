<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
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

        .container {
            background-image: url('https://i.pinimg.com/564x/9b/e1/17/9be1172eecb171a67304ca7c75806fa6.jpg');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 80vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container .content {
            background: rgba(0, 0, 0, 0.5); /* Semi-transparent black */
            backdrop-filter: blur(10px); /* Blurring effect */
            padding: 30px;
            border-radius: 20px;
            color: white;
            text-align: center;
            width: 50%;
            height: 30%;
        }

        .container .content h1, .container .content p {
            margin: 0;
            padding: 10px;
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
<div class="container">
    <div class="content">
        <h1 style="color:#EDBB38; font-size: 40px;">Welcome to Our Home Page</h1>
        <p style="font-size: 20px;">Explore our projects and enjoy your stay!</p>
    </div>
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
