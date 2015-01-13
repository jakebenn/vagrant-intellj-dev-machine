<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>A simple web app</title>
  <style type="text/css">
    body {
      font-family: Helvetica, Arial, sans-serif;
      font-size: 12pt;
      padding: 8px;
    }
  </style>
</head>
<body>
<p>
  <b>Your fortune will soon be revealed!</b>
</p>
<p>But first tell me, were you born in an even numbered year? Or an odd numbered year?</p>
<p>
  <ul>
  <li>I was born in an <a href="<c:url value="fortuneServlet?birthYear=even" />">even numbered</a> year </li>
  <li>I was born in an <a href="<c:url value="fortuneServlet?birthYear=odd" />">odd numbered</a> year </li>
  </ul>

</p>
</body>
</html>
