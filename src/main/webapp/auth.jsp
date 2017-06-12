<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <title>我的权限</title>
</head>
<body>
<h3>权限列表</h3>
<ul>
<shiro:hasPermission name="user:create">
    <li>添加用户</li>
</shiro:hasPermission>

<shiro:hasPermission name="user:update">
    <li>修改用户</li>
</shiro:hasPermission>

<shiro:hasPermission name="user:view">
    <li>查看用户</li>
</shiro:hasPermission>

</ul>
</body>
</html>