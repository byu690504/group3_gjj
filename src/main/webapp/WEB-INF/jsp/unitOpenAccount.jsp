<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/24
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>单位开户申请</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/unitOpenAccount.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.js"></script>
</head>
<body>
    <div>
        <div id="header">
            <span>单位开户申请 --> 录入开户申请信息</span>
        </div>
        <div id="unitOpenAccount">
            <div id="span1">
                <span>单位开户申请</span>
            </div>
            <form action="<%=request.getContextPath() %>/unitOpenAccount/unitOpenAccount" method="post" class="layui-form">
                <div class="layui-form-text layui-inline" style="margin-left: 65px; margin-bottom: 20px; margin-top: -20px; font-size: 20px; color: #FF0000;">
                    <c:if test="${msg!=null}">
                        <span>${msg}</span>
                    </c:if>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位登记号</label>
                    <div class="layui-input-inline">
                        <input type="text" value="${unitRegisterId}" readonly name="unitRegisterId" lay-verify="required|NumAndAbc" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位名称</label>
                    <div class="layui-input-inline">
                        <input type="text" value="${unitName}" readonly name="unitName" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">业务种类</label>
                    <div class="layui-input-block">
                        <select name="businessKind" lay-verify="required">
                            <option value="">请选择业务种类</option>
                            <option value="住房公积金">住房公积金</option>
                            <option value="住房补贴">住房补贴</option>
                            <option value="住房基金">住房基金</option>
                            <option value="住房维修基金">住房维修基金</option>
                        </select>
                    </div>
                </div>
                <div id="span2">
                    <span>单位账户信息</span>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">资金来源</label>
                    <div class="layui-input-block" name="moneySource">
                        <input type="radio" name="moneySource" value="0" title="单位自筹" lay-filter="aaa">
                        <input type="radio" name="moneySource" value="1" title="财政拨款" lay-filter="aaa">
                        <input type="radio" name="moneySource" value="1" title="财政拨款和单位自筹" lay-filter="aaa">
                    </div>
                </div>
                <div id="check1" style="display: none">
                    <div class="layui-form-item">
                        <label class="layui-form-label">财政拨款单位</label>
                        <div class="layui-input-block">
                            <select name="appropriationUnit">
                                <option value="">请选择拨款单位</option>
                                <option value="市财政">市财政</option>
                                <option value="区县财政">区县财政</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">开通二级辅助信息</label>
                    <div class="layui-input-block">
                        <select name="secondAssistMessage" lay-verify="required">
                            <option value="">请选择是否开通</option>
                            <option value="是">是</option>
                            <option value="否">否</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">业务经办部门</label>
                    <div class="layui-input-block">
                        <input type="text" name="businessAgentDept" lay-verify="required|hanZi" placeholder="请输入业务经办部门" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">联系电话</label>
                    <div class="layui-input-block">
                        <input type="text" value="${agentPhone}" readonly name="agentPhone" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位预算代码</label>
                    <div class="layui-input-block">
                        <input type="text" name="unitBudgetCode" lay-verify="number" placeholder="请输入单位预算代码" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">发薪日期</label>
                    <div class="layui-input-block">
                        <select name="payoffDate" lay-verify="required">
                            <option value="">请选择发薪日期</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="22">22</option>
                            <option value="23">23</option>
                            <option value="24">24</option>
                            <option value="25">25</option>
                            <option value="26">26</option>
                            <option value="27">27</option>
                            <option value="28">28</option>
                            <option value="29">29</option>
                            <option value="30">30</option>
                            <option value="31">31</option>
                        </select>
                    </div>
                </div>
                <div id="span3">
                    <span>缴存信息</span>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">首次汇缴月份</label>
                    <div class="layui-input-block">
                        <select name="firstRemitMonth" lay-verify="required">
                            <option value="">请选择汇缴月份</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">跨年清册核定月份</label>
                    <div class="layui-input-block">
                        <select name="approvedMonthOfCrossYearInventory" lay-verify="required">
                            <option value="">请选择核定月份</option>
                            <option value="1月">1月</option>
                            <option value="7月">7月</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位缴存比例</label>
                    <div class="layui-input-block">
                        <input type="text" name="unitDepositProportion" lay-verify="required|number" placeholder="请输入单位缴存比例" autocomplete="off" class="layui-input">

                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">个人缴存比例</label>
                    <div class="layui-input-block">
                        <input type="text" name="personDepositProportion" lay-verify="required|number" placeholder="一般默认50%" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">每月汇缴是否需要确认人员清册</label>
                    <div class="layui-input-block">
                        <select name="confirmEmpInventory" lay-verify="required">
                            <option value="">请选择是否确认</option>
                            <option value="是">是</option>
                            <option value="否">否</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">是否接受中心信息服务</label>
                    <div class="layui-input-block">
                        <select name="acceptTheInformationServiceOfTheCenter" lay-verify="required">
                            <option value="">请选择是否接受</option>
                            <option value="是">是</option>
                            <option value="否">否</option>
                        </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">受理经办人</label>
                    <div class="layui-input-block">
                        <input type="text" value="${agentName}" readonly name="agentName" autocomplete="off" class="layui-input">
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
        layui.use(['form','jquery'], function(){
            var form = layui.form;
            var $= layui.$;
            form.on('radio(aaa)', function(data){
                //alert(data.value); //被点击的radio的value值
                if(data.value == 1){
                    $("#check1").show();
                }else{
                    $("#check1").hide();
                }
            });
        });

        layui.use('form', function(){
            var form = layui.form;
            form.render();
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
                ],
                hanZi:[
                    /^[\u4e00-\u9fa5]+$/,
                    '请输入汉字'
                ]
            });
        });
    </script>
</body>
</html>
