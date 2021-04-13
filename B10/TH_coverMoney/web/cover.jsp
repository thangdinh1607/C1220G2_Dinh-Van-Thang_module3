<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>

<% float rate = Float.parseFloat(request.getParameter("rate"));
    float usd = Float.parseFloat(request.getParameter("usd"));
    float vnd = rate * usd;
%>

<h1>
    <% if (rate > 0 && usd > 0) {%>
    <h1>Rate: <%=rate%></h1>
    <h1>USD: <%=usd%></h1>
    <h1>VND: <%=vnd%></h1>
    <%} else {%>
    <h1>input false</h1>
    <%}%>
</h1>
</body>
</html>
