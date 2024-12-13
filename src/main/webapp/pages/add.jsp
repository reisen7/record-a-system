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
        /* 整体页面背景设置为淡紫色，营造梦幻可爱的动漫氛围 */
        body {
            background-color: #e6e6fa;
            font-family: Arial, sans-serif;
        }

        /* 头部样式调整 */
        .fly-header {
            background-color: #9370db;
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
            color: #d8bfd8;
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
            color: #6a5acd;
            text-align: center;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
        }

        .layui-tab-title li {
            color: #333;
            cursor: pointer;
            transition: color 0.3s ease;
        }

        .layui-tab-title li:hover {
            color: #9370db;
        }

        .layui-tab-title.layui-this {
            color: #9370db;
            font-weight: bold;
        }

        .layui-input {
            border-color: #9370db;
            border-radius: 8px;
        }

        select {
            border-color: #9370db;
            border-radius: 8px;
        }

        .layui-textarea {
            border-color: #9370db;
            border-radius: 8px;
        }

        .layui-btn {
            background-color: #9370db;
            color: white;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }

        .layui-btn:hover {
            background-color: #a020f0;
        }

        /* 页脚样式 */
        .fly-footer {
            background-color: #9370db;
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
                    <cite class="layui-hide-xs">Andy酱~</cite>
                </a>
            </li>
        </ul>
    </div>
</div>

<div class="layui-container">
    <div class="form-section">
        <h3>来记上一笔呀~</h3>
        <div class="layui-tab layui-tab-brief" lay-filter="user">
            <ul class="layui-tab-title">
                <li class="layui-this">支出开销咯</li>
                <li><a href="add2.action">收入进账哟</a></li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <form class="layui-form" action="addNew.action" method="post">
                        <input type="hidden" name="type" value="2">
                        <div class="layui-row layui-col-space15">
                            <div class="layui-col-md6">
                                <div class="layui-form-item">
                                    <label class="layui-form-label">支出金额呀</label>
                                    <div class="layui-input-block">
                                        <input type="text" id="L_title" name="money" required lay-verify="required|number"
                                               autocomplete="off" class="layui-input" placeholder="请输入金额哟~">
                                    </div>
                                </div>
                            </div>
                            <div class="layui-col-md6">
                                <div class="layui-form-item">
                                    <label class="layui-form-label">支出类别呢</label>
                                    <div class="layui-input-block">
                                        <select lay-verify="required" name="cid" lay-filter="column">
                                            <option></option>
                                            <option value="1">出行交通</option>
                                            <option value="2">好看电影</option>
                                            <option value="3">美味早餐</option>
                                            <option value="4">丰盛午餐</option>
                                            <option value="5">温馨晚餐</option>
                                            <option value="6">欢乐娱乐</option>
                                            <option value="7">趣味教育</option>
                                            <option value="8">快乐旅游</option>
                                            <option value="9">开心购物</option>
                                            <option value="10">加油费呀</option>
                                            <option value="11">可爱宠物</option>
                                            <option value="12">看医生咯</option>
                                            <option value="13">清爽饮料</option>
                                            <option value="14">精美礼物</option>
                                            <option value="15">其他杂项</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="layui-row layui-col-space15">
                            <div class="layui-col-md6">
                                <div class="layui-form-item">
                                    <label class="layui-form-label">发生日期哟</label>
                                    <div class="layui-input-block">
                                        <input type="text" class="layui-input" id="test5" name="addTime" placeholder="yyyy-MM-dd HH:mm:ss">
                                    </div>
                                </div>
                            </div>
                            <div class="layui-col-md6">
                                <div class="layui-form-item layui-form-text">
                                    <label class="layui-form-label">详细描述一下呀</label>
                                    <div class="layui-input-block">
                                        <textarea id="L_content" name="details" required lay-verify="required" placeholder="请详细描述...哦" class="layui-textarea"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <button class="layui-btn" lay-filter="user-add" lay-submit>记上这笔啦~</button>
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