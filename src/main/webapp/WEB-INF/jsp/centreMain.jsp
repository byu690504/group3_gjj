<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/29
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理中心主体内容</title>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/echarts.js"></script>
    <style type="text/css">
        #main {
            position: relative;
            left: 210px;
            top: 40px;
        }
        body{
            background-color: #F8F8F8;
            overflow: auto;
        }
        #header{
            width: 100%;
            padding-top: 40px;
            background-color: #B8B8B8;
            margin-bottom: 5px;
        }
        #header span{
            font-size: 25px;
            font-family: 楷体;
            color: #0066CC;
        }
    </style>
</head>
<body>
    <div id="header">
        <span>单位缴款方式宣传 --> 现我单位有如下缴款方式以供选择</span>
    </div>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 700px; height:500px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '公积金 - 公司缴款方式'
            },
            tooltip: {},
            legend: {
                data: ['公司数量']
            },
            xAxis: {
                data: ["委托收款", "主动汇款", "转账支票", "现金刷卡", "财政统发"]
            },
            yAxis: {},
            series: [{
                name: '公司数量',
                type: 'line',
                data: [25, 20, 36, 10, 10]
            }]
        };
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
</body>
</html>
