<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/24
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>单位用户业务授权</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/unitBusinessPower.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.js"></script>
</head>
<body>
    <div>
        <div id="header">
            <span>单位用户业务授权 --> 录入业务授权申请信息</span>
        </div>
        <div id="unitBusinessPower">
            <div id="span1">
                <span>单位用户业务授权</span>
            </div>
            <form action="<%=request.getContextPath() %>/unitBusinessPower/unitBusinessPower" method="post" class="layui-form">
                <div class="layui-form-item">
                    <label class="layui-form-label">单位登记号</label>
                    <div class="layui-input-inline">
                        <input type="text" value="${unitRegisterId}" name="unitRegisterId" id="unitRegisterId" lay-verify="required|NumAndAbc" placeholder="请输入单位登记号" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位名称</label>
                    <div class="layui-input-inline">
                        <input type="text" value="${unitName}" name="unitName" id="unitName" lay-verify="required" placeholder="请输入单位名称" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">账户属性</label>
                    <div class="layui-input-inline">
                        <select name="accountAttribute" lay-verify="required">
                            <option value="">请选择账户属性</option>
                            <option value="住房公积金">住房公积金</option>
                            <option value="住房补贴">住房补贴</option>
                            <option value="住房基金">住房基金</option>
                            <option value="住房维修基金">住房维修基金</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">用户类型</label>
                    <div class="layui-input-block" id="userType" >
                        <input type="radio" name="userType" value="1" title="证书用户" lay-filter="aaa">
                        <input type="radio" name="userType" value="0" title="非证书用户" lay-filter="aaa">
                    </div>
                </div>
                <div id="check1" style="display: none;">
                    <div class="layui-form-item">
                        <label class="layui-form-label">单位名称</label>
                        <div class="layui-input-inline">
                            <input type="text" name="agentName" id="agentName" lay-verify="" placeholder="请输入单位名称" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div id="check2" style="display: none;">
                    <div class="layui-form-item">
                        <label class="layui-form-label">经办人1</label>
                        <div class="layui-input-inline">
                            <input type="text" value="${agentName}" name="agentName" id="agentName" lay-verify="" placeholder="请输入姓名" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">证件名称</label>
                        <div class="layui-input-inline">
                            <input type="text" value="${agentCardName}" name="agentCardName" id="agentCardName" lay-verify="" placeholder="请输入证件名称" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">证件号</label>
                        <div class="layui-input-inline">
                            <input type="text" value="${agentCardNumber}" name="agentCardNumber" id="agentCardNumber" lay-verify="identity" placeholder="请输入证件号" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">联系方式</label>
                        <div class="layui-input-inline">
                            <input type="text" value="${agentPhone}" name="agentPhone" id="agentPhone" lay-verify="phone" placeholder="请输入联系方式" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <%--<div class="layui-form-item">
                        <label class="layui-form-label">经办人2</label>
                        <div class="layui-input-inline">
                            <input type="text" name="agentName" id="agentName" lay-verify="" placeholder="请输入姓名" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">证件名称</label>
                        <div class="layui-input-inline">
                            <input type="text" name="agentName" id="agentName" lay-verify="" placeholder="请输入证件名称" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">证件号</label>
                        <div class="layui-input-inline">
                            <input type="text" name="agentName" id="agentName" lay-verify="identity" placeholder="请输入证件号" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">联系方式</label>
                        <div class="layui-input-inline">
                            <input type="text" name="agentName" id="agentName" lay-verify="phone" placeholder="请输入联系方式" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">经办人3</label>
                        <div class="layui-input-inline">
                            <input type="text" name="agentName" id="agentName" lay-verify="" placeholder="请输入姓名" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">证件名称</label>
                        <div class="layui-input-inline">
                            <input type="text" name="agentName" id="agentName" lay-verify="" placeholder="请输入证件名称" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">证件号</label>
                        <div class="layui-input-inline">
                            <input type="text" name="agentName" id="agentName" lay-verify="identity" placeholder="请输入证件号" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">联系方式</label>
                        <div class="layui-input-inline">
                            <input type="text" name="agentName" id="agentName" lay-verify="phone" placeholder="请输入联系方式" autocomplete="off" class="layui-input">
                        </div>
                    </div>--%>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block layui-input-inline">
                        <button type="submit" class="layui-btn" lay-submit lay-filter="sub">提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script type="text/javascript">
        layui.use(['form','jquery'], function(){
            var form = layui.form;
            var $= layui.$;
            form.on('radio(aaa)', function(data){
                //alert(data.value); //被点击的radio的value值
                if(data.value == 1){
                    $("#check1").show();
                    $("#check2").hide();
                }else{
                    $("#check2").show();
                    $("#check1").hide();
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
                NumAndAbc:[
                    /^[0-9a-zA-Z]{6,32}$/,
                    '单位登记号可以是全数字或全字母,或数字和字母组合,且长度要在6-32位之间'
                ]
            });
        });
    </script>
</body>
</html>
