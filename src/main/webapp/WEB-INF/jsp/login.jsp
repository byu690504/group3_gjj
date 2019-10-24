<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/23
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>单位用户登录</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/login.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.all.js"></script>
</head>
<body class="layui-layout-body">
    <div id="body">
        <div id="header">
            <span>单位用户登录 --> 输入登录信息</span>
        </div>
        <div id="login">
            <div id="span1">
                <span>单位用户登录</span>
            </div>
            <form action="<%=request.getContextPath() %>/login/login" method="post" class="layui-form">
                <div class="layui-form-text layui-inline" id="span2">
                    <span>${error}</span>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">用户名</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" id="agentName" required lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">密码</label>
                    <div class="layui-input-inline">
                        <input type="password" name="agentPassword" id="agentPassword" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">验证码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="code" id="code" required lay-verify="required" placeholder="请输入验证码" autocomplete="off" class="layui-input">
                        <br>
                        <img src="<%=request.getContextPath() %>/checkCodeServlet">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block layui-input-inline">
                        <button type="submit" class="layui-btn" lay-filter="">登录</button>
                        <a href="<%=request.getContextPath() %>/login/toRegister" type="button" class="layui-btn">注册</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script type="text/javascript">
        layui.use(['form'], function(){
            var form = layui.form;
            form.render();
            var laydate = layui.laydate;
            //监听提交
            form.on('submit()', function(data){
                return true;
            });
        });
    </script>
</body>
</html>
