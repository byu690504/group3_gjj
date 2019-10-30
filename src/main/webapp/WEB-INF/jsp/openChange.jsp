<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/24
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>单位登记申请前确认单位名称</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/registerByUnitName.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.js"></script>
</head>
<body>
<div>
    <div id="header">
        <span>单位开户信息变更 --> 如已开户请确认账户账号</span>
    </div>
    <form action="<%=request.getContextPath() %>/openUnit/toOpenAccountChange" method="post" class="layui-form">
        <div id="registerByUnitName">
            <div id="span1">
                <span>确认是否开户</span>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">开户账号</label>
                <div class="layui-input-inline">
                    <input type="text"  name="unitOpenAccountId" id="unitOpenAccountId" lay-verify="required" placeholder="请输入单位名称" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-text div_msg">
                <c:if test="${msg!=null}">
                    ${msg}
                </c:if>
            </div></br>
            <div class="layui-form-text div_msg">
                <c:if test="${unitRegisterId!=null}">
                    单位登记号为:${unitRegisterId}
                </c:if>
            </div></br>
            <div class="layui-form-text div_msg">
                <c:if test="${uName!=null}">
                    单位名称为:${uName}
                </c:if>
            </div></br>
            <div class="layui-form-text div_msg">
                <c:if test="${uCode!=null}">
                    组织机构代码为:${uCode}
                </c:if>
            </div>
            <div class="layui-form-text div_msg">
                <c:if test="${unitOpenAccountId!=null}">
                    单位开户Id为:${unitOpenAccountId}
                </c:if>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block layui-input-inline">
                    <button type="submit" class="layui-btn" lay-submit lay-filter="sub"/>确认
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </div>
    </form>
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
