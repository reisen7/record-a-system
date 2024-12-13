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
        /* 整体页面背景设置为淡粉色，营造温馨可爱的动漫氛围 */
        body {
            background-color: #ffe4e1;
            font-family: Arial, sans-serif;
        }

        /* 头部样式调整 */
        .fly-header {
            background-color: #ff69b4;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .fly-logo {
            display: inline-block;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background-color: white;
            margin-right: 10px;
            transition: transform 0.3s ease;
        }

        .fly-logo:hover {
            transform: rotate(360deg);
        }

        .layui-nav.fly-nav-user li.layui-nav-item a {
            color: white;
            transition: color 0.3s ease;
        }

        .layui-nav.fly-nav-user li.layui-nav-item a:hover {
            color: #ffb6c1;
        }

        /* 表单部分样式 */
        .form-section {
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-top: 20px;
        }

        h3 {
            color: #ff1493;
            text-align: center;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
        }

        .layui-tab-title li {
            color: #333;
            cursor: pointer;
            transition: color 0.3s ease;
        }

        .layui-tab-title li:hover {
            color: #ff69b4;
        }

        .layui-tab-title.layui-this {
            color: #ff69b4;
            font-weight: bold;
        }

        .layui-input {
            border-color: #ff69b4;
            border-radius: 8px;
        }

        select {
            border-color: #ff69b4;
            border-radius: 8px;
        }

        .layui-textarea {
            border-color: #ff69b4;
            border-radius: 8px;
        }

        .layui-btn {
            background-color: #ff69b4;
            color: white;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }

        .layui-btn:hover {
            background-color: #ff1493;
        }

        /* 页脚样式 */
        .fly-footer {
            background-color: #ff69b4;
            color: white;
            text-align: center;
            padding: 10px;
            margin-top: 20px;
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
                    <cite class="layui-hide-xs">Andy小可爱~</cite>
                </a>
            </li>
        </ul>
    </div>
</div>

<div class="layui-container">
    <div class="form-section">
        <h3>来记一笔收入呀~</h3>
        <div class="layui-tab layui-tab-brief" lay-filter="user">
            <ul class="layui-tab-title">
                <li><a href="add.action">支出开销那边呢</a></li>
                <li class="layui-this">收入进账这里哟~</li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <form action="addNew.action" method="post" class="layui-form">
                        <input type="hidden" name="type" value="1">
                        <div class="layui-row layui-col-space15">
                            <div class="layui-col-md6">
                                <div class="layui-form-item">
                                    <label class="layui-form-label">收入金额呀~</label>
                                    <div class="layui-input-block">
                                        <input type="text" id="money" name="money" required lay-verify="required|number"
                                               autocomplete="off" class="layui-input" placeholder="请输入金额哟~">
                                    </div>
                                </div>
                            </div>
                            <div class="layui-col-md6">
                                <div class="layui-form-item">
                                    <label class="layui-form-label">收入类别呢~</label>
                                    <div class="layui-input-block">
                                        <select lay-verify="required" name="cid" lay-filter="column">
                                            <option value="">请选一下呀~</option>
                                            <option value="16">工资收入哒</option>
                                            <option value="17">奖金来咯</option>
                                            <option value="18">其他收入哟~</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="layui-row layui-col-space15">
                            <div class="layui-col-md6">
                                <div class="layui-form-item">
                                    <label class="layui-form-label">发生日期哟~</label>
                                    <div class="layui-input-block">
                                        <input type="text" class="layui-input" id="test5" name="addTime" placeholder="yyyy-MM-dd HH:mm:ss">
                                    </div>
                                </div>
                            </div>
                            <div class="layui-col-md6">
                                <div class="layui-form-item layui-form-text">
                                    <label class="layui-form-label">详细描述一下呀~</label>
                                    <div class="layui-input-block">
                                        <textarea id="details" name="details" required lay-verify="required" placeholder="请详细描述...哦" class="layui-textarea"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <button class="layui-btn" lay-filter="user-add" lay-submit>记上这笔收入啦~</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
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