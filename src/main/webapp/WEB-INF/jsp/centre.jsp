<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/23
  Time: 19:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>北京住房公积金管理中心</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/center.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.js"></script>
</head>
<body class="layui-layout-body">
    <div class="layui-layout layui-layout-admin">
        <!-- 头部区域 -->
        <div class="layui-header layui-bg-black">
            <div class="layui-logo">
                北京住房公积金管理中心
            </div>
        </div>
        <!-- 左侧导航区域 -->
        <div class="layui-side layui-bg-black">
            <div class="layui-side-scroll">
                <ul class="layui-nav layui-nav-tree" lay-filter="">
                    <li class="layui-nav-item layui-nav-itemed">
                        <a href="javascript:;">
                            公积金管理中心
                        </a>
                        <dl class="layui-nav-child">
                            <dd>
                                <a href="<%=request.getContextPath() %>/unitRegister/toUnitRegister" target="pageCenter">单位登记申请</a>
                            </dd>
                            <dd>
                                <a href="<%=request.getContextPath() %>/unitRegister/toAgentAuth" target="pageCenter">单位经办人授权</a>
                            </dd>
                            <dd>
                                <a href="javascript:;">
                                    单位开户功能
                                </a>
                                <ol class="layui-nav-child">
                                    <li><a href="<%=request.getContextPath() %>/unitOpenAccount/toUnitOpenAccount" target="pageCenter">单位开户</a></li>
                                    <li><a href="<%=request.getContextPath() %>/test/page13" target="pageCenter">缴款方式管理</a></li>
                                </ol>
                            </dd>
                            <dd>
                                <a href="<%=request.getContextPath() %>/change/toUnitBusinessPower" target="pageCenter">单位用户业务授权</a>
                            </dd>
                            <dd>
                                <a href="<%=request.getContextPath() %>/change/toPersonRegister" target="pageCenter">个人登记</a>
                            </dd>
                            <dd>
                                <a href="<%=request.getContextPath() %>/second/toList" target="pageCenter">二级管理辅助信息</a>
                            </dd>
                            <dd>
                                <a href="<%=request.getContextPath() %>/remit/toList" target="pageCenter">单位编辑汇缴清册</a>
                            </dd>
                            <dd>
                                <a href="javascript:;">
                                    公积金联名卡制卡情况
                                </a>
                                <ol class="layui-nav-child">
                                    <li><a href="<%=request.getContextPath() %>/remit/toList?record=是 " target="pageCenter">已制卡人员名单</a></li>
                                    <li><a href="<%=request.getContextPath() %>/remit/toList?record=否 " target="pageCenter">未制卡人员名单</a></li>
                                </ol>
                            </dd>
                            <dd>
                                <a href="<%=request.getContextPath() %>/change/toRegisterChange" target="pageCenter">单位登记信息变更功能</a>
                            </dd>
                            <dd>
                                <a href="<%=request.getContextPath() %>/openUnit/name" target="pageCenter">单位开户信息变更功能</a>
                            </dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 主体区域 -->
        <div class="layui-body layui-bg-white">
            <iframe name="pageCenter" frameborder="1" src="<%=request.getContextPath() %>/change/toCentreMain"></iframe>
        </div>
    </div>
</body>
<script>
    layui.use('element', function(){
    });
</script>
</html>
