<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/24
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>单位登记申请前确认单位名称</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/registerByUnitName.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.all.js"></script>
</head>
<body>
<div id="body">
    <div id="header">
        <span>单位用户登记申请 --> 如已登记请确认单位名称</span>
    </div>
    <div id="registerByUnitName">
        <div id="span1">
            <span>确认单位名称</span>
        </div>
        <form action="<%=request.getContextPath() %>/" method="post" class="layui-form">
            <div class="layui-form-item">
                <label class="layui-form-label">单位名称</label>
                <div class="layui-input-inline">
                    <input type="text" name="agentName" id="agentName" required lay-verify="required" placeholder="请输入单位名称" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block layui-input-inline">
                    <button type="submit" class="layui-btn" lay-filter="">提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
</div>

</body>
</html>
