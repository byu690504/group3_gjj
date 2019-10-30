<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/30
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>忘记密码后通过手机号确认</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/forgetPasswordByPhone.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.js"></script>
</head>
<body>
    <div>
        <div id="header">
            <span>忘记密码 --> 确认手机号是否已存在</span>
        </div>
        <div id="forgetPasswordByPhone">
            <div id="span1">
                <span>确认手机号</span>
            </div>
            <form action="<%=request.getContextPath()%>/" method="post" class="layui-form">
                <div class="layui-form-text layui-inline">
                    <span id="msg">${error}</span>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">手机号码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" lay-verify="required|phone" placeholder="请输入手机号码" autocomplete="off" class="layui-input">
                    </div>
                </div><br>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button type="submit" class="layui-btn" lay-submit lay-filter="sub">提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script type="text/javascript">
        layui.use('form', function(){
            var form = layui.form;
            //监听提交
            form.on('submit(sub)', function(data){
                return true;
            });
        });
    </script>
</body>
</html>
