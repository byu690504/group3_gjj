2<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/23
  Time: 19:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>北京住房公积金网</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/index.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.js"></script>
</head>
<body class="layui-layout-body">
    <div>
        <div id="header">
            <span>北京住房公积金网</span>
        </div>
        <div id="publicity">

        </div>
        <div id="turns">

        </div>
        <div id="business">
            <div id="b1">
                <i class="layui-icon layui-icon-friends"></i>
                <a href="/" type="button" class="layui-btn layui-btn-fluid">个人网上业务平台</a>
            </div>
            <div id="b2">
                <i class="layui-icon layui-icon-component"></i>
                <a href="<%=request.getContextPath() %>/login/toLogin" type="button" class="layui-btn layui-btn-fluid">单位网上业务平台</a>
            </div>
        </div>
    </div>
</body>
</html>
