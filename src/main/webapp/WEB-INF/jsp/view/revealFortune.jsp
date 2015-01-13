<%--@elvariable id="fortune" type="java.lang.String"--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Your rortune is revealed!</title>
</head>
<body>
<style type="text/css">
  body {
    font-family: Helvetica, Arial, sans-serif;
    font-size: 12pt;
    padding: 8px;
  }
</style>
<p>
  <b>Your Fortune:</b>
</p>
<p>
  <c:out value="${ fortune }" />
</p>
<p>
  May the DevOps spirits bless you with wisdom and a good backup plan.</p>
<p>
  <a href="<c:url value="index.jsp" />"><< Back</a>
</p>

</body>
</html>

