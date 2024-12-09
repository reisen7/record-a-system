<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>快速记 - 记一笔</title>

    <link rel="stylesheet" href="../res/layui/css/layui.css">
    <link rel="stylesheet" href="../res/css/global.css">
    <link rel="stylesheet" href="../res/css/cntl.css">
    <style>
        body {
            background: #f0f2f5;
            color: #333;
            font-family: 'Arial', sans-serif;
        }
        .fly-header {
            background-color: #3f7ee7;
            padding: 1rem;
        }
        .fly-logo img {
            height: 50px;
        }
        .layui-container {
            margin-top: 2rem;
        }
        .layui-tab-title li {
            color: #fff;
        }
        .layui-this {
            background-color: #6366f1;
        }
        .layui-btn {
            background-color: #6366f1;
            color: #fff;
            border-radius: 5px;
        }
        .layui-btn:hover {
            background-color: #4f46e5;
        }
        .fly-footer {
            background-color: #1e293b;
            color: #e2e8f0;
            text-align: center;
            padding: 1rem;
            margin-top: 2rem;
        }
        .form-section {
            background: #ffffff;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-section h3 {
            color: #1e293b;
            margin-bottom: 1rem;
        }
        .form-section .layui-input-block {
            margin-left: 0;
        }
        .layui-input, .layui-textarea {
            border-radius: 5px;
        }
        .layui-form-item {
            margin-bottom: 1rem;
        }
        .layui-select dd.layui-this a {
            color: #6366f1;
        }
        .layui-laydate-content td.layui-this {
            background-color: #6366f1 !important;
        }
        .layui-layer-dialog .layui-layer-btn a {
            color: #6366f1;
        }
    </style>
</head>
<body>

<div class="fly-header">
    <div class="layui-container">
        <a class="fly-logo" href="showIndex.action">
        </a>
        <ul class="layui-nav fly-nav-user">
            <li class="layui-nav-item">
                <a class="fly-nav-avatar" href="javascript:;">
                    <cite class="layui-hide-xs">Andy</cite>
                </a>
            </li>
        </ul>
    </div>
</div>

<div class="layui-container">
    <div class="form-section">
        <h3>记一笔</h3>
        <div class="layui-tab layui-tab-brief" lay-filter="user">
            <ul class="layui-tab-title">
                <li class="layui-this">支出</li>
                <li><a href="add2.action">收入</a></li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <form class="layui-form" action="addNew.action" method="post">
                        <input type="hidden" name="type" value="2">
                        <div class="layui-row layui-col-space15">
                            <div class="layui-col-md6">
                                <div class="layui-form-item">
                                    <label class="layui-form-label">支出金额</label>
                                    <div class="layui-input-block">
                                        <input type="text" id="L_title" name="money" required lay-verify="required|number" autocomplete="off" class="layui-input" placeholder="请输入金额">
                                    </div>
                                </div>
                            </div>
                            <div class="layui-col-md6">
                                <div class="layui-form-item">
                                    <label class="layui-form-label">支出类别</label>
                                    <div class="layui-input-block">
                                        <select lay-verify="required" name="cid" lay-filter="column">
                                            <option></option>
                                            <option value="1">交通</option>
                                            <option value="2">电影</option>
                                            <option value="3">早餐</option>
                                            <option value="4">午餐</option>
                                            <option value="5">晚餐</option>
                                            <option value="6">娱乐</option>
                                            <option value="7">教育</option>
                                            <option value="8">旅游</option>
                                            <option value="9">购物</option>
                                            <option value="10">油费</option>
                                            <option value="11">宠物</option>
                                            <option value="12">看病</option>
                                            <option value="13">饮料</option>
                                            <option value="14">礼物</option>
                                            <option value="15">其他</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="layui-row layui-col-space15">
                            <div class="layui-col-md6">
                                <div class="layui-form-item">
                                    <label class="layui-form-label">发生日期</label>
                                    <div class="layui-input-block">
                                        <input type="text" class="layui-input" id="test5" name="addTime" placeholder="yyyy-MM-dd HH:mm:ss">
                                    </div>
                                </div>
                            </div>
                            <div class="layui-col-md6">
                                <div class="layui-form-item layui-form-text">
                                    <label class="layui-form-label">详细描述</label>
                                    <div class="layui-input-block">
                                        <textarea id="L_content" name="details" required lay-verify="required" placeholder="请详细描述..." class="layui-textarea"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <button class="layui-btn" lay-filter="user-add" lay-submit>记一笔</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="fly-footer">
    <p>&copy; 2024 快速记. All rights reserved.</p>
</div>

<script src="../res/layui/layui.js"></script>
<script>
    layui.config({
        version: "3.0.0",
        base: '../res/mods/'
    }).extend({
        fly: 'index'
    }).use(['laydate','form','jquery'], function(){
        var laydate = layui.laydate;
        laydate.render({
            elem: '#test5',
            type: 'datetime'
        });
        let form = layui.form;
        let $ = layui.jquery;

        // 表单提交事件处理
        form.on('submit(user-add)', function (data) {
            $.ajax({
                url: 'addNew.action',
                data: data.field,
                dataType: 'json',
                contentType: 'application/x-www-form-urlencoded',
                type: 'post',
                success: function (result) {
                    if (result.code == 200) {
                        layer.msg(result.info, {icon: 1, time: 1000}, function () {
                            window.location.href="main.action";
                        });
                    } else {
                        layer.msg(result.info, {icon: 2, time: 1000});
                    }
                },
                beforeSend: function() {
                    layer.load(); // 显示加载动画
                },
                complete: function() {
                    layer.closeAll('loading'); // 关闭所有加载动画
                }
            });
            return false;
        });
    });
</script>
</body>
</html>