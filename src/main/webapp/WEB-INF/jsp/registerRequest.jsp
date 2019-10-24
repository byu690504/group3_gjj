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
    <script src="<%=request.getContextPath() %>/layui/layui.all.js"></script>
</head>
<body>
    <div id="body">
        <div id="header">
            <span>新单位用户登记申请 --> 录入登记申请信息</span>
        </div>
        <div id="registerRequest">
            <div id="span1">
                <span>单位登记申请</span>
            </div>
            <form action="<%=request.getContextPath() %>/" method="post" class="layui-form">
                <div class="layui-form-item">
                    <label class="layui-form-label">单位名称</label>
                    <div class="layui-input-inline">
                        <input type="text" name="unitName" id="unitName" required lay-verify="required" placeholder="请输入单位名称" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">组织机构代码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="unitCode" id="unitCode" required lay-verify="required" placeholder="请输入组织机构代码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位证件名称</label>
                    <div class="layui-input-inline">
                        <select name="unitCardName" required lay-verify="required">
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
                        <input type="text" name="unitCardNumber" id="unitCardNumber" required lay-verify="required" placeholder="请输入单位证件号码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位性质代码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="unitNatureCode" id="unitNatureCode" required lay-verify="required" placeholder="请输入单位性质代码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">法人/负责人</label>
                    <div class="layui-input-inline">
                        <input type="text" name="principalName" id="principalName" required lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">法人/负责人证件名称</label>
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
                    <label class="layui-form-label">法人/负责人证件号码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" id="principalCardNumber" required lay-verify="required" placeholder="请输入证件号码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位注册地址</label>
                    <div class="layui-input-inline">
                        <input type="text" name="unitRegisterAddress" id="unitRegisterAddress" required lay-verify="required" placeholder="请输入单位注册地址" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位办公地址</label>
                    <div class="layui-input-inline">
                        <input type="text" name="unitWorkAddress" id="unitWorkAddress" required lay-verify="required" placeholder="请输入单位办公地址" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">是否具备法人资格</label>
                    <div class="layui-input-inline">
                        <select name="cardName" required lay-verify="required">
                            <option value="">请选择是/否</option>
                            <option value="是">是</option>
                            <option value="否">否</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位成立时间</label>
                    <div class="layui-input-inline">
                        <input type="text" class="layui-input laydate" name="unitEstablishTime" id="unitEstablishTime" placeholder="请选择时间">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">上级主管单位</label>
                    <div class="layui-input-inline">
                        <input type="text" name="superiorUnit" id="superiorUnit" required lay-verify="required" placeholder="上级主管单位" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位登记经办人姓名</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" id="agentName" required lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">经办人证件名称</label>
                    <div class="layui-input-inline">
                        <select name="agentCardName" required lay-verify="required">
                            <option value="">请选择证件名称</option>
                            <option value="身份证号">身份证号</option>
                            <option value="军官证号">军官证号</option>
                            <option value="护照">护照</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">经办人证件号码</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentCardNumber" id="agentCardNumber" required lay-verify="required" placeholder="请输入证件号码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block layui-input-inline">
                        <button type="submit" class="layui-btn" lay-filter="registerRequest">提交</button>
                        <input type="reset" class="layui-btn" value="重置">
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
                //正则验证身份证
                validateCardNumber:[
                    /(^$)|(^\d{15}$)|(^\d{17}(x|X|\d)$)/,
                    '请输入正确的身份证号'
                ]
            });
        });
        layui.use(['form','laydate'], function(){
            var form = layui.form;
            var laydate = layui.laydate;
            //监听提交
            form.on('submit(registerRequest)', function(data){
                layer.msg(JSON.stringify(data.field));
                return false;
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
