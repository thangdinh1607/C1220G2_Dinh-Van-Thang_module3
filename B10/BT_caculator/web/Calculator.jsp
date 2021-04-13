<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 4/10/2021
  Time: 11:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>

<%--<c:set var="salary" scope="session" value="${ex}"/>--%>
<c:if test="${ex==null}">
  <h1> first --<c:out value="${firstOperand}"></c:out></h1>
   <h1> second ---<c:out value="${secondOperand}"></c:out></h1>
 <h1> result --   <c:out value="${resultFinal}"></c:out></h1>
<%--    <h1>firstOperand : <%=request.getAttribute("firstOperand")%></h1>--%>
<%--    <h1>secondOperand :<%=request.getAttribute("secondOperand")%></h1>--%>
<%--    <h1>resultFinal : <%=request.getAttribute("resultFinal")%></h1>--%>
</c:if>
<c:if test="${ex!=null}">
    <h1><%=request.getAttribute("ex")%>
    </h1>
</c:if>



</body>
</html>
