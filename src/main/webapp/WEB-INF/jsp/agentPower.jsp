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
    <script src="<%=request.getContextPath() %>/layui/layui.js"></script>
</head>
<body>
    <div>
        <div id="header">
            <span>单位经办人授权 --> 录入授权申请信息</span>
        </div>
        <div id="agentPower">
            <div id="span1">
                <span>单位经办人授权</span>
            </div>
            <form action="<%=request.getContextPath() %>/unitRegister/agentAuth" class="layui-form">
                <div class="layui-form-item">
                    <label class="layui-form-label">单位登记号</label>
                    <div class="layui-input-inline">
                        <input type="text" value="${urId}" readonly name="unitRegisterId" lay-verify="required|NumAndAbc" lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">经办人姓名</label>
                    <div class="layui-input-inline">
                        <input type="text" value="${aName}" readonly name="agentName" lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">经办人证件名称</label>
                    <div class="layui-input-inline">
                        <select name="agentCardName" readonly lay-verify="required">
                            <option value="${aCardName}">${aCardName}</option>
                            <option value="身份证号">身份证号</option>
                            <option value="军官证号">军官证号</option>
                            <option value="护照">护照</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">经办人证件号码</label>
                    <div class="layui-input-inline">
                        <input type="text" value="${aCardNumber}" readonly name="agentCardNumber" lay-verify="required|identity" placeholder="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <%--<div class="layui-form-item">
                    <label class="layui-form-label">办公电话</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" id="agentName" lay-verify="required|guhua" placeholder="请输入办公电话" autocomplete="off" class="layui-input">
                    </div>
                </div>--%>
                <div class="layui-form-item">
                    <label class="layui-form-label">手机号</label>
                    <div class="layui-input-inline">
                        <input type="text" value="${aPhone}" readonly name="agentPhone" lay-verify="required|phone" placeholder="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block layui-input-inline">
                        <button type="submit" class="layui-btn" lay-submit lay-filter="sub">确认</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script type="text/javascript">
        layui.use(['form','jquery'], function () {
            var form=layui.form;
            form.verify({
                NumAndAbc:[
                    /^[0-9a-zA-Z]{6,32}$/,
                    '单位登记号可以是全数字或全字母,或数字和字母组合,且长度要在6-32位之间'
                ]
            });
        });
        /*layui.use(['form','jquery'], function () {
            var form=layui.form;
            form.render();
            form.verify({
                guhua: [
                    /^((0\d{2,3})-)(\d{6,8})?$/,
                    '请输入正确的固定电话'
                ]
            });
        });*/
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
