<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: white;
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: black;
            padding: 10px 20px;
            height: 100px;
            animation: fadeIn 2s ease-in-out;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 14px 20px;
            transition: background-color 0.3s;
        }

        .navbar a:hover {
            background-color: #555;
        }

        .navbar .logo img {
            height: 65px;
        }

        .navbar .nav-links {
            display: flex;
            margin-top: 10px;
        }

        .container .content {
            background: rgba(0, 0, 0, 0.5);
            backdrop-filter: blur(10px);
            padding: 30px;
            border-radius: 20px;
            color: white;
            text-align: center;
            width: 50%;
            height: 80%;
            animation: slideIn 1s ease-in-out;
        }

        .container .content h1, .container .content p {
            margin: 0;
            padding: 10px;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes slideIn {
            from { transform: translateY(100px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        .slide {
            min-width: 100%;
            transition: opacity 0.5s ease-in-out;
        }

        .slide img {
            width: 100%;
            border-radius: 20px;
        }

        footer {
            display: flex;
            justify-content: space-evenly;
            align-items: flex-start;
            padding: 40px 20px;
            background-color: #222;
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

        footer p, footer h3 {
            color: #EDBB38;
        }

        .social img {
            width: 40px;
            margin: 0 10px;
        }

        .carousel-caption {
            position: absolute;
            top: 30%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: rgba(0, 0, 0, 0.7);
            padding: 20px;
            border-radius: 10px;
            color: white;
            text-align: center;
            width: 50%;
            height: 30%;
        }

        .content-row {
            display: flex;
            justify-content: center;
            margin: 20px 0;
        }

        .content-col {
            background: rgba(0, 0, 0, 0.7);
            padding: 20px;
            margin: 10px;
            border-radius: 10px;
            color: white;
            text-align: center;
            flex: 1;
        }
       button a {
           text-decoration: none;
       }

        .container {
            background-color: #333;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .styled-paragraph {
            color: #fff;
            font-size: 16px;
            line-height: 1.6;
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

<!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">
    <!-- Indicators/dots -->
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
        <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
        <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
    </div>

    <!-- The slideshow/carousel -->
    <div class="carousel-inner" style="margin-top: 25px;height: 500px;">
        <div class="carousel-item active">
            <img src="https://wallpaperaccess.com/full/3434385.jpg" alt="Los Angeles" class="d-block w-100">
            <div class="carousel-caption">
                <h1 style="color:#EDBB38; font-size: 30px;margin-top: 40px;">Welcome to Our Home Page</h1>
                <p style="font-size: 20px;margin-top: 40px;">Explore our projects and enjoy your stay!</p>
                <button style="width: 100px;height: 50px;background-color: #EDBB38;border-radius: 10px;"><a style="text-align: center;color: white;" href="${pageContext.request.contextPath}/listProject">Projects</a></button>

            </div>
        </div>
        <div class="carousel-item">
            <img src="https://wonderfulengineering.com/wp-content/uploads/2014/10/construction-23.jpg" alt="Chicago" class="d-block w-100">
            <div class="carousel-caption">
                <h1 style="color:#EDBB38; font-size: 30px;margin-top: 40px;">Welcome to Our Home Page</h1>
                <p style="font-size: 20px;margin-top: 40px;">Explore our projects and enjoy your stay!</p>
                <button style="width: 100px;height: 50px;background-color: #EDBB38;border-radius: 10px;"><a style="text-align: center;color: white;" href="${pageContext.request.contextPath}/listProject">Projects</a></button>
            </div>
        </div>
        <div class="carousel-item">
            <img src="https://wallpaperaccess.com/full/937101.jpg" alt="New York" class="d-block w-100">
            <div class="carousel-caption">
                <h1 style="color:#EDBB38; font-size: 30px;margin-top: 16px;">Welcome to Our Home Page</h1>
                <p style="font-size: 20px;margin-top: 27px;">Explore our projects and enjoy your stay!</p>
                <button style="width: 100px;height: 50px;background-color: #EDBB38;border-radius: 10px;"><a style="text-align: center;color: white;" href="${pageContext.request.contextPath}/listProject">Projects</a></button>
            </div>
        </div>
    </div>


    <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
        <span class="carousel-control-next-icon"></span>
    </button>
</div>

<!-- New content section -->
<!-- New content section with loading animations -->
<!-- Containers stylisés pour les paragraphes -->
<div class="content-row">
    <div class="content-col">
        <div class="container">
            <div class="loader"></div>
            <h3 style="color: #EDBB38">Recent Projects</h3>
            <p class="styled-paragraph">Discover our recent projects in the construction field. From conception to completion, explore our latest achievements.</p>
        </div>
    </div>
    <div class="content-col">
        <div class="container">
            <div class="loader"></div>
            <h3 style="color: #EDBB38">Services</h3>
            <p class="styled-paragraph">We offer a complete range of construction services, including residential, commercial, and industrial construction, renovation, landscaping, etc.</p>
        </div>
    </div>
    <div class="content-col">
        <div class="container">
            <div class="loader"></div>
            <h3 style="color: #EDBB38">Partnerships</h3>
            <p class="styled-paragraph">Partner with us for innovative and sustainable construction projects. We are always seeking enriching collaborations with businesses and professionals.</p>
        </div>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</html>
