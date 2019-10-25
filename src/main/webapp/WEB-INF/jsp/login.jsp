<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script>
    $(function () {
        $("#cclogin").click(function () {
            $("#clogin").show();
            $("#clogin").siblings().hide();
        })
        $("#ulogin").click(function () {
            $("#login").show();
            $("#login").siblings().hide();
        })
        $("#imgCode").click(function () {
            var time = new Date().getTime();
            $("#imgCode").attr("src", "<%=request.getContextPath()%>/checkCodeServlet")
        });
    })
</script>
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
<body class="layui-layout-body">
    <div id="body">
        <div id="header">
            <span>单位用户登录 --> 输入登录信息</span>
        </div>
        <div id="span1">
            <button id="cclogin">CA证书登陆</button>
            <button id="ulogin">单位用户登录</button>
        </div>
        <div>
        <div id="login">
            <form action="<%=request.getContextPath() %>/login/login" method="post" class="layui-form">
                <input type="hidden" value="${msg}" id="msg">
                <div class="layui-form-text layui-inline" id="span2">
                    <c:if test="${error!=null}">
                        <span>${error}</span>
                    </c:if>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">用户名</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentCode" id="agentName" required lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
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
                        <img src="<%=request.getContextPath()%>/checkCodeServlet">
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
        <div id="clogin" hidden>
            <form action="<%=request.getContextPath() %>/login/login" method="post" class="layui-form">
                <input type="hidden" value="${msg}" id="cmsg">
                <div class="layui-form-text layui-inline" id="cspan2">
                    <c:if test="${error!=null}">
                        <span>${error}</span>
                    </c:if>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">CA证书</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentCode" id="agentAuth" required lay-verify="required" placeholder="请输入CA证书" autocomplete="off" class="layui-input">
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
                        <input type="text" name="code" id="ccode" required lay-verify="required" placeholder="请输入验证码" autocomplete="off" class="layui-input">
                        <br>
                        <img id="imgCode" src="<%=request.getContextPath() %>/checkCodeServlet">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block layui-input-inline">
                        <input type="submit" class="layui-btn" value="登录">
                        <!--<input type="reset" class="layui-btn" value="重置">-->
                        <a href="<%=request.getContextPath() %>/login/toRegister" type="button" class="layui-btn">注册</a>
                    </div>
                </div>
            </form>
        </div>
        </div>
    </div>
</body>
</html>
