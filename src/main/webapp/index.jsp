<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<body>
<shiro:guest>
    你还没有登录，<a href="login.jsp">点击登录</a><br/>
</shiro:guest>
<shiro:user>
    欢迎你，[<shiro:principal/>]，<a href="${pageContext.request.contextPath}/logout">点击退出</a><br/>
</shiro:user>
</body>
</html>
