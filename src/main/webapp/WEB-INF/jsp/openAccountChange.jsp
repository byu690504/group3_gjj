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
    <title>单位开户信息变更</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/openAccountChange.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.js"></script>
</head>
<body>
    <div>
        <div id="header">
            <span>单位开户信息变更 --> 录入开户变更信息</span>
        </div>
        <div id="openAccountChange">
            <div id="span1">
                <span>单位开户信息变更</span>
            </div>
            <form action="<%=request.getContextPath() %>/" method="post" class="layui-form">
                <span>${msg}</span>
                <input type="hidden" name="unitId" value="${unitId}">
                <input type="hidden" name="unitRegisterId" value="${unitRegisterId}">
                <input type="hidden" name="agentName" value="${agentName}">
                <input type="hidden" name="agentCardName" value="${agentCardName}">
                <input type="hidden" name="agentCardNumber" value="${agentCardNumber}">
                <input type="hidden" name="principalStatus" value="${principalStatus}">
                <div class="layui-form-item">
                    <label class="layui-form-label">单位开户申请id</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${unitOpenAccountId}" name="unitOpenAccountId" id="unitOpenAccountId" lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">业务种类</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${businessKind}" name="businessKind" id="businessKind" lay-verify="businessKind" placeholder="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">资金来源</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${moneySource}" name="moneySource" id="moneySource" lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">拨款单位</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${appropriationUnit}" name="appropriationUnit" id="appropriationUnit" lay-verify="required|number" placeholder="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">开通二级辅助信息</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${secondAssistMessage}" name="secondAssistMessage" id="secondAssistMessage" lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">业务经办部门</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${businessAgentDept}" name="businessAgentDept" id="businessAgentDept" lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">发薪日期</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${payoffDate}" name="payoffDate" id="payoffDate" lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">首次汇缴月份</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${firstRemitMonth}" name="firstRemitMonth" id="firstRemitMonth" lay-verify="required|identity" placeholder="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">跨年清册核定月份</label>
                    <div class="layui-input-block">
                        <input type="text" value="${approvedMonthOfCrossYearInventory}" name="approvedMonthOfCrossYearInventory" id="approvedMonthOfCrossYearInventory  " lay-verify="required" placeholder="请输入单位注册地址" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位缴存比例</label>
                    <div class="layui-input-block">
                        <input type="text" value="${unitDepositProportion}" name="unitDepositProportion" id="unitDepositProportion" lay-verify="required" placeholder="请输入单位办公地址" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">个人缴存比例</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${personDepositProportion}"  name="personDepositProportion" id="personDepositProportion" placeholder=""  autocomplete="off"  class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">每月汇缴是否需要确认人员清册</label>
                    <div class="layui-input-block">
                        <input type="text" value="${confirmEmpInventory}" name="confirmEmpInventory" id="confirmEmpInventory" lay-verify="required|email" placeholder="请输入邮箱" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">是否接受中心信息服务</label>
                    <div class="layui-input-block">
                        <input type="text" value="${acceptTheInformationServiceOfTheCenter}" name="acceptTheInformationServiceOfTheCenter" id="acceptTheInformationServiceOfTheCenter" lay-verify="required" placeholder="请输入上级主管单位" autocomplete="off" class="layui-input">
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
            //监听提交
            form.on('submit(sub)', function(data){
                return true;
            });
        });
    </script>
</body>
</html>
