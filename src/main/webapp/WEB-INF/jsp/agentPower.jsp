<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/24
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>单位经办人授权</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/agentPower.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.all.js"></script>
</head>
<body>
    <div id="body">
        <div id="header">
            <span>单位经办人授权 --> 录入授权申请信息</span>
        </div>
        <div id="agentPower">
            <div id="span1">
                <span>单位经办人授权</span>
            </div>
            <form action="<%=request.getContextPath() %>/" method="post" class="layui-form">
                <div class="layui-form-item">
                    <label class="layui-form-label">单位登记号</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" id="agentName" required lay-verify="required" placeholder="请输入单位登记号" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">经办人1姓名</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" id="agentName" required lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">经办人1证件名称</label>
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
                    <label class="layui-form-label">经办人1证件号码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" id="agentName" required lay-verify="required" placeholder="请输入证件号码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">经办人2姓名</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" id="agentName" lay-verify="" placeholder="请输入姓名" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">经办人2证件名称</label>
                    <div class="layui-input-inline">
                        <select name="cardName" lay-verify="">
                            <option value="">请选择证件名称</option>
                            <option value="身份证号">身份证号</option>
                            <option value="军官证号">军官证号</option>
                            <option value="护照">护照</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">经办人2证件号码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" id="agentName" lay-verify="" placeholder="请输入证件号码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">经办人3姓名</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" id="agentName" lay-verify="" placeholder="请输入姓名" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">经办人3证件名称</label>
                    <div class="layui-input-inline">
                        <select name="cardName" lay-verify="">
                            <option value="">请选择证件名称</option>
                            <option value="身份证号">身份证号</option>
                            <option value="军官证号">军官证号</option>
                            <option value="护照">护照</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">经办人3证件号码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" id="agentName" lay-verify="" placeholder="请输入证件号码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">办公电话</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" id="agentName" required lay-verify="required" placeholder="请输入办公电话" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">手机号</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" id="agentName" required lay-verify="required" placeholder="请输入手机号" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">电子邮箱</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" id="agentName" required lay-verify="required" placeholder="请输入电子邮箱" autocomplete="off" class="layui-input">
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
            form.render();
            form.verify({
                //正则验证身份证
                validateCardNumber:[
                    /(^$)|(^\d{15}$)|(^\d{17}(x|X|\d)$)/,
                    '请输入正确的身份证号'
                ]
            });
        });
        layui.use(['form','laydate'], function(){
            var form = layui.form;
            var laydate = layui.laydate;
            //监听提交
            form.on('submit(agentPower)', function(data){
                return true;
            });
        });
    </script>
</body>
</html>
