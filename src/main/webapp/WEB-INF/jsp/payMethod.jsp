<%--
  Created by IntelliJ IDEA.
  User: kaiguan
  Date: 2019/10/28
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>缴款方式管理</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/payMethod.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/layui/css/layui.css" media="all">
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/layui/layui.js"></script>
</head>
<body>
    <div>
        <div id="header">
            <span>单位缴款方式管理 --> 选择并录入缴款方式信息</span>
        </div>
        <div id="payMethod">
            <div id="span1">
                <span>缴款方式</span>
            </div>
            <form action="<%=request.getContextPath() %>/remitManager/remitManager" method="post" class="layui-form">
                <div class="layui-form-text layui-inline" style="margin-left: 50px; margin-bottom: 20px; margin-top: -20px; font-size: 20px; color: #FF0000;">
                    <c:if test="${msg!=null}">
                        <span>${msg}</span>
                    </c:if>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位登记号</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${unitRegisterId}" name="unitRegisterId" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">单位名称</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${unitName}" name="unitName" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">业务种类</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${businessKind}" name="businessKind" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">资金来源</label>
                    <div class="layui-input-block">
                        <input type="text" readonly value="${moneySource}" name="moneySource" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">缴款方式</label>
                    <div class="layui-input-block">
                        <input type="button" name="" class="layui-btn" value="委托收款" id="entrustFun">
                        <input type="button" name="" class="layui-btn" value="主动汇款" id="accordFun">
                        <input type="button" name="" class="layui-btn" value="转账支票" id="transferFun">
                        <input type="button" name="" class="layui-btn" value="现金刷卡" id="cashFun">
                        <input type="button" name="" class="layui-btn" value="财政统发" id="financeFun">
                    </div>
                </div><br>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button type="submit" class="layui-btn" lay-submit lay-filter="sub">提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
                <div id="entrust" hidden>
                    <div id="entrustSpan">
                        <span>委托收款信息</span>
                    </div>
                    <form action="<%=request.getContextPath() %>/remitManager/remitManager" method="post" class="layui-form">
                        <div class="layui-form-item">
                            <label class="layui-form-label">委托收款单位名称</label>
                            <div class="layui-input-block">
                                <input type="text" name="proceedsUnitName" lay-verify="required|hanZi" placeholder="请输入单位名称" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">委托收款单位账号</label>
                            <div class="layui-input-block">
                                <input type="text" name="proceedsUnitAccount" lay-verify="required|number" placeholder="请输入单位账号" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">托收单位开户银行名称</label>
                            <div class="layui-input-block">
                                <input type="text" name="proceedsUnitBank" lay-verify="required|hanZi" placeholder="请输入开户银行名称" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">银行交换号</label>
                            <div class="layui-input-block">
                                <input type="text" name="bankNumberChange" lay-verify="required|number" placeholder="请输入银行交换号" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">支付系统号</label>
                            <div class="layui-input-block">
                                <input type="text" name="paySystemNumber" lay-verify="required|number" placeholder="请输入支付系统号" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">托收日期</label>
                            <div class="layui-input-block">
                                <select name="proceedsDate" lay-verify="required">
                                    <option value="">请选择托收日期</option>
                                    <option value="1">1日</option>
                                    <option value="15">15日</option>
                                </select>
                            </div>
                        </div><br>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button type="submit" class="layui-btn" lay-submit lay-filter="sub">提交</button>
                                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div id="accord" hidden>
                    <div id="accordSpan">
                        <span>主动汇款信息</span>
                    </div>
                    <form action="<%=request.getContextPath() %>/remitManager/remitManager" method="post" class="layui-form">
                        <div class="layui-form-item">
                            <label class="layui-form-label">汇款单位名称</label>
                            <div class="layui-input-block">
                                <input type="text" name="remitUnitName" lay-verify="required|hanZi" placeholder="请输入汇款单位名称" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">汇款单位开户银行</label>
                            <div class="layui-input-block">
                                <input type="text" name="remitUnitBank" lay-verify="required|hanZi" placeholder="请输入开户银行名称" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">汇款账号</label>
                            <div class="layui-input-block">
                                <input type="text" name="remitUnitAccount" lay-verify="required|number" placeholder="请输入汇款账号" autocomplete="off" class="layui-input">
                            </div>
                        </div><br>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button type="submit" class="layui-btn" lay-submit lay-filter="sub">提交</button>
                                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div id="transfer" hidden>
                    <div id="transferSpan">
                        <span>转账支票信息</span>
                    </div>
                    <form action="<%=request.getContextPath() %>/remitManager/remitManager" method="post" class="layui-form">
                        <div class="layui-form-item">
                            <label class="layui-form-label">单位开户银行</label>
                            <div class="layui-input-block">
                                <input type="text" name="unitBank" lay-verify="required|hanZi" placeholder="请输入单位开户银行" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">账号</label>
                            <div class="layui-input-block">
                                <input type="text" name="unitAccount" lay-verify="required|number" placeholder="请输入账号" autocomplete="off" class="layui-input">
                            </div>
                        </div><br>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button type="submit" class="layui-btn" lay-submit lay-filter="sub">提交</button>
                                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div id="cash" hidden>
                    <div id="cashSpan">
                        <span>现金刷卡信息</span>
                    </div>
                    <form action="<%=request.getContextPath() %>/remitManager/remitManager" method="post" class="layui-form">
                        <div class="layui-form-item">
                            <label class="layui-form-label">缴款网点</label>
                            <div class="layui-input-block">
                                <input type="text" name="paymentPoint" lay-verify="required|hanZi" placeholder="请输入缴款网点" autocomplete="off" class="layui-input">
                            </div>
                        </div><br>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button type="submit" class="layui-btn" lay-submit lay-filter="sub">提交</button>
                                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div id="finance" hidden>
                    <div id="financeSpan">
                        <span>财政统发信息</span>
                    </div>
                    <form action="<%=request.getContextPath() %>/remitManager/appropriationUnit" method="post" class="layui-form">
                        <div class="layui-form-item">
                            <label class="layui-form-label">统发单位名称</label>
                            <div class="layui-input-block">
                                <input type="text" readonly value="${appropriationUnit}" name="appropriationUnit" lay-verify="" placeholder="" autocomplete="off" class="layui-input">
                            </div>
                        </div><br>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button type="submit" class="layui-btn" lay-submit lay-filter="sub">提交</button>
                                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                            </div>
                        </div>
                    </form>
                </div>
            </form>
        </div>
    </div>

    <script>
        $(function () {
            $("#entrustFun").click(function () {
                $("#entrust").show();
                $("#entrust").siblings().hide();
            });
            $("#accordFun").click(function () {
                $("#accord").show();
                $("#accord").siblings().hide();
            });
            $("#transferFun").click(function () {
                $("#transfer").show();
                $("#transfer").siblings().hide();
            });
            $("#cashFun").click(function () {
                $("#cash").show();
                $("#cash").siblings().hide();
            });
            $("#financeFun").click(function () {
                $("#finance").show();
                $("#finance").siblings().hide();
            });
        });
    </script>

    <script type="text/javascript">
        layui.use(['form','jquery'], function () {
            var form=layui.form;
            var $ = layui.jquery;
            form.render();
            form.verify({
                hanZi:[
                    /^[\u4e00-\u9fa5]{10,}$/,
                    '请输入汉字,且单位名称需要输入至少10个字'
                ]
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
    </script>
</body>
</html>
