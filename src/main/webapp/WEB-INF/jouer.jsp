
<%--
  Created by IntelliJ IDEA.
  User: ayoub
  Date: 13/04/2023
  Time: 00:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>TENTATIVE</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<h1>TENTATIVE</h1>
<form action="${pageContext.request.contextPath}/jouer" method="post">
    <div class="btn-group" role="group" aria-label="Basic outlined example" >
        <button type="submit" name="playerChoix" value="pierre" class="btn btn-outline-primary">Pierre</button>
        <button type="submit" name="playerChoix" value="feuille" class="btn btn-outline-primary">Feuille</button>
        <button type="submit" name="playerChoix" value="ciseaux" class="btn btn-outline-primary">Ciseaux</button>
    </div>
</form>
</body>
</html>
