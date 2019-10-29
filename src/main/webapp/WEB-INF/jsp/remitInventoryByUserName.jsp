<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/25
  Time: 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>单位编辑汇缴清册前确认用户信息</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/remitInventoryByUserName.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.js"></script>
</head>
<body>
    <div>
        <div id="header">
            <span>单位用户编辑汇缴清册 --> 如已登记请确认用户信息</span>
        </div>
        <div id="remitInventoryByUserName">
            <div id="span1">
                <span>确认用户信息</span>
            </div>
            <form action="<%=request.getContextPath() %>/change/personRegister" method="post" class="layui-form">
                <div class="layui-form-item">
                    <label class="layui-form-label">经办人姓名</label>
                    <div class="layui-input-block">
                        <input type="text" name="agentName" value="${agentName}" id="agentName" lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">经办人证件号码</label>
                    <div class="layui-input-block">
                        <input type="text" name="agentCardNumber" value="${agentCardNumber}" id="agentCardNumber" lay-verify="required|identity" placeholder="请输入证件号码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-text div_msg">
                    ${msg}
                </div>
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
        });
        layui.use(['form','laydate'], function() {
            var form = layui.form;
            //监听提交
            form.on('submit(sub)', function(data){
                return true;
            });
        });
    </script>
</body>
</html>
