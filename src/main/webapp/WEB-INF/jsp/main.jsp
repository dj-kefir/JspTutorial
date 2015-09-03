<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title></title>
</head>
<script>
    function redirect() {
        window.location.replace("http://localhost:8080/template2")
    }
</script>
<body>

<c:forEach items="${sessionScope}" var="item">
    ${item.key} - ${item.value} <br>
</c:forEach>

<a href="/template2">Go to second template</a>

<input type="button" value="REDIRECT" onclick="redirect()">

</body>
</html>