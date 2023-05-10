<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>
<%--<%--%>
<%--        Cookie cookie = new Cookie("login", "false");--%>
<%--        response.addCookie(cookie);--%>
<%--    %>--%>
<c:redirect url="/home.jsp"> </c:redirect>
</body>
<script>
    localStorage.removeItem('login');
</script>
</html>