<%--
  Created by IntelliJ IDEA.
  User: ayoub
  Date: 13/04/2023
  Time: 00:50
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>RESULTAT</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<h1>RESULTAT</h1>
<p>${resultat}</p>
<p>L’utilisateur a joué : ${playerChoix}</p>
<p>Le serveur a joué : ${serverChoix}</p>
<p>L’utilisateur a gagner : ${userWin} fois</p>
<p>Le serveur a gagner : ${serverWin} fois</p>
<p>${partieResultat}</p>
<div class="btn-group" role="group" aria-label="Basic outlined example" >
    <button onclick="window.location.href='${pageContext.request.contextPath}/jouer';">
        Rejouer
    </button>
    <button onclick="window.location.href='${pageContext.request.contextPath}/logout';">
        Logout
    </button>
</div>
<%--<p><a href="${pageContext.request.contextPath}/logout" class="stretched-link">Logout</a></p>--%>
<%--<p><a href="${pageContext.request.contextPath}/jouer" class="stretched-link">Rejouer</a></p>--%>

</body>
</html>
