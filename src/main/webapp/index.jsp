<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>webapp_bank</title>
</head>
<body>

<a href="account/findAll">测试查询</a>

<h2 align="center">测试功能界面（仅用于测试）</h2>

<form action="account/save" method="post">
    姓名：<input type="text" name="name" /><br/>
    密码：<input type="password" name="password" /><br/>
    级别：<input type="number" name="level" /><br/>
    <br/>
    <input type="submit" value="保存"/><br/>
</form>

<a href="management/index">管理主页</a>

<img src="assets/images/logo-icon.png" class="logo-icon" alt="logo icon">

</body>
</html>
