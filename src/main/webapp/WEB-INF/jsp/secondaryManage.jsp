<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/24
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>二级管理辅助信息</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.js"></script>
</head>
<body>
    <div class="layui-fluid">
        <table class="layui-table" id="secondaryManageList" lay-filter="secondary"></table>
    </div>

    <div id="addForm" hidden="hidden" style="padding: 25px">
        <form action="<%=request.getContextPath()%>/second/add" method="post" class="layui-form">
            <div class="layui-form-item">
                <label class="layui-form-label">部门编号</label>
                <div class="layui-input-block">
                    <input type="text" name="deptNumber" lay-verify="required|number" placeholder="请输入部门编号" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">部门名称</label>
                <div class="layui-input-block">
                    <input type="text" name="deptName" lay-verify="required" placeholder="请输入部门名称" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">部门代码</label>
                <div class="layui-input-block">
                    <input type="text" name="deptCode" lay-verify="required|number" placeholder="请输入部门代码" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block" style="margin-left: 300px;">
                    <button type="submit" class="layui-btn" lay-submit lay-filter="sub">提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>

    <div id="editForm" hidden="hidden" style="padding: 25px">
        <form action="<%=request.getContextPath() %>/second/update" method="post" class="layui-form">
            <div class="layui-input-inline">
                <input type="hidden" class="layui-input" name="secondAssistMessageId" id="secondAssistMessageId">
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">部门编号</label>
                <div class="layui-input-block">
                    <input type="text" name="deptNumber" id="deptNumber" lay-verify="required|number" placeholder="请输入部门编号" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">部门名称</label>
                <div class="layui-input-block">
                    <input type="text" name="deptName" id="deptName" lay-verify="required" placeholder="请输入部门名称" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">部门代码</label>
                <div class="layui-input-block">
                    <input type="text" name="deptCode" id="deptCode" lay-verify="required|number" placeholder="请输入部门代码" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block" style="margin-left: 300px;">
                    <button type="submit" class="layui-btn" lay-submit lay-filter="sub">提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>

    <script type="text/javascript">
        layui.use(['layer','table','form'],function () {
            var table = layui.table;
            var layer = layui.layer;
            var form = layui.form;
            var $ = layui.$;
            table.render({
                elem : '#secondaryManageList',
                url : '<%=request.getContextPath() %>/second/list',
                page : true,
                height : 550,
                cols : [ [
                    {field : 'secondAssistMessageId',title : '序号',align : 'center',width : 300},
                    {field : 'deptNumber',title : '部门编号',align : 'center',width : 280},
                    {field : 'deptName',title : '部门名称',align : 'center',width : 280},
                    {field : 'deptCode',title : '部门代码',align : 'center',width : 280},
                    {fixed : 'right',title : '操作',width : 280,align : 'center',
                        toolbar :
                            '<div class="layui-btn-group">' +
                                '<button type="submit" class="layui-btn" lay-event="edit" lay-filter="sub">' +
                                    '<i class="layui-icon layui-icon-edit"></i>' +
                                '</button>'+
                                '<button type="button" class="layui-btn layui-btn-danger" lay-event="del">' +
                                    '<i class="layui-icon layui-icon-delete"></i>' +
                                '</button>'+
                            '</div>'
                    }
                ] ],
                limits : 10,
                toolbar :
                    '<div class="layui-btn-group" style="padding: 15px;">' +
                        '<button type="submit" class="layui-btn" lay-event="add" lay-filter="sub">' +
                            '<i class="layui-icon layui-icon-add-1"></i>' +
                        '</button>'+
                    '</div>'
            });
            //监听行工具事件
            table.on('tool(secondary)', function (obj) {
                var data=obj.data;
                if(obj.event === 'del'){
                    layer.confirm('确定要删除吗', {
                        title:'删除',
                        anim : 6
                    }, function (index) {
                        obj.del();
                        $.ajax({
                            type : "POST",
                            url : "<%=request.getContextPath() %>/second/delete?secondAssistMessageId="+data.secondAssistMessageId,
                            success : function (msg) {
                                layer.alert("删除成功！");
                                layer.close(index);
                            }
                        });
                    });
                }else if (obj.event === 'edit'){
                    $("#secondAssistMessageId").val(data.secondAssistMessageId);
                    $("#deptCode").val(data.deptCode);
                    $("#deptNumber").val(data.deptNumber);
                    $("#deptName").val(data.deptName);
                    form.render();
                    layer.open({
                        type : 1,
                        title : '编辑二级管理部门',
                        area : '800px',
                        moveType : 1,
                        resize : false,
                        anim : 4,
                        moveOut: true,
                        content : $('#editForm')
                    });
                }
                form.on('submit(sub)', function (obj) {
                    $.ajax({
                        type: "POST",
                        url: "<%=request.getContextPath()%>/second/update?",
                        success: function (msg) {
                            layer.msg("编辑成功！");
                        }
                    });
                    //alert();
                });
            });

            table.on('toolbar(secondary)', function (obj) {
                if(obj.event === 'add'){
                    form.render();
                    layer.open({
                        type : 1,
                        title : '添加二级管理部门',
                        area : '800px',
                        moveType : 1,
                        resize : false,
                        anim : 4,
                        moveOut: true,
                        content : $('#addForm')
                    });
                }
            });
        });

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
