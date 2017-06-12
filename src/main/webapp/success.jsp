<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <title>登陆成功</title>
</head>
<body>
<h3>当前用户[<shiro:principal/>]</h3>
     <shiro:hasAnyRoles name="admin">
         拥有角色admin
     </shiro:hasAnyRoles>
<shiro:hasAnyRoles name="customer">
    拥有角色customer
</shiro:hasAnyRoles>

<a href="auth.jsp">查看权限</a>
</body>
</html>