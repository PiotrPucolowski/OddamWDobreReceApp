<%--
  Created by IntelliJ IDEA.
  User: pucek
  Date: 20.06.2022
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Header</title>

    <link rel="stylesheet" href="<c:url value="../../resources/css/style.css"/>"/>
</head>
<body>
<header class="header--main-page">
   <jsp:include page="head.jsp"/>
        <ul>
            <li><a href="/" class="btn btn--without-border active">Start</a></li>
            <li><a href="steps" class="btn btn--without-border">O co chodzi?</a></li>
            <li><a href="about" class="btn btn--without-border">O nas</a></li>
            <li><a href="help" class="btn btn--without-border">Fundacje i organizacje</a></li>
            <li><a href="form" class="btn btn--without-border">Przekaż dary</a></li>
            <li><a href="contact" class="btn btn--without-border">Kontakt</a></li>
        </ul>
    </nav>

    <div class="slogan container container--90">
        <div class="slogan--item">
            <h1>
                Zacznij pomagać!<br/>
                Oddaj niechciane rzeczy w zaufane ręce
            </h1>
        </div>
    </div>
</header>

</body>
</html>
