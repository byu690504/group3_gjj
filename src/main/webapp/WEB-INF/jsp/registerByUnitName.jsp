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
            <span>单位用户登记申请 --> 如已登记请确认单位名称</span>
        </div>
        <form action="<%=request.getContextPath() %>/unitRegister/beforeRegister" method="post" class="layui-form">

        <div id="registerByUnitName">
            <div id="span1">
                <span>确认单位名称</span>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">单位名称</label>
                <div class="layui-input-inline">
                    <input type="text" value="${unitName}" name="unitName" id="unitName" lay-verify="required" placeholder="请输入单位名称" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-text layui-inline">
                <c:if test="${msg!=null}">
                    <span>${msg}</span>
                </c:if>
            </div></br>
            <div class="layui-form-text layui-inline">
                <c:if test="${unitRegisterId!=null}">
                    <span>单位登记号为:${unitRegisterId}</span>
                </c:if>
            </div></br>
            <div class="layui-form-text layui-inline">
                <c:if test="${uName!=null}">
                    <span>单位名称为:${uName}</span>
                </c:if>
            </div></br>
            <div class="layui-form-text layui-inline">
                <c:if test="${uCode!=null}">
                    <span>组织机构代码为:${uCode}</span>
                </c:if>
            </div>

                <div class="layui-form-item">
                    <div class="layui-input-block layui-input-inline">
                        <button type="submit" class="layui-btn layui-btn-norma" lay-submit lay-filter="sub"/>提交
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
