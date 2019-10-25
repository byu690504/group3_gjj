<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/25
  Time: 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>单位编辑汇缴清册</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.all.js"></script>
</head>
<body>
    <div class="layui-fluid">
        <table class="layui-table" id="remitInventoryList" lay-filter="inventory"></table>
    </div>

    <div id="addForm" hidden="hidden" style="padding: 25px">
        <form action="<%=request.getContextPath() %>/" method="post" class="layui-form">
            <div class="layui-form-item">
                <label class="layui-form-label">职工编号</label>
                <div class="layui-input-inline">
                    <input type="text" name="agentName" id="" required lay-verify="" placeholder="请输入职工编号" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">姓名</label>
                <div class="layui-input-inline">
                    <input type="text" name="agentName" id="" required lay-verify="" placeholder="请输入姓名" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">证件名称</label>
                <div class="layui-input-inline">
                    <select name="principalCardName" required lay-verify="required">
                        <option value="">请选择证件名称</option>
                        <option value="身份证号">身份证号</option>
                        <option value="军官证号">军官证号</option>
                        <option value="护照">护照</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">国别</label>
                <div class="layui-input-inline">
                    <input type="text" name="agentName" id="" required lay-verify="" placeholder="请输入国别" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">证件号码</label>
                <div class="layui-input-inline">
                    <input type="text" name="agentName" id="" required lay-verify="" placeholder="请输入证件号码" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">缴存基数</label>
                <div class="layui-input-inline">
                    <input type="text" name="agentName" id="" required lay-verify="" placeholder="请输入缴存基数" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">单位月缴存额</label>
                <div class="layui-input-inline">
                    <input type="text" name="agentName" id="" required lay-verify="" placeholder="请输入单位月缴存额" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">个人月缴存额</label>
                <div class="layui-input-inline">
                    <input type="text" name="agentName" id="" required lay-verify="" placeholder="请输入个人月缴存额" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">月缴存额合计</label>
                <div class="layui-input-inline">
                    <input type="text" name="agentName" id="" required lay-verify="" placeholder="" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">二级管理辅助信息</label>
                <div class="layui-input-block" id="secondary1" >
                    <input type="radio" name="t" value="勾选" title="勾选" lay-filter="aaa"/>
                    <input type="radio" name="t" value="缺省" title="缺省" lay-filter="aaa"/>
                </div>
            </div>
            <div class="gx1">
                <div class="layui-form-item">
                    <label class="layui-form-label">部门编号</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" id="" lay-verify="" placeholder="请输入部门编号" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">部门名称</label>
                    <div class="layui-input-inline">
                        <select name="principalCardName" lay-verify="">
                            <option value="">请选择部门名称</option>
                            <option value="人事部">人事部</option>
                            <option value="财务部">财务部</option>
                            <option value="销售部">销售部</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">部门代码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" id="" lay-verify="" placeholder="请输入部门代码" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block layui-input-inline">
                    <button type="submit" class="layui-btn" lay-filter="">提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>

    <div id="editForm" hidden="hidden" style="padding: 25px">
        <form action="<%=request.getContextPath() %>/" method="post" class="layui-form">
            <div class="layui-form-item">
                <label class="layui-form-label">职工编号</label>
                <div class="layui-input-inline">
                    <input type="text" name="agentName" id="" readonly required lay-verify="" placeholder="" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">姓名</label>
                <div class="layui-input-inline">
                    <input type="text" name="agentName" id="" readonly required lay-verify="" placeholder="" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">证件名称</label>
                <div class="layui-input-inline">
                    <select name="principalCardName" required lay-verify="required">
                        <option value="">请选择证件名称</option>
                        <option value="身份证号">身份证号</option>
                        <option value="军官证号">军官证号</option>
                        <option value="护照">护照</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">国别</label>
                <div class="layui-input-inline">
                    <input type="text" name="agentName" id="" required lay-verify="" placeholder="请输入国别" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">证件号码</label>
                <div class="layui-input-inline">
                    <input type="text" name="agentName" id="" required lay-verify="" placeholder="请输入证件号码" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">缴存基数</label>
                <div class="layui-input-inline">
                    <input type="text" name="agentName" id="" required lay-verify="" placeholder="请输入缴存基数" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">单位月缴存额</label>
                <div class="layui-input-inline">
                    <input type="text" name="agentName" id="" required lay-verify="" placeholder="请输入单位月缴存额" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">个人月缴存额</label>
                <div class="layui-input-inline">
                    <input type="text" name="agentName" id="" required lay-verify="" placeholder="请输入个人月缴存额" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">月缴存额合计</label>
                <div class="layui-input-inline">
                    <input type="text" name="agentName" id="" required lay-verify="" placeholder="" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">二级管理辅助信息</label>
                <div class="layui-input-block" id="secondary2" >
                    <input type="radio" name="t" value="勾选" title="勾选" lay-filter="aaa"/>
                    <input type="radio" name="t" value="缺省" title="缺省" lay-filter="aaa"/>
                </div>
            </div>
            <div class="gx2">
                <div class="layui-form-item">
                    <label class="layui-form-label">部门编号</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" id="" lay-verify="" placeholder="请输入部门编号" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">部门名称</label>
                    <div class="layui-input-inline">
                        <select name="principalCardName" lay-verify="">
                            <option value="">请选择部门名称</option>
                            <option value="人事部">人事部</option>
                            <option value="财务部">财务部</option>
                            <option value="销售部">销售部</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">部门代码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" id="" lay-verify="" placeholder="请输入部门代码" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block layui-input-inline">
                    <button type="submit" class="layui-btn" lay-filter="">提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>

    <script type="text/javascript">
        layui.use(['layer', 'table', 'form'], function () {
            var table = layui.table;
            var layer = layui.layer;
            var form = layui.form;
            var $ = layui.$;
            table.render({
                elem : '#remitInventoryList',
                url : '<%=request.getContextPath() %>/',
                page : true,
                cols : [ [
                    {field : '',title : '序号',align : 'center',width : 100},
                    {field : '',title : '职工编号',align : 'center',width : 100},
                    {field : '',title : '姓名',align : 'center',width : 150},
                    {field : '',title : '证件名称',align : 'center',width : 150},
                    {field : '',title : '国别',align : 'center',width : 150},
                    {field : '',title : '证件号码',align : 'center',width : 150},
                    {field : '',title : '缴存基数',align : 'center',width : 150},
                    {field : '',title : '单位月缴存额',align : 'center',width : 150},
                    {field : '',title : '个人月缴存额',align : 'center',width : 150},
                    {field : '',title : '月缴存额合计',align : 'center',width : 150},
                    {field : '',title : '二级管理辅助信息',align : 'center',width : 150},
                    {fixed : 'right',title : '操作',width : 200,align : 'center',
                        toolbar :
                            '<div class="layui-btn-group">' +
                            '<button type="button" class="layui-btn" lay-event="edit">' +
                            '<i class="layui-icon layui-icon-edit"></i>' +
                            '</button>'+
                            '<button type="button" class="layui-btn layui-btn-danger" lay-event="del">' +
                            '<i class="layui-icon layui-icon-delete"></i>' +
                            '</button>'+
                            '</div>'
                    }
                ] ],
                limits : [5, 10, 15],
                toolbar :
                    '<div class="layui-btn-group" style="padding: 15px;">' +
                    '单位登记号：' +
                    '<div class="layui-inline">' +
                    '<input class="layui-input" name="" value="" autocomplete="off" lay-event="echoURId" readonly />' +
                    '</div>' +
                    '<button type="button" class="layui-btn" lay-event="add" lay-filter="" style="margin-left: 40px">' +
                    '<i class="layui-icon layui-icon-add-1"></i>' +
                    '</button>'+
                    '</div>'
            });

            table.on('tool(inventory)', function (obj) {
                var data=obj.data;
                if(obj.event === 'del'){
                    layer.confirm('确定要删除吗', {
                        title:'删除',
                        anim : 6
                    }, function (index) {
                        obj.del();
                        $.ajax({
                            type : "POST",
                            url : "<%=request.getContextPath() %>/*/*?Id="+data.entityId,
                            success : function (msg) {
                                layer.alert(msg.msg);
                                layer.close(index);
                            }
                        });
                    });
                }else if (obj.event === 'edit'){
                    $("#").val(data.productId);
                    $("#").val(data.productName);
                    $("#").val(data.productKind);
                    $("#").val(data.productState);
                    $("#").val(data.productState);
                    $("#").val(data.productName);
                    $("#").val(data.productName);
                    $("#").val(data.productKind);
                    $("#").val(data.productState);
                    $("#").val(data.productKind);
                    form.render();
                    layer.open({
                        type : 1,
                        title : '修改职工汇缴信息',
                        area : '420px',
                        moveType : 1,
                        resize : false,
                        anim : 4,
                        moveOut: true,
                        content : $('#editForm')
                    });
                }
            });

            table.on('toolbar(inventory)', function (obj) {
                if(obj.event === 'add'){
                    form.render();
                    layer.open({
                        type : 1,
                        title : '添加职工汇缴信息',
                        area : '420px',
                        moveType : 1,
                        resize : false,
                        anim : 4,
                        moveOut: true,
                        content : $('#addForm')
                    });
                }else if (obj.event === 'echoURId') {
                    $("#").val(data.productId);
                    form.render();
                }
            });
        });

        layui.use(['form'], function(){
            var form = layui.form;
            form.render();
            //监听提交
            form.on('submit()', function(data){
                return true;
            });
        });

        layui.use('form', function () {
            var form = layui.form;
            form.on('radio(aaa)', function (data) {
                if ($('#secondary1 input[name="t"]:checked ').val() == "缺省") {
                    $(".gx1").hide();
                }
                else {
                    $(".gx1").show();
                }
                //form.render();
            });
        });

        layui.use('form', function () {
            var form = layui.form;
            form.on('radio(aaa)', function (data) {
                if ($('#secondary2 input[name="t"]:checked ').val() == "缺省") {
                    $(".gx2").hide();
                }
                else {
                    $(".gx2").show();
                }
                //form.render();
            });
        });
    </script>
</body>
</html>
