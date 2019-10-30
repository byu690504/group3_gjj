<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/25
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>单位登记信息变更</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/registerChange.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.js"></script>
</head>
<body>
    <div>
        <div id="header">
            <span>单位登记信息变更 --> 录入登记变更信息</span>
        </div>
        <div id="registerChange">
            <div id="span1">
                <span>单位登记信息变更</span>
            </div>
                <form action="<%=request.getContextPath() %>/change/toRegisterChange" class="layui-form">
                <span>${msg}</span>
                <input type="hidden" name="unitId" value="${unitId}">
                <input type="hidden" name="unitRegisterId" value="${unitRegisterId}">
                <input type="hidden" name="agentName" value="${agentName}">
                <input type="hidden" name="agentCardName" value="${agentCardName}">
                <input type="hidden" name="agentCardNumber" value="${agentCardNumber}">
                <input type="hidden" name="principalStatus" value="${principalStatus}">
                <div class="layui-form-item">
                    <label class="layui-form-label">单位名称</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${unitName}" name="unitName" lay-verify="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">组织机构代码</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${unitCode}" name="unitCode" lay-verify="number" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位证件名称</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${unitCardName}" name="unitCardName" lay-verify="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位证件号码</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${unitCardNumber}" name="unitCardNumber" lay-verify="number" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位性质代码</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${unitNatureCode}" name="unitNatureCode" lay-verify="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">法人/负责人</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${principalName}" name="principalName" lay-verify="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">法人/负责人证件名称</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${principalCardName}" name="principalCardName" lay-verify="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">法人/负责人证件号码</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${principalCardNumber}" name="principalCardNumber" lay-verify="identity" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位注册地址</label>
                    <div class="layui-input-block">
                        <input type="text" readonly name="unitRegisterAddress" value="${unitRegisterAddress}" lay-verify="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位办公地址</label>
                    <div class="layui-input-block">
                        <input type="text" readonly name="unitWorkAddress" value="${unitWorkAddress}" lay-verify="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位成立时间</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${unitEstablishTime}" class="layui-input" name="unitTime" id="" placeholder="">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">邮箱</label>
                    <div class="layui-input-block">
                        <input type="text" name="unitEmail" value="${email}" id="unitEmail" lay-verify="email" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">上级主管单位</label>
                    <div class="layui-input-block">
                        <input type="text" name="superiorUnit" value="${superiorUnit}" lay-verify="" autocomplete="off" class="layui-input">
                    </div>
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
            var laydate = layui.laydate;
            //监听提交
            form.on('submit(sub)', function(data){
                return true;
            });
        });
    </script>
</body>
</html>
