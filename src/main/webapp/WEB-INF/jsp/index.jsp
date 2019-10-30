2<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/23
  Time: 19:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>北京住房公积金网</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/index.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.js"></script>
</head>
<body>
    <div>
        <div id="header">
            <span>北京住房公积金网</span>
        </div>
        <div id="publicity" onclick="document.location.href='http://gjj.beijing.gov.cn/web/zxzt87/xxxcgcddsjdjs/index.html'">

        </div>
        <div class="layui-carousel" id="t">
            <div carousel-item="">
                <div onclick="document.location.href='http://gjj.beijing.gov.cn/web/zt/xxdt71/index.html'">
                    <img src="../img/carousel (1).jpg">
                </div>
                <div onclick="document.location.href='http://gjj.beijing.gov.cn/web/zwgk/_300583/351198/index.html'">
                    <img src="../img/carousel (2).jpg">
                </div>
                <div onclick="document.location.href='http://gjj.beijing.gov.cn/web/bsznx/386727/index.html'">
                    <img src="../img/carousel (3).jpg">
                </div>
                <div onclick="document.location.href='http://gjj.beijing.gov.cn/web/bmfw/ywwdfb/index.html'">
                    <img src="../img/carousel (4).jpg">
                </div>
                <div onclick="document.location.href='http://gjj.beijing.gov.cn/web/zwgk/_300583/zxtc/index.html'">
                    <img src="../img/carousel (5).jpg">
                </div>
            </div>
        </div>
        <div id="business">
            <div id="b1">
                <i class="layui-icon layui-icon-friends"></i>
                <a href="/" type="button" class="layui-btn layui-btn-fluid">个人网上业务平台</a>
            </div>
            <div id="b2">
                <i class="layui-icon layui-icon-component"></i>
                <a href="<%=request.getContextPath() %>/login/toLogin" type="button" class="layui-btn layui-btn-fluid">单位网上业务平台</a>
            </div>
        </div>
    </div>

    <script src="<%=request.getContextPath() %>/layui/layui.js"></script>
    <script type="text/javascript">
        layui.use('carousel', function(){
            var carousel = layui.carousel;
            var ins = carousel.render({
                elem: '#t',
                width: '830px',
                height: '300px',
                interval: '1500'
            });
            //重置轮播
            ins.reload({
                elem: '#t',
                width: '830px',
                height: '300px',
                interval: '1500'
            });
        });
    </script>
</body>
</html>
