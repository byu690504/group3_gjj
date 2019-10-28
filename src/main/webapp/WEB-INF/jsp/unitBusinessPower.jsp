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
            <form action="<%=request.getContextPath() %>/" method="post" class="layui-form">
                <div class="layui-form-item">
                    <label class="layui-form-label">单位登记号</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" id="agentName" lay-verify="required|number" placeholder="请输入单位登记号" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位名称</label>
                    <div class="layui-input-inline">
                        <input type="text" name="agentName" id="agentName" lay-verify="required" placeholder="请输入单位名称" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">账户属性</label>
                    <div class="layui-input-inline">
                        <select name="cardName" lay-verify="required">
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
                        <input type="radio" name="t" value="证书用户" title="证书用户" lay-filter="aaa"/>
                        <input type="radio" name="t" value="非证书用户" title="非证书用户" lay-filter="aaa"/>
                    </div>
                </div>
                <div class="zs">
                    <div class="layui-form-item">
                        <label class="layui-form-label">单位名称</label>
                        <div class="layui-input-inline">
                            <input type="text" name="agentName" id="agentName" lay-verify="" placeholder="请输入单位名称" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </div>
                <div class="fzs">
                    <div class="layui-form-item">
                        <label class="layui-form-label">经办人1</label>
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
                    </div>
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
        layui.use('form', function(){
            var form = layui.form;
            //监听提交
            form.on('submit(sub)', function(data){
                return true;
            });
        });
        layui.use('form', function () {
            var form = layui.form;
            form.on('radio(aaa)', function (data) {
                if ($('#userType input[name="t"]:checked ').val() == "证书用户") {
                    $(".zs").show();
                }
                else {
                    $(".zs").hide();
                }
                if ($('#userType input[name="t"]:checked ').val() == "非证书用户") {
                    $(".fzs").show();
                }
                else {
                    $(".fzs").hide();
                }
                //form.render();
            });
        });
    </script>
</body>
</html>
