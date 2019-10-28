<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/23
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>单位用户登录</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/login.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.js"></script>
</head>
<script type="text/javascript">
    $(function () {
        $("#caLogin").click(function () {
            $("#cLogin").show();
            $("#cLogin").siblings().hide();
        });
        $("#usLogin").click(function () {
            $("#login").show();
            $("#login").siblings().hide();
        });
        $("#imgCode").click(function () {
            var time = new Date().getTime();
            $("#imgCode").attr("src", "<%=request.getContextPath()%>/checkCodeServlet")
        });
    });
</script>
<body class="layui-layout-body">
    <div>
        <div id="header">
            <span>单位用户登录 --> 输入登录信息</span>
        </div>
        <div id="select">
            <button id="caLogin" class="layui-btn layui-btn-warm">CA证书登陆</button>
            <button id="usLogin" class="layui-btn">单位用户登录</button>
        </div>
        <div>
            <div id="login">
                <div id="span1">
                    <span>单位用户登录</span>
                </div>
                <form action="<%=request.getContextPath() %>/login/login" method="post" class="layui-form">
                    <input type="hidden" value="${msg}" id="msg">
                    <div class="layui-form-text layui-inline" id="error1">
                        <c:if test="${error!=null}">
                            <span>${error}</span>
                        </c:if>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">用户名</label>
                        <div class="layui-input-inline">
                            <input type="text" name="agentCode" id="agentName" lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">密码</label>
                        <div class="layui-input-inline">
                            <input type="password" name="agentPassword" id="agentPassword"  lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">验证码</label>
                        <div class="layui-input-inline">
                            <input type="text" name="code" id="code" lay-verify="required" placeholder="请输入验证码" autocomplete="off" class="layui-input">
                            <br>
                            <img src="<%=request.getContextPath() %>/checkCodeServlet">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-input-block layui-input-inline">
                            <button type="submit" class="layui-btn layui-btn-norma" lay-submit lay-filter="sub">登录</button>
                            <a href="<%=request.getContextPath() %>/login/toRegister" type="button" class="layui-btn layui-btn-primary">注册</a>
                        </div>
                    </div>
                </form>
            </div>
            <div id="cLogin" hidden>
                <div id="span2">
                    <span>CA证书登陆</span>
                </div>
                <form action="<%=request.getContextPath() %>/login/login" method="post" class="layui-form">
                    <input type="hidden" value="${msg}" id="cmsg">
                    <div class="layui-form-text layui-inline" id="error2">
                        <c:if test="${error!=null}">
                            <span>${error}</span>
                        </c:if>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">CA证书</label>
                        <div class="layui-input-inline">
                            <input type="text" name="agentCode" id="agentAuth" lay-verify="required" placeholder="请输入CA证书" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <%--<div class="layui-form-item">
                        <label class="layui-form-label">密码</label>
                        <div class="layui-input-inline">
                            <input type="password" name="agentPassword" id="agentPassword" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                        </div>
                    </div>--%>
                    <div class="layui-form-item">
                        <label class="layui-form-label">验证码</label>
                        <div class="layui-input-inline">
                            <input type="text" name="code" id="ccode" lay-verify="required" placeholder="请输入验证码" autocomplete="off" class="layui-input">
                            <br>
                            <img src="<%=request.getContextPath() %>/checkCodeServlet">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-input-block layui-input-inline">
                            <button type="submit" class="layui-btn" lay-submit lay-filter="sub">登录</button>
                            <a href="<%=request.getContextPath() %>/login/toRegister" type="button" class="layui-btn layui-btn-primary">注册</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        layui.use('form', function(){
            var form = layui.form;
            form.render();
            //监听提交
            form.on('submit(sub)', function(data){
                return true;
            });
        });
    </script>
</body>
</html>
