<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/23
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>单位用户注册</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/register.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.all.js" charset="utf-8"></script>
</head>
<body>
    <div>
        <div id="header">
            <span>单位用户注册 --> 录入注册信息</span>
        </div>
        <div id="register">
            <div id="span1">
                <span>单位注册信息</span>
            </div>
            <form action="<%=request.getContextPath() %>/login/register" method="post" class="layui-form">
                <div class="layui-form-text layui-inline" id="span2">
                    <span>${error}</span>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">姓名</label>
                    <div class="layui-input-inline">
                        <label for="agentName"></label><input type="text" name="agentName" id="agentName" required lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">证件名称</label>
                    <div class="layui-input-inline">
                        <select name="cardName" required lay-verify="required">
                            <option value="">请选择证件名称</option>
                            <option value="身份证号">身份证号</option>
                            <option value="军官证号">军官证号</option>
                            <option value="护照">护照</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">证件号码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="cardNumber" id="cardNumber" required lay-verify="required|validateCardNumber" placeholder="请输入证件号码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位名称</label>
                    <div class="layui-input-inline">
                        <input type="text" name="unitName" id="unitName" required lay-verify="required" placeholder="请输入单位名称" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">手机号码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentPhone" id="agentPhone" required lay-verify="required|validateAgentPhone" placeholder="请输入手机号码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">邮箱</label>
                    <div class="layui-input-inline">
                        <input type="text" name="unitEmail" id="unitEmail" required lay-verify="required|validateUnitEmail" placeholder="请输入邮箱" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">登录密码</label>
                    <div class="layui-input-inline">
                        <input type="password" name="agentPassword" id="agentPassword" required lay-verify="required" placeholder="请输入登录密码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <%--<div class="layui-form-item">
                    <label class="layui-form-label">确认密码</label>
                    <div class="layui-input-inline">
                        <input type="password" id="validateAgentPassword" required lay-verify="required|validateAgentPassword" placeholder="请再次录入" autocomplete="off" class="layui-input">
                    </div>
                </div>--%>
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
                        <button type="submit" class="layui-btn" lay-filter="">提交</button>
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
            /*form.verify({
                //正则验证身份证
                validateCardNumber:[
                    /(^$)|(^\d{15}$)|(^\d{17}(x|X|\d)$)/,
                    '请输入正确的身份证号'
                ],
                //正则验证手机号
                validateAgentPhone:[
                    /(^$)|^1\d{10}$/,
                    '请输入正确的手机号'
                ],
                //正则验证邮箱
                validateUnitEmail:[
                    /(^$)|^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/,
                    '请输入正确的邮箱'
                ],
                //校验两次密码是否一致
                validateAgentPassword:function (value) {
                    var agentPassword=$("#agentPassword").val();
                    if (!new RegExp(agentPassword).test(value)){
                        return '两次密码输入不一致';
                    }
                }
            });*/
        });
        layui.use('form', function(){
            var form = layui.form;
            var layer=layui.layer;
            //监听提交
            form.on('submit(register)', function(data){
                return true;
            });
        });
    </script>
</body>
</html>
