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
    <span>单位登记号为:${unitRegisterId}</span>
    <div class="layui-fluid">
        <table class="layui-table" id="remitInventoryList" lay-filter="inventory"></table>
    </div>

    <div id="addForm" hidden="hidden" style="padding: 25px">
        <form action="<%=request.getContextPath()%>/remit/add" method="post" class="layui-form">
            <div class="layui-form-item">
                <label class="layui-form-label">职工编号</label>
                <div class="layui-input-block">
                    <input type="text" name="empNumber" lay-verify="required|number" placeholder="请输入职工编号" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">姓名</label>
                <div class="layui-input-block">
                    <input type="text" name="empName" lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">证件名称</label>
                <div class="layui-input-block">
                    <select name="empCardName" lay-verify="required">
                        <option value="">请选择证件名称</option>
                        <option value="身份证号">身份证号</option>
                        <option value="军官证号">军官证号</option>
                        <option value="护照">护照</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">国别</label>
                <div class="layui-input-block">
                    <input type="text" name="empCountry" lay-verify="required" placeholder="请输入国别" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">证件号码</label>
                <div class="layui-input-block">
                    <input type="text" name="empCardNumber" lay-verify="required|identity" placeholder="请输入证件号码" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">是否办卡</label>
                <div class="layui-input-block">
                    <select name="record" lay-verify="required">
                        <option value="">请选择是否办卡</option>
                        <option value="是">是</option>
                        <option value="否">否</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">缴存基数</label>
                <div class="layui-input-block">
                    <input type="text" name="empDepositeBase" id="d" lay-verify="required|positiveInt" placeholder="请输入缴存基数" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">单位月缴存额</label>
                <div class="layui-input-block">
                    <input type="text" name="unitMonthlyDeposit" id="a" readonly lay-verify="" placeholder="" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">个人月缴存额</label>
                <div class="layui-input-block">
                    <input type="text" name="personalMonthlyDeposit" id="b" readonly lay-verify="" placeholder="" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">月缴存额合计</label>
                <div class="layui-input-block">
                    <input type="text" name="totalMonthlyDeposit" id="c" readonly lay-verify="" placeholder="" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">二级管理辅助信息</label>
                <div class="layui-input-block">
                    <input type="radio" name="r" value="1" title="勾选" lay-filter="aaa">
                    <input type="radio" name="r" value="0" title="缺省" lay-filter="aaa">
                </div>
            </div>
            <div id="check1" style="display: none;">
                <div class="layui-form-item">
                    <label class="layui-form-label">部门编号</label>
                    <div class="layui-input-block">
                        <input type="text" name="deptNumber" lay-verify="required|number" placeholder="请输入部门编号" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">部门名称</label>
                    <div class="layui-input-block">
                        <select name="deptName" lay-verify="required">
                            <option value="">请选择部门名称</option>
                            <option value="人事部">人事部</option>
                            <option value="财务部">财务部</option>
                            <option value="销售部">销售部</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">部门代码</label>
                    <div class="layui-input-block">
                        <input type="text" name="deptCode" lay-verify="required" placeholder="请输入部门代码" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block" style="margin-left: 300px">
                    <button type="submit" class="layui-btn" lay-submit lay-filter="sub">提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>

    <div id="editForm" hidden="hidden" style="padding: 25px">
        <form action="<%=request.getContextPath() %>/remit/update" method="post" class="layui-form">
            <div class="layui-input-block">
                <input type="hidden" class="layui-input" name="remitInventoryId" id="remitInventoryId">
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">职工编号</label>
                <div class="layui-input-block">
                    <input type="text" name="empNumber" id="empNumber" lay-verify="readonly" placeholder="请输入员工编号" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">姓名</label>
                <div class="layui-input-block">
                    <input type="text" name="empName" id="empName" lay-verify="readonly" placeholder="请输入姓名" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">证件名称</label>
                <div class="layui-input-block">
                    <select name="empCardName" id="empCardName" lay-verify="required">
                        <option value="">请选择证件名称</option>
                        <option value="身份证号">身份证号</option>
                        <option value="军官证号">军官证号</option>
                        <option value="护照">护照</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">国别</label>
                <div class="layui-input-block">
                    <input type="text" name="empCountry" id="empCountry" lay-verify="required" placeholder="请输入国别" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">证件号码</label>
                <div class="layui-input-block">
                    <input type="text" name="empCardNumber" id="empCardNumber" lay-verify="required" placeholder="请输入证件号码" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">是否办卡</label>
                <div class="layui-input-block">
                    <select name="record" id="record" lay-verify="required">
                        <option value="">请选择是否办卡</option>
                        <option value="是">是</option>
                        <option value="否">否</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">缴存基数</label>
                <div class="layui-input-block">
                    <input type="text" name="empDepositeBase" id="empDepositeBase" lay-verify="required|positiveInt" placeholder="请输入缴存基数" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">单位月缴存额</label>
                <div class="layui-input-block">
                    <input type="text" name="unitMonthlyDeposit" id="unitMonthlyDeposit" lay-verify="required|number" placeholder="请输入单位月缴存额" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">个人月缴存额</label>
                <div class="layui-input-block">
                    <input type="text" name="personalMonthlyDeposit" id="personalMonthlyDeposit" lay-verify="readonly|number" placeholder="请输入个人月缴存额" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">月缴存额合计</label>
                <div class="layui-input-block">
                    <input type="text" name="totalMonthlyDeposit" id="totalMonthlyDeposit" lay-verify="readonly" placeholder="" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">二级管理辅助信息</label>
                <div class="layui-input-block">
                    <input type="radio" name="i" value="1" title="勾选" lay-filter="bbb">
                    <input type="radio" name="i" value="0" title="缺省" lay-filter="bbb">
                </div>
            </div>
            <div id="check2" style="display: none;">
                <div class="layui-form-item">
                    <label class="layui-form-label">部门编号</label>
                    <div class="layui-input-block">
                        <input type="text" name="deptNumber" lay-verify="required|number" placeholder="请输入部门编号" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">部门名称</label>
                    <div class="layui-input-block">
                        <select name="deptName" lay-verify="required">
                            <option value="">请选择部门名称</option>
                            <option value="人事部">人事部</option>
                            <option value="财务部">财务部</option>
                            <option value="销售部">销售部</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">部门代码</label>
                    <div class="layui-input-block">
                        <input type="text" name="deptCode" lay-verify="required" placeholder="请输入部门代码" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block" style="margin-left: 300px">
                    <button type="submit" class="layui-btn" lay-submit lay-filter="sub">提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>

    <script type="text/javascript">
        layui.use(['form','jquery'], function(){
            var form = layui.form;
            var $= layui.$;
            form.on('radio(aaa)', function(data){
			    alert(data.value); //被点击的radio的value值
                if(data.value == 1){
                    $("#check1").show();
                }else{
                    $("#check1").hide();
                }
            });

            form.on('radio(bbb)', function(data){
                alert(data.value); //被点击的radio的value值
                if(data.value == 1){
                    $("#check2").show();
                }else{
                    $("#check2").hide();
                }
            });
        });

        $(function(){
            $('#d').bind('input propertychange', function() {
                var d = $('#d').val();
                var rate = 0.12;
                var a = d * rate;
                var b = d * rate;
                $('#a').val(a);
                $('#b').val(b);
                var sum= parseInt(a) + parseInt(b);
                $('#c').val(sum);
            });
        });
    </script>

    <script type="text/javascript">
        layui.use(['layer', 'table', 'form'], function () {
            var table = layui.table;
            var layer = layui.layer;
            var form = layui.form;
            var $ = layui.$;
            table.render({
                elem : '#remitInventoryList',
                url : '<%=request.getContextPath() %>/remit/list?record=${record}',
                page : true,
                height : 550,
                cols : [ [
                    {field : 'remitInventoryId',title : '序号',align : 'center',width : 100},
                    {field : 'empNumber',title : '职工编号',align : 'center',width : 100},
                    {field : 'empName',title : '姓名',align : 'center',width : 150},
                    {field : 'empCardName',title : '证件名称',align : 'center',width : 150},
                    {field : 'empCountry',title : '国别',align : 'center',width : 150},
                    {field : 'empCardNumber',title : '证件号码',align : 'center',width : 150},
                    {field : 'record',title : '是否办卡',align : 'center',width : 150},
                    {field : 'empDepositeBase',title : '缴存基数',align : 'center',width : 150},
                    {field : 'unitMonthlyDeposit',title : '单位月缴存额',align : 'center',width : 150},
                    {field : 'personalMonthlyDeposit',title : '个人月缴存额',align : 'center',width : 150},
                    {field : 'totalMonthlyDeposit',title : '月缴存额合计',align : 'center',width : 150},
                    {field : 'secondAssistMessage',title : '二级管理辅助信息',align : 'center',width : 150},
                    {fixed : 'right',title : '操作',width : 200,align : 'center',
                        toolbar :
                            '<div class="layui-btn-group">' +
                            '<button type="submit" class="layui-btn layui-btn-fluid" lay-event="edit" lay-filter="sub">' +
                            '<i class="layui-icon layui-icon-edit"></i>' +
                            '</button>'+
                            /*'<button type="button" class="layui-btn layui-btn-danger" lay-event="del">' +
                            '<i class="layui-icon layui-icon-delete"></i>' +
                            '</button>'+*/
                            '</div>'
                    }
                ] ],
                limits : 10,
                toolbar :
                    '<div class="layui-btn-group" style="padding: 15px;">' +
                    '单位登记号：' +
                    '<div class="layui-inline">' +
                    '</div>' +
                    '<button type="submit" class="layui-btn" lay-event="add" lay-filter="sub" style="margin-left: 40px">' +
                    '<i class="layui-icon layui-icon-add-1"></i>' +
                    '</button>'+
                    '</div>'
            });

            table.on('tool(inventory)', function (obj) {
                var data=obj.data;
                if (obj.event === 'edit'){
                    $("#remitInventoryId").val(data.remitInventoryId);
                    $("#empNumber").val(data.empNumber);
                    $("#empName").val(data.empName);
                    $("#empCardName").val(data.empCardName);
                    $("#empCountry").val(data.empCountry);
                    $("#empCardNumber").val(data.empCardNumber);
                    $("#empDepositeBase").val(data.empDepositeBase);
                    $("#unitMonthlyDeposit").val(data.unitMonthlyDeposit);
                    $("#personalMonthlyDeposit").val(data.personalMonthlyDeposit);
                    $("#totalMonthlyDeposit").val(data.totalMonthlyDeposit);
                    $("#record").val(data.record);
                    form.render();
                    layer.open({
                        type : 1,
                        title : '修改职工汇缴信息',
                        area : '800px',
                        moveType : 1,
                        resize : false,
                        anim : 4,
                        moveOut: true,
                        content : $('#editForm')
                    });
                }
            });

            table.on('toolbar(inventory)', function (obj) {
                var data=obj.data;
                if(obj.event === 'add'){
                    form.render();
                    layer.open({
                        type : 1,
                        title : '添加职工汇缴信息',
                        area : '800px',
                        moveType : 1,
                        resize : false,
                        anim : 4,
                        moveOut: true,
                        content : $('#addForm')
                    });
                }else if (obj.event === 'echoURId') {
                    $("#remitInventoryId").val(data.remitInventoryId);
                    form.render();
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

        layui.use(['form','jquery'], function () {
            var form=layui.form;
            form.verify({
                positiveInt:[
                    /^[1-9]\d*$/,
                    '缴存基数必须是正整数,且不能为0'
                ]
            });
        });
    </script>
</body>
</html>
