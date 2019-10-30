<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/30
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>忘记密码后通过手机号确认后并修改保存密码</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/forgetPasswordLaterAlterPassword.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.js"></script>
</head>
<body>
    <div>
        <div id="header">
            <span>已确认手机号 --> 请修改并保存密码</span>
        </div>
        <div id="forgetPasswordLaterAlterPassword">
            <div id="span1">
                <span>修改密码</span>
            </div>
            <form action="<%=request.getContextPath()%>/login/inputPwd" method="post" class="layui-form">
                <div class="layui-input-inline">
                    <input type="hidden" class="layui-input" value="${agentPhone}" name="agentPhone">
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">输入新密码</label>
                    <div class="layui-input-inline">
                        <input type="password" name="agentPassword" id="agentPassword" lay-verify="required|NumAndAbc" placeholder="请输入登录密码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">确认密码</label>
                    <div class="layui-input-inline">
                        <input type="password" id="validateAgentPassword" lay-verify="required|validatePassword" placeholder="请再次录入" autocomplete="off" class="layui-input">
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
        layui.use(['form','jquery'], function () {
            var form=layui.form;
            var $ = layui.jquery;
            form.render();
            form.verify({
                NumAndAbc:[
                    /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,10}$/,
                    '密码必须为字母和数字的组合,且长度要在6-10位之间'
                ],
                //校验两次密码是否一致
                validatePassword:function (value) {
                    var agentPassword=$("#agentPassword").val();
                    if (!new RegExp(agentPassword).test(value)){
                        return '两次密码输入不一致';
                    }
                }
            });
        });

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
