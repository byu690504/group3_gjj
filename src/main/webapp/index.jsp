<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/23
  Time: 19:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>页面跳转公积金首页</title>
</head>
<body>
    <script>
        location.href="<%=request.getContextPath() %>/login/toIndex";
    </script>
</body>
</html>
