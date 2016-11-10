<%--
  Created by IntelliJ IDEA.
  User: CI
  Date: 2016-11-09
  Time: 오후 4:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body class="main">
    <header>
        <div class="container">
            <div class="row">
                <div class="introduce">
                    <img class="img-responsive" width="200px" height="200px" src="<c:url value="/img/spring-logo.png"/>" alt="">
                    <h1>Spring Study</h1>
                </div>
                <hr class="star-light">
            </div>
        </div>
    </header>
    <section class="dependency">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h3>Back-End Libraries</h3>
                    <hr class="star-primary">
                </div>
                <ul>
                    <li>
                        <span class="alert alert-success"><strong>Spring Framework</strong> - 4.3.4.RELEASE</span>
                    </li>
                    <li>
                        <span class="alert alert-success"><strong>JSTL</strong> - 1.2</span>
                    </li>
                    <li>
                        <span class="alert alert-success"><strong>Tiles</strong> - 3.0.7</span>
                    </li>
                    <li>
                        <span class="alert alert-success"><strong>Logback</strong> - 1.1.7</span>
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <h3>Front-End Libraries</h3>
                    <hr class="star-primary">
                </div>
                <ul>
                    <li>
                        <span class="alert alert-warning"><strong>jQuery</strong> - LATEST</span>
                    </li>
                    <li>
                        <span class="alert alert-warning"><strong>BootStrap</strong> - LATEST</span>
                    </li>
                    <li>
                        <span class="alert alert-warning"><strong>BootFlat</strong> - LATEST</span>
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <h3>Tools</h3>
                    <hr class="star-primary">
                </div>
                <ul>
                    <li>
                        <span class="alert alert-danger"><strong>Maven</strong> - 3.3.9</span>
                    </li>
                    <li>
                        <span class="alert alert-danger"><strong>NPM</strong> - 3.10.8</span>
                    </li>
                    <li>
                        <span class="alert alert-danger"><strong>Bower</strong> - 1.8.0</span>
                    </li>
                </ul>
            </div>
        </div>
    </section>
</body>
</html>
