<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/23
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>单位登记申请</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/registerRequest.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.js"></script>
</head>
<body>
    <div>
        <div id="header">
            <span>单位用户登记申请 --> 录入登记申请信息</span>
        </div>
        <div id="registerRequest">
            <div id="span1">
                <span>单位登记申请</span>
            </div>
            <form action="<%=request.getContextPath() %>/unitRegister/unitRegister" method="post" class="layui-form">
                <div class="layui-form-item">
                    <label class="layui-form-label">单位名称</label>
                    <div class="layui-input-inline">
                        <input type="text" readonly value="${unitName}" name="unitName" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">组织机构代码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="unitCode" lay-verify="required|number" placeholder="请输入组织机构代码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位证件名称</label>
                    <div class="layui-input-inline">
                        <select name="unitCardName" lay-verify="required">
                            <option value="">请选择单位证件名称</option>
                            <option value="企业营业执照">企业营业执照</option>
                            <option value="事业法人证书">事业法人证书</option>
                            <option value="社团登记证书">社团登记证书</option>
                            <option value="个体工商执照">个体工商执照</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位证件号码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="unitCardNumber" lay-verify="required|number" placeholder="请输入单位证件号码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位性质代码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="unitNatureCode" lay-verify="required|number" placeholder="请输入单位性质代码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">法人/负责人</label>
                    <div class="layui-input-inline">
                        <input type="text" name="principalName" lay-verify="required|hanZi" placeholder="请输入姓名" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">法人/负责人证件名称</label>
                    <div class="layui-input-inline">
                        <select name="principalCardName" lay-verify="required">
                            <option value="">请选择证件名称</option>
                            <option value="身份证号">身份证号</option>
                            <option value="军官证号">军官证号</option>
                            <option value="护照">护照</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">法人/负责人证件号码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="principalCardNumber" lay-verify="required|identity" placeholder="请输入证件号码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位注册地址</label>
                    <div class="layui-input-inline">
                        <input type="text" name="unitRegisterAddress" lay-verify="required|hanZi" placeholder="请输入单位注册地址" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位办公地址</label>
                    <div class="layui-input-inline">
                        <input type="text" name="unitWorkAddress" lay-verify="required|hanZi" placeholder="请输入单位办公地址" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">是否具备法人资格</label>
                    <div class="layui-input-inline">
                        <select name="principalStatus" lay-verify="required">
                            <option value="">请选择是否具备</option>
                            <option value="是">是</option>
                            <option value="否">否</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位成立时间</label>
                    <div class="layui-input-inline">
                        <input type="text" class="layui-input laydate" name="unitTime" id="q" placeholder="请选择时间">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">上级主管单位</label>
                    <div class="layui-input-inline">
                        <input type="text" name="superiorUnit" lay-verify="required|hanZi" placeholder="请输入上级主管单位" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位登记经办人姓名</label>
                    <div class="layui-input-inline">
                        <input type="text" readonly name="agentName" value="${aName}" lay-verify="" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">经办人证件名称</label>
                    <div class="layui-input-inline">
                        <select name="agentCardName" readonly>
                            <option value="${aCardName}">${aCardName}</option>
                            <option value="身份证号">身份证号</option>
                            <option value="军官证号">军官证号</option>
                            <option value="护照">护照</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">经办人证件号码</label>
                    <div class="layui-input-inline">
                        <input type="text" readonly name="agentCardNumber" value="${aCardNumber}" autocomplete="off" class="layui-input">
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
            form.verify({
                hanZi:[
                    /^[\u4e00-\u9fa5]+$/,
                    '请输入汉字'
                ]
            });
        });
        layui.use(['form','laydate'], function() {
            var form = layui.form;
            var laydate = layui.laydate;
            form.render();
            //监听提交
            form.on('submit(sub)', function(data){
                return true;
            });
            //显示时间效果
            laydate.render({
                elem : '#q',
                type : 'datetime',
                min : '2019-1-01 00:00:00',
                max : '2020-12-31 23:59:59'
            });
        });
    </script>
</body>
</html>
