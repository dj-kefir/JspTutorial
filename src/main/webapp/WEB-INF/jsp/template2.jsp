<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>template 2</title>
</head>

<body>
  template 2  <br>

  <c:forEach items="${sessionScope}" var="item">
    ${item.key} - ${item.value} <br>
  </c:forEach>

  <br>
  <br>
  ${sessionScope['message']}

  <br>
  <br>
  ${message}
</body>
</html>
