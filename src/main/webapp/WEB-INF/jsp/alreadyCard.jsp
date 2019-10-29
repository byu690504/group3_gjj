<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/25
  Time: 12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>已制卡人员名单</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.js"></script>
</head>
<body>
    <%--<div class="layui-fluid">
        <div class="layui-card">
            <form class="layui-form" id="" onsubmit="return false">
                <div class="layui-form layui-card-header layuiadmin-card-header-auto" lay-filter="">
                    <div class="layui-inline">
                        <label class="layui-form-label">单位登记号：</label>
                        <div class="layui-input-inline">
                            <input type="text" class="layui-input" id="" name="" placeholder="请输入单位登记号" width="80px" style="margin-right: 40px">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">证件号码：</label>
                        <div class="layui-input-inline">
                            <input type="text" class="layui-input" id="" name="" placeholder="请输入证件号码" width="80px">
                        </div>
                    </div>
                    <div class="layui-inline">
                        <button class="layui-btn" lay-submit="" lay-filter="reloadlst_submit">查询</button>
                    </div>
                </div>
            </form>
            <div class="layui-card-body">
                <table class="layui-table" id="makeCardCaseRefer" lay-filter=""></table>
            </div>
        </div>
    </div>--%>

    <div class="layui-fluid">
        <table class="layui-table" id="alreadyCard" lay-filter="alreadyCard"></table>
    </div>

    <script type="text/javascript">
        layui.use(['layer', 'table', 'form'], function () {
            var table = layui.table;
            var layer = layui.layer;
            var form = layui.form;
            var $ = layui.$;
            table.render({
                elem : '#alreadyCard',
                url : '<%=request.getContextPath() %>/',
                page : true,
                height : 550,
                cols : [ [
                    {field : '',title : '序号',align : 'center',width : 200},
                    {field : '',title : '职工编号',align : 'center',width : 300},
                    {field : '',title : '姓名',align : 'center',width : 300},
                    {field : '',title : '证件名称',align : 'center',width : 300},
                    {field : '',title : '证件号码',align : 'center',width : 300},
                    {field : '',title : '办理状态',align : 'center',width : 300}
                ] ],
                limits : 10,
                toolbar :
                    '<div class="layui-btn-group" style="padding: 15px;">' +
                    '单位登记号：' +
                    '<div class="layui-inline">' +
                    '<input class="layui-input" name="" value="" autocomplete="off" lay-event="" readonly />' +
                    '</div>' +
                    '</div>'
            });

            table.on('toolbar(alreadyCard)', function (obj) {
                var data=obj.data;
                if (obj.event === 'echoURId') {
                    $("#").val(data.productId);
                    form.render();
                }
            })
        });

        layui.use(['form'], function(){
            var form = layui.form;
            form.render();
            //监听提交
            form.on('submit()', function(data){
                return true;
            });
        });
    </script>
</body>
</html>
